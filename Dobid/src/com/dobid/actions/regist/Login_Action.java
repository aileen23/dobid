package com.dobid.actions.regist;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MemberDTO;
import com.dobid.model.dobidDAO;

public class Login_Action extends Action{
@Override
public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
		HttpServletResponse response) throws Exception {
	
	MemberDTO dto = new MemberDTO();
	dto.setMember_id(request.getParameter("id"));
	dto.setPass(request.getParameter("pass"));
	
	dobidDAO dao = new dobidDAO();
	dao.login(dto);
	request.getSession().setAttribute("logincheck", request.getParameter("id"));
	
	return super.execute(mapping, form, request, response);
}
}
