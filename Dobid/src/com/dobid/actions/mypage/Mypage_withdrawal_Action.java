package com.dobid.actions.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.DelidDTO;
import com.dobid.model.Mypage_DAO;

public class Mypage_withdrawal_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String id = (String) request.getSession().getAttribute("logincheck");

		Mypage_DAO dao = new Mypage_DAO();
		DelidDTO dto = new DelidDTO();
		dto.setMember_id(id);
		dto.setWithdrawal("탈퇴대기중");
		dao.deleteid(dto);
		return mapping.findForward("success");

	}

}
