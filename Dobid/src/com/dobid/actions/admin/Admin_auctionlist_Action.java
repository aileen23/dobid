package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_auctionDTO;

import com.dobid.beans.Admin_groupBuyDTO;
import com.dobid.beans.Admin_hotAuctionDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_auctionlist_Action extends Action {

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
		List<Admin_auctionDTO> adminauctionlist = dao.adminAuctionSelectAll();
		if (del == null) {
			if (admin_auction_selecttext == null && catalogue == null) {

				adminauctionlist = dao.adminAuctionSelectAll();
				request.getSession().setAttribute("adminauctionlist", adminauctionlist);
				forward = mapping.findForward("adminauctionlist");
				// 페이지 정보 얻어오기
				String pageStr = request.getParameter("page");

				int page = 1;// 기본페이지를 1페이지로 하겠다!!

				int viewRowCnt = 5;// 한 페이지에 보여줄 행(레코드)의 수
				if (pageStr != null) {
					page = Integer.parseInt(pageStr);
				}

				int end = page * viewRowCnt;
				int start = end - (viewRowCnt - 1);
				int totalRecord = dao.adminAuctionCount();
				System.out.println("totalRecord: " + totalRecord);
				int totalPage = totalRecord / viewRowCnt;
				if (totalRecord % viewRowCnt > 0)
					totalPage++;
				request.getSession().removeAttribute("adminauctionlist");
				request.getSession().removeAttribute("page");
				request.getSession().removeAttribute("totalPage");
				adminauctionlist = dao.adminAuctionPage(start, end);
				request.getSession().setAttribute("adminauctionlist", adminauctionlist);// 4.
																						// 영역에
																						// 데이터
																						// 저장
				request.getSession().setAttribute("page", page);// 현재페이지
				request.getSession().setAttribute("totalPage", totalPage);// 전체페이지
				// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!
				return forward = mapping.findForward("success");

			} else if (admin_auction_selecttext == null && catalogue.equals("auction")) {
				List<Admin_auctionDTO> adminauction = null;
				adminauction = dao.adminAuctionSelectAll();
				request.setAttribute("adminauctionlist", adminauction);

			} else if (admin_auction_selecttext == null && catalogue.equals("hotauction")) {

				List<Admin_hotAuctionDTO> adminhotauction = null;
				adminhotauction = dao.adminHotAuctionSelectAll();
				request.setAttribute("adminauctionlist", adminhotauction);

			} else if (admin_auction_selecttext == null && catalogue.equals("groupauction")) {

				List<Admin_groupBuyDTO> admingroupauction = null;
				admingroupauction = dao.adminGroupAuctionSelectAll();
				request.setAttribute("adminauctionlist", admingroupauction);

			} else if (admin_auction_selecttext != null && catalogue.equals("auction")) {

				List<Admin_auctionDTO> adminauctionselectlist = null;
				adminauctionselectlist = dao.adminAucionSelectTitle(admin_auction_selecttext);
				request.setAttribute("adminauctionlist", adminauctionselectlist);

			} else if (admin_auction_selecttext != null && catalogue.equals("hotauction")) {

				List<Admin_hotAuctionDTO> adminhotauctionselectlist = null;
				adminhotauctionselectlist = dao.adminHotAucionSelectTitle(admin_auction_selecttext);
				request.setAttribute("adminauctionlist", adminhotauctionselectlist);

			} else if (admin_auction_selecttext != null && catalogue.equals("groupauction")) {

				List<Admin_groupBuyDTO> admingroupauctionselectlist = null;
				admingroupauctionselectlist = dao.adminGroupAucionSelectTitle(admin_auction_selecttext);
				request.setAttribute("adminauctionlist", admingroupauctionselectlist);

			}
		} else {
			if (admin_auction_hot_check.equals("공동구매")) {

				boolean delflag = dao.adminGroupActionDel(admin_auction_view_num);
				request.setAttribute("delflag", delflag);

			} else if (admin_auction_hot_check.equals("경매")) {

				boolean delflag = dao.adminActionDel(admin_auction_view_num);
				request.setAttribute("delflag", delflag);

			} else if (admin_auction_hot_check.equals("핫경매")) {
				boolean delflag = dao.adminHotActionDel(admin_auction_view_num);
				request.setAttribute("delflag", delflag);
			}
		}

		return mapping.findForward("success");
	}
}