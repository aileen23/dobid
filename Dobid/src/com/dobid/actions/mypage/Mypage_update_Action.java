package com.dobid.actions.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MemberDTO;
import com.dobid.model.Encryption;
import com.dobid.model.Mypage_DAO;
import com.dobid.model.dobidDAO;

public class Mypage_update_Action extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		Encryption enc = new Encryption("chlvlfgkschlvlfgks");
		Mypage_DAO dao = new Mypage_DAO();
		MemberDTO dto = new MemberDTO();
		
		String id= (String) request.getSession().getAttribute("logincheck");		
		dto.setMember_id(id);
		dto.setPass(enc.aesEncode(request.getParameter("pass")));
		dto.setPhone(request.getParameter("phone"));
		dto.setAddress(request.getParameter("address"));
		dto.setIntroduction(request.getParameter("introduction"));
		
		dao.update(dto);
		
		return mapping.findForward("success");
	}
		
}
