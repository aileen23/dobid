package com.dobid.actions.admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_freeDTO;
import com.dobid.beans.Admin_noticeDTO;
import com.dobid.beans.Service_answerDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;
import com.dobid.model.dobidDAO;

public class Admin_ono_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String answer_date = df.format(date);

		boardDAO dao = new boardDAO();

		String admin_ono_selecttext = request.getParameter("admin_ono_selecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		String send = request.getParameter("send");
		String admin_ono_view_answer_contents = request.getParameter("admin_ono_view_answer_contents");
		String admin_ono_view_upload_date = request.getParameter("admin_ono_view_upload_date");
		String admin_ono_view_upload_date_send = request.getParameter("admin_ono_view_upload_date_send");

		System.out.println("admin_ono_selecttext : " + request.getParameter("admin_ono_selecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("send : " + request.getParameter("send"));
		System.out
				.println("admin_ono_view_answer_contents : " + request.getParameter("admin_ono_view_answer_contents"));
		System.out.println("admin_ono_view_upload_date : " + request.getParameter("admin_ono_view_upload_date"));
		System.out.println(
				"admin_ono_view_upload_date_send : " + request.getParameter("admin_ono_view_upload_date_send"));

		if (admin_ono_selecttext == null && catalogue == null) {
			admin_ono_selecttext = "";
			catalogue = "";
		}

		Service_answerDTO onoparam = null;
		onoparam = new Service_answerDTO(admin_ono_selecttext, catalogue);

		// 페이지 정보 얻어오기
		String pageStr = request.getParameter("page");

		int page = 1;// 기본페이지를 1페이지로 하겠다!!

		int viewRowCnt = 10;// 한 페이지에 보여줄 행(레코드)의 수
		if (pageStr != null) {
			page = Integer.parseInt(pageStr);
		}

		int end = page * viewRowCnt;
		int start = end - (viewRowCnt - 1);
		int totalRecord = dao.adminOnoCount(onoparam);
		System.out.println("totalRecord: " + totalRecord);
		int totalPage = totalRecord / viewRowCnt;
		if (totalRecord % viewRowCnt > 0)
			totalPage++;
		request.removeAttribute("adminonotlist");
		request.removeAttribute("page");
		request.removeAttribute("totalPage");
		request.removeAttribute("catalogue");
		request.removeAttribute("select");

		if (del == null && send == null) {
			request.setAttribute("catalogue", catalogue);
			request.setAttribute("select", admin_ono_selecttext);
			request.setAttribute("page", page);// 현재페이지
			request.setAttribute("totalPage", totalPage);// 전체페이지

		} else if (del != null && send == null) {
			boolean delonoflag = dao.adminOnoDel(admin_ono_view_upload_date);
			request.setAttribute("delonoflag", delonoflag);

		} else if (send != null && del == null) {
			Service_answerDTO onosendparam = null;
			onosendparam = new Service_answerDTO(admin_ono_view_upload_date_send, admin_ono_view_answer_contents,
					answer_date);
			boolean uponoflag = dao.adminOnoSend(onosendparam);
			request.setAttribute("uponoflag", uponoflag);
		}

		List<Service_answerDTO> adminonolist = dao.adminOnoPage(start, end, admin_ono_selecttext, catalogue);
		request.setAttribute("adminonolist", adminonolist);
		return mapping.findForward("success");
	}
}
