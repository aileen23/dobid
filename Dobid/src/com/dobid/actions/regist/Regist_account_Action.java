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

		MemberDTO dto = new MemberDTO(request.getParameter("id"), request.getParameter("name"),
				request.getParameter("pass"), request.getParameter("phone"), request.getParameter("e-mail"),
				request.getParameter("address"), request.getParameter("nickname"), request.getParameter("introduction"),
				request.getParameter("birthday"), 0);
		dobidDAO dao = new dobidDAO();
		dao.insert(dto);
		return mapping.findForward("success");

	}
}
