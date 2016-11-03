package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_groupBuyDTO;
import com.dobid.model.boardDAO;

public class Admin_groupbuylist_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_auction_selecttext = request.getParameter("admin_auction_selecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		String admin_auction_view_num = request.getParameter("admin_auction_view_num");
		String admin_auction_view_userid = request.getParameter("admin_auction_view_userid");
		String admin_auction_catalogue = request.getParameter("admin_auction_catalogue");
		String admin_auction_bid_check = request.getParameter("admin_auction_bid_check");
		String admin_auction_hot_check = request.getParameter("admin_auction_hot_check");

		System.out.println("admin_auction_selecttext : " + request.getParameter("admin_auction_selecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_auction_view_num : " + request.getParameter("admin_auction_view_num"));
		System.out.println("admin_auction_view_userid : " + request.getParameter("admin_auction_view_userid"));
		System.out.println("admin_auction_catalogue : " + request.getParameter("admin_auction_catalogue"));
		System.out.println("admin_auction_bid_check : " + request.getParameter("admin_auction_bid_check"));
		System.out.println("admin_auction_hot_check : " + request.getParameter("admin_auction_hot_check"));

		ActionForward forward = mapping.findForward("success");
		if (del == null) {
			if (admin_auction_selecttext == null && catalogue == null) {
				admin_auction_selecttext = "";
				}
			List<Admin_groupBuyDTO> admingroupbuyselectlist = null;
			// 페이지 정보 얻어오기
			String pageStr = request.getParameter("page");

			int page = 1;// 기본페이지를 1페이지로 하겠다!!

			int viewRowCnt = 10;// 한 페이지에 보여줄 행(레코드)의 수
			if (pageStr != null) {
				page = Integer.parseInt(pageStr);
			}

			int end = page * viewRowCnt;
			int start = end - (viewRowCnt - 1);
			int totalRecord = dao.adminGroupBuyCount(admin_auction_selecttext);
			System.out.println("totalRecord: " + totalRecord);
			int totalPage = totalRecord / viewRowCnt;
			if (totalRecord % viewRowCnt > 0)
				totalPage++;
			request.removeAttribute("adminreportlist");
			request.removeAttribute("page");
			request.removeAttribute("totalPage");
			admingroupbuyselectlist = dao.adminGroupBuyPage(start, end, admin_auction_selecttext);
			request.setAttribute("admingroupbuylist", admingroupbuyselectlist);// 4.
																		// 영역에
																		// 데이터
																		// 저장
			request.setAttribute("page", page);// 현재페이지
			request.setAttribute("totalPage", totalPage);// 전체페이지
			// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!

		} else if (del != null) {

			boolean delgroupflag = dao.adminGroupActionDel(admin_auction_view_num);
			request.setAttribute("delgroupflag", delgroupflag);

		}
		return mapping.findForward("success");
	}
}
