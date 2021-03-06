package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MemberDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_memberdel_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_memberdel_selecttext = request.getParameter("admin_memberdel_selecttext");
		String admin_memberdel_view_member_id = request.getParameter("admin_memberdel_view_member_id");
		String del = request.getParameter("del");

		System.out.println("admin_memberdel_selecttext : " + request.getParameter("admin_memberdel_selecttext"));
		System.out
				.println("admin_memberdel_view_member_id : " + request.getParameter("admin_memberdel_view_member_id"));
		System.out.println("del : " + request.getParameter("del"));


		if (admin_memberdel_selecttext == null) {
			admin_memberdel_selecttext = "";
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
		int totalRecord = dao.adminMemberDelCount(admin_memberdel_selecttext);
		System.out.println("totalRecord: " + totalRecord);
		int totalPage = totalRecord / viewRowCnt;
		if (totalRecord % viewRowCnt > 0)
			totalPage++;
		request.removeAttribute("adminmemberdellist");
		request.removeAttribute("page");
		request.removeAttribute("totalPage");
		request.removeAttribute("select");
		if (del == null) {
			
			request.setAttribute("select", admin_memberdel_selecttext);// 현재페이지
			request.setAttribute("page", page);// 현재페이지
			request.setAttribute("totalPage", totalPage);// 전체페이지
			
		

		} else if (del != null) {

			boolean delmemberflag = dao.adminMemberdelDel(admin_memberdel_view_member_id);
			request.setAttribute("delmemberflag", delmemberflag);

		}

		List<MemberDTO> adminmemberdellist =dao.adminMemberDelPage(start, end, admin_memberdel_selecttext);
		request.setAttribute("adminmemberdellist", adminmemberdellist);
		
		return mapping.findForward("success");
	}

}
