package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_freeDTO;
import com.dobid.beans.Admin_noticeDTO;
import com.dobid.model.boardDAO;

public class Admin_noticeboard_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_boardselecttext = request.getParameter("admin_boardselecttext");
		String del = request.getParameter("del");
		String admin_board_view_num = request.getParameter("admin_board_view_num");
		String admin_board_view_userid = request.getParameter("admin_board_view_userid");

		System.out.println("admin_boardselecttext : " + request.getParameter("admin_boardselecttext"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_board_view_num : " + request.getParameter("admin_board_view_num"));
		System.out.println("admin_board_view_userid : " + request.getParameter("admin_board_view_userid"));

		ActionForward forward = mapping.findForward("success");
		if (del == null) {

			if (admin_boardselecttext == null) {
				admin_boardselecttext = "";
			}
			
			List<Admin_noticeDTO> adminnoticeselectlist = null;

			// 페이지 정보 얻어오기
			String pageStr = request.getParameter("page");

			int page = 1;// 기본페이지를 1페이지로 하겠다!!

			int viewRowCnt = 10;// 한 페이지에 보여줄 행(레코드)의 수
			if (pageStr != null) {
				page = Integer.parseInt(pageStr);
			}

			int end = page * viewRowCnt;
			int start = end - (viewRowCnt - 1);
			int totalRecord = dao.adminNoticeCount(admin_boardselecttext);
			System.out.println("totalRecord: " + totalRecord);
			int totalPage = totalRecord / viewRowCnt;
			if (totalRecord % viewRowCnt > 0)
				totalPage++;
			request.removeAttribute("adminboardlist");
			request.removeAttribute("page");
			request.removeAttribute("totalPage");
			adminnoticeselectlist = dao.adminNoticePage(start, end,admin_boardselecttext);
			request.setAttribute("adminboardlist", adminnoticeselectlist);// 4.
																	// 영역에
																	// 데이터
																	// 저장
			request.setAttribute("page", page);// 현재페이지
			request.setAttribute("totalPage", totalPage);// 전체페이지
			// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!
		
		} else {

			boolean delflag = dao.adminNoticeBoardDel(admin_board_view_num);
			request.setAttribute("delflag", delflag);

		}

		return mapping.findForward("success");
	}
}