package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_memberAskDelListDTO;
import com.dobid.model.boardDAO;

public class Admin_memberaskdel_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_memberaskdel_selecttext = request.getParameter("admin_memberaskdel_selecttext");
		String member_id = request.getParameter("member_id");
		String update = request.getParameter("update");

		System.out.println("admin_memberaskdel_selecttext : " + request.getParameter("admin_memberaskdel_selecttext"));
		System.out.println("member_id : " + request.getParameter("member_id"));
		System.out.println("update : " + request.getParameter("update"));

		ActionForward forward = mapping.findForward("success");
		if (update == null) {
			if (admin_memberaskdel_selecttext == null) {
				admin_memberaskdel_selecttext = "";
			}

			List<Admin_memberAskDelListDTO> adminmemberaskdellist = null;
			// 페이지 정보 얻어오기
			String pageStr = request.getParameter("page");

			int page = 1;// 기본페이지를 1페이지로 하겠다!!

			int viewRowCnt = 10;// 한 페이지에 보여줄 행(레코드)의 수
			if (pageStr != null) {
				page = Integer.parseInt(pageStr);
			}

			int end = page * viewRowCnt;
			int start = end - (viewRowCnt - 1);
			int totalRecord = dao.adminMemberAskDelCount(admin_memberaskdel_selecttext);
			System.out.println("totalRecord: " + totalRecord);
			int totalPage = totalRecord / viewRowCnt;
			if (totalRecord % viewRowCnt > 0)
				totalPage++;
			request.removeAttribute("adminmemberaskdellist");
			request.removeAttribute("page");
			request.removeAttribute("totalPage");
			adminmemberaskdellist = dao.adminMemberAskDelPage(start, end, admin_memberaskdel_selecttext);
			request.setAttribute("adminmemberaskdellist", adminmemberaskdellist);// 4.
																			// 영역에
																			// 데이터
																			// 저장
			request.setAttribute("page", page);// 현재페이지
			request.setAttribute("totalPage", totalPage);// 전체페이지
			// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!
		

		} else if (update != null) {

			boolean updateflag = dao.adminMemberdelUpdate(member_id);
			request.setAttribute("updateflag", updateflag);

		}

		return mapping.findForward("success");
	}

}
