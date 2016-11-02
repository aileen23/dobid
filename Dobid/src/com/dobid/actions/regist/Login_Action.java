package com.dobid.actions.regist;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.LoginDTO;
import com.dobid.model.Encryption;
import com.dobid.model.dobidDAO;

public class Login_Action extends Action implements HttpSessionBindingListener {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		/*
		 * MemberDTO dto = new MemberDTO();
		 * dto.setMember_id(request.getParameter("id"));
		 * dto.setPass(request.getParameter("pass"));
		 */
		LoginDTO dto = new LoginDTO();
		Encryption enc = new Encryption("chlvlfgkschlvlfgks");
		dto.setMember_id(request.getParameter("id"));
		dto.setPass(enc.aesEncode(request.getParameter("pass")));
		dto.setWithdrawal("사용중");

		dobidDAO dao = new dobidDAO();
		if (dao.login(dto) == null || dao.login(dto).equals("")) {
			request.getSession().setAttribute("logincheck", "");
			return mapping.findForward("fail");
		} else {
			request.getSession().setAttribute("logincheck", dao.login(dto));
			return mapping.findForward("success");
		}
	}

	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		
	}
}
