package com.dobid.actions.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MessageDTO;
import com.dobid.model.Mypage_DAO;


public class Mypage_receive_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String id= (String) request.getSession().getAttribute("logincheck");
	
		Mypage_DAO dao = new Mypage_DAO();
		String Nicname = dao.select(id).getNickname();
		List<MessageDTO> receivelist = dao.receivelist(Nicname);
		request.setAttribute("receivelist", receivelist);
		return mapping.findForward("success");
	}
}
