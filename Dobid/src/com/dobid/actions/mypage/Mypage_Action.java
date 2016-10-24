package com.dobid.actions.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MemberDTO;
import com.dobid.model.Mypage_DAO;

public class Mypage_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Mypage_DAO dao = new Mypage_DAO();
		
		MemberDTO dto = new MemberDTO();
		dto = dao.select("1");
		request.setAttribute("member", dto);
		return mapping.findForward("success");
	}
}
