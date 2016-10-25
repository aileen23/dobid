package com.dobid.product_regist.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Groupbuy_participantDTO;
import com.dobid.model.Product_registDAO;

public class Groupbuy_regist extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
		//추후 세션값으로 받기위함.
		//MemberDTO dto = (MemberDTO) request.getSession().getAttribute("member");
		
		String user_id = (String) request.getSession().getAttribute("logincheck");
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String regist_date = df.format(date);
		
		Groupbuy_participantDTO dto = new Groupbuy_participantDTO(Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("price")), user_id, regist_date, "N");
		Product_registDAO dao = new Product_registDAO();
		boolean check = dao.groupbuy_regist(dto);
		boolean count_check = dao.groupbuy_count(dto.getGroupbuy_board_num());
		ActionForward actionMapping = null;
		
		if(check == true && count_check== true){
			actionMapping = mapping.findForward("sueccess");
		}else {
			System.out.println("실패");
		}
		
		return actionMapping;
	}

}
