package com.dobid.product_regist.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.AuctionDTO;
import com.dobid.model.Product_registDAO;
import com.dobid.product_regist.action.form.List_form;
import com.ibatis.sqlmap.client.SqlMapClient;

public class Auction_list extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		List_form form2 = (List_form) form;
		
		String search = form2.getSearch_text();
		
		//Product_registDAO dao = new Product_registDAO();
	
		//List<AuctionDTO> list = dao.search_list(search);
		//SqlMapClient client = SqlMapconfig.getSqlMapInstance();
		Product_registDAO dao = new Product_registDAO();
		
		//List<AuctionDTO> list = client.queryForList("product_regist.search_list",search);
		
		List<AuctionDTO> list = dao.search_list(search);
		
		request.setAttribute("list", list);
		request.setAttribute("aaa", "wwww");
		return mapping.findForward("suecc");
	}

}
