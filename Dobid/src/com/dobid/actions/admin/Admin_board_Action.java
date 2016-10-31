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
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_board_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_boardselecttext = request.getParameter("admin_boardselecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		String admin_board_view_num = request.getParameter("admin_board_view_num");
		String admin_board_view_userid = request.getParameter("admin_board_view_userid");

		System.out.println("admin_boardselecttext : " + request.getParameter("admin_boardselecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_board_view_num : " + request.getParameter("admin_board_view_num"));
		System.out.println("admin_board_view_userid : " + request.getParameter("admin_board_view_userid"));

		ActionForward forward = mapping.findForward("success");
		List<Admin_noticeDTO> adminboardlist = dao.adminNoticeSelectAll();
		if (del == null) {
			if (admin_boardselecttext == null && catalogue == null) {

				adminboardlist = dao.adminNoticeSelectAll();
				request.getSession().setAttribute("adminboardlist", adminboardlist);
				forward = mapping.findForward("adminboardlist");
				// 페이지 정보 얻어오기
				String pageStr = request.getParameter("page");

				int page = 1;// 기본페이지를 1페이지로 하겠다!!

				int viewRowCnt = 5;// 한 페이지에 보여줄 행(레코드)의 수
				if (pageStr != null) {
					page = Integer.parseInt(pageStr);
				}

				int end = page * viewRowCnt;
				int start = end - (viewRowCnt - 1);
				int totalRecord = dao.adminNoticeCount();
				System.out.println("totalRecord: " + totalRecord);
				int totalPage = totalRecord / viewRowCnt;
				if (totalRecord % viewRowCnt > 0)
					totalPage++;
				request.getSession().removeAttribute("adminboardlist");
				request.getSession().removeAttribute("page");
				request.getSession().removeAttribute("totalPage");
				adminboardlist = dao.adminNoticePage(start, end);
				request.getSession().setAttribute("adminboardlist", adminboardlist);// 4.
																					// 영역에
																					// 데이터
																					// 저장
				request.getSession().setAttribute("page", page);// 현재페이지
				request.getSession().setAttribute("totalPage", totalPage);// 전체페이지
				// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!
				return forward = mapping.findForward("success");

			} else if (admin_boardselecttext == null && catalogue.equals("notice")) {
				List<Admin_noticeDTO> adminnoticelist = null;
				adminnoticelist = dao.adminNoticeSelectAll();
				request.setAttribute("adminboardlist", adminnoticelist);

			} else if (admin_boardselecttext == null && catalogue.equals("free")) {

				List<Admin_freeDTO> adminfreelist = null;
				adminfreelist = dao.adminFreeSelectAll();
				request.setAttribute("adminboardlist", adminfreelist);
			} else if (admin_boardselecttext != null && catalogue.equals("notice")) {

				List<Admin_noticeDTO> adminnoticeselectlist = null;
				adminnoticeselectlist = dao.adminNoticeSelectTitle(admin_boardselecttext);
				request.setAttribute("adminboardlist", adminnoticeselectlist);

			} else if (admin_boardselecttext != null && catalogue.equals("free")) {

				List<Admin_freeDTO> adminfreeselectlist = null;
				adminfreeselectlist = dao.adminFreeSelectTitle(admin_boardselecttext);
				request.setAttribute("adminboardlist", adminfreeselectlist);

			}
		} else {
			if (admin_board_view_userid.equals("admin")) {

				boolean delflag = dao.adminNoticeBoardDel(admin_board_view_num);
				request.setAttribute("delflag", delflag);
			} else {
				boolean delflag = dao.adminFreeBoardDel(admin_board_view_num);
				request.setAttribute("delflag", delflag);
			}
		}

		return mapping.findForward("success");
	}
}
