package com.dobid.actions.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.AuctionDTO;
import com.dobid.beans.Groupbuy_participantDTO;
import com.dobid.beans.Groupbuy_participantListDTO;
import com.dobid.model.Mypage_DAO;

public class Mypage_groupbuyList_Actions extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		String id= (String) request.getSession().getAttribute("logincheck");
		String pageStr = request.getParameter("page");
		
		int page=1;
		int viewRowCnt=10;
		if(pageStr != null){
		  page = Integer.parseInt(pageStr);
		}
		int end=page*viewRowCnt;
		int start=end-(viewRowCnt-1);
	  
		Mypage_DAO dao = new Mypage_DAO();
		int totalRecord=dao.countGroupList(id);
		int totalPage = totalRecord/viewRowCnt;
	      if(totalRecord%viewRowCnt >0)
    	  totalPage++;
		List<Groupbuy_participantListDTO> list = dao.groupSelect(id,start,end);
		
		request.setAttribute("list", list);
		request.setAttribute("page", page);//현재페이지
  	  	request.setAttribute("totalPage", totalPage);//전체페이지
		return  mapping.findForward("success");
	}

}
