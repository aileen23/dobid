package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Service_answerDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_report_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_report_selecttext = request.getParameter("admin_report_selecttext");
		String del = request.getParameter("del");
		String admin_report_view_upload_date = request.getParameter("admin_report_view_upload_date");

		System.out.println("admin_report_selecttext : " + request.getParameter("admin_report_selecttext"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_report_view_upload_date : " + request.getParameter("admin_report_view_upload_date"));

		if (admin_report_selecttext == null) {
			admin_report_selecttext = "";
		}
		// 페이지 정보 얻어오기
		String pageStr = request.getParameter("page");

		int page = 1;// 기본페이지를 1페이지로 하겠다!!

		int viewRowCnt = 15;// 한 페이지에 보여줄 행(레코드)의 수
		if (pageStr != null) {
			page = Integer.parseInt(pageStr);
		}

		int end = page * viewRowCnt;
		int start = end - (viewRowCnt - 1);
		int totalRecord = dao.adminSelectReportCount(admin_report_selecttext);
		System.out.println("totalRecord: " + totalRecord);
		int totalPage = totalRecord / viewRowCnt;
		if (totalRecord % viewRowCnt > 0)
			totalPage++;
		request.removeAttribute("adminreportlist");
		request.removeAttribute("page");
		request.removeAttribute("totalPage");
		request.removeAttribute("select");

		if (del == null) {

			request.setAttribute("select", admin_report_selecttext);
			request.setAttribute("page", page);// 현재페이지
			request.setAttribute("totalPage", totalPage);// 전체페이지
			// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!

		} else if (del != null) {

			boolean delreportflag = dao.adminReportDel(admin_report_view_upload_date);
			request.setAttribute("delreportflag", delreportflag);

		}
		List<Service_reportDTO> adminreportlist = dao.adminReportPage(start, end, admin_report_selecttext);
		request.setAttribute("adminreportlist", adminreportlist);
		return mapping.findForward("success");
	}
}
