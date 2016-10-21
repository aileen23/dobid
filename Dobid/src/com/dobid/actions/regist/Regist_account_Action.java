package com.dobid.actions.regist;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MemberDTO;
import com.dobid.model.dobidDAO;

public class Regist_account_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(request.getParameter("id"));
		dto.setName(request.getParameter("name"));
		dto.setPass(request.getParameter("pass"));
		dto.setPhone(request.getParameter("phone"));
		dto.setEmail(request.getParameter("email"));
		dto.setAddress(request.getParameter("address"));
		dto.setNickname(request.getParameter("nickname"));
		dto.setIntroduction(request.getParameter("introduction"));
		dto.setBirthday(request.getParameter("birthday"));
		dto.setCharging_amount(0);
		dobidDAO dao = new dobidDAO();
		dao.insert(dto);
		return mapping.findForward("success");

	}
}
