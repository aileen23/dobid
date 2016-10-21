package com.dobid.product_regist.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.AuctionDTO;
import com.dobid.beans.Auction_listDTO;
import com.dobid.beans.Auction_list_paramiterDTO;
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
		
		Auction_list_paramiterDTO auction_list_paramiterDTO;
		
		if(request.getAttribute("list_par") == null){
			auction_list_paramiterDTO = new Auction_list_paramiterDTO(form2.getSearch_text(), 0, 6);
		}else{
			auction_list_paramiterDTO = (Auction_list_paramiterDTO) request.getAttribute("list_par");
		}
		


		Product_registDAO dao = new Product_registDAO();
	
	
		
		List<Auction_listDTO> list = dao.search_list(auction_list_paramiterDTO);
		request.setAttribute("serach_para", auction_list_paramiterDTO);
		request.setAttribute("list", list);
		return mapping.findForward("suecc");
	}

}
