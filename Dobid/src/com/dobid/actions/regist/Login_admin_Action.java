package com.dobid.actions.regist;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_loginDTO;
import com.dobid.model.Encryption;
import com.dobid.model.dobidDAO;

public class Login_admin_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		Encryption enc = new Encryption("chlvlfgkschlvlfgks");
		Admin_loginDTO dto = new Admin_loginDTO();

		dto.setAdmin_id(request.getParameter("id"));
		dto.setPass(enc.aesEncode(request.getParameter("pass")));
		System.out.println(request.getParameter("id") + enc.aesEncode(request.getParameter("pass")));

		dobidDAO dao = new dobidDAO();

		if (dao.admin_login(dto) == null || dao.admin_login(dto).equals("")) {
			request.getSession().setAttribute("adminlogincheck", "");
			return mapping.findForward("fail");
		} else {
			request.getSession().setAttribute("adminlogincheck", dao.admin_login(dto));
			return mapping.findForward("success");
		}
	}

}
