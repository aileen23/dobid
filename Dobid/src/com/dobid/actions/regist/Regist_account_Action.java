package com.dobid.actions.regist;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.memberDTO;

public class Regist_account_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		memberDTO dto = new memberDTO();
		dto.setMember_id(request.getParameter("ID"));
		dto.setName(request.getParameter("ID"));
		dto.setPass(request.getParameter("Password"));
		dto.setPhone(request.getParameter("Phone"));
		dto.setEmail(request.getParameter("E-mail"));
		dto.setAddress(request.getParameter("Address"));
		dto.setNickname(request.getParameter("NickName"));
		dto.setIntroduction(request.getParameter("Introduction"));
		dto.setCharging_amount(0);
		return mapping.findForward("success");
	}
}
