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
import com.dobid.beans.Service_answerDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_auctionlist_Action extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		boardDAO dao = new boardDAO();
		if(request.getParameter("endBtn")==null){
			
		
		
		System.out.println(request.getParameter("endBtn"));
		String admin_auction_selecttext = request.getParameter("admin_auction_selecttext");
		String catalogue = request.getParameter("catalogue");
		String admin_auction_view_userid = request.getParameter("admin_auction_view_userid");
		String admin_auction_catalogue = request.getParameter("admin_auction_catalogue");
		String admin_auction_bid_check = request.getParameter("admin_auction_bid_check");
		
		//삭제파라미터
		String del = request.getParameter("del");
		String admin_auction_view_num = request.getParameter("admin_auction_view_num");
		String admin_auction_hot_check = request.getParameter("admin_auction_hot_check");
		
		
		
		if (admin_auction_selecttext == null && catalogue == null) {
			admin_auction_selecttext = "";
			catalogue = "";
			}
	

			Admin_auctionDTO auctionparam = new Admin_auctionDTO(admin_auction_selecttext, catalogue);
			
			// 페이지 정보 얻어오기
			String pageStr = request.getParameter("page");

			int page = 1;// 기본페이지를 1페이지로 하겠다!!

			int viewRowCnt = 10;// 한 페이지에 보여줄 행(레코드)의 수
			if (pageStr != null) {
				page = Integer.parseInt(pageStr);
			}

			int end = page * viewRowCnt;
			int start = end - (viewRowCnt - 1);
			int totalRecord = dao.adminAuctionCount(auctionparam);
			System.out.println("totalRecord: " + totalRecord);
			int totalPage = totalRecord / viewRowCnt;
			if (totalRecord % viewRowCnt > 0)
				totalPage++;
			request.removeAttribute("adminauctionlist");
			request.removeAttribute("page");
			request.removeAttribute("totalPage");
			request.removeAttribute("select");
			request.removeAttribute("catalogue");
		
		if (del == null) {
			
				request.setAttribute("catalogue", catalogue);
				request.setAttribute("select", admin_auction_selecttext);
				request.setAttribute("page", page);// 현재페이지
				request.setAttribute("totalPage", totalPage);// 전체페이지
				// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!

		} else {//삭제요청
			if (admin_auction_hot_check.equals("경매")) {
				boolean delauctionflag = dao.adminActionDel(admin_auction_view_num);
				request.setAttribute("delauctionflag", delauctionflag);
			} else if (admin_auction_hot_check.equals("핫경매")) {
				boolean delhotflag = dao.adminHotActionDel(admin_auction_view_num);
				request.setAttribute("delhotflag", delhotflag);
			}
		}
		
		List<Admin_auctionDTO> adminauctionlist =dao.adminAuctionPage(start, end,admin_auction_selecttext, catalogue);
		request.setAttribute("adminauctionlist", adminauctionlist);
		}else if(request.getParameter("endBtn") != null){
			String admin_auction_view_num = request.getParameter("admin_auction_view_num");
			boolean check = dao.admingroupbuy_end(Integer.parseInt(admin_auction_view_num));
		}
		return mapping.findForward("success");
	}
}