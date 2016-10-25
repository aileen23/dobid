package com.dobid.actions.regist;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Find_idDTO;
import com.dobid.model.dobidDAO;

public class Find_id_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		Find_idDTO dto = new Find_idDTO();
		dto.setName(request.getParameter("name"));
		dto.setPhone(request.getParameter("phone"));
		dto.setBirthday(request.getParameter("birthday"));
		
		dobidDAO dao = new dobidDAO();
		if (dao.findid(dto)==null|| dao.findid(dto).equals("")) {
			request.setAttribute("id", "회원님이 입력하신 정보와 <br>일치하는 아이디가 없습니다.");
		}
		else {
			request.setAttribute("id", "회원님의 아이디는<br><font color='3366cc'>"+dao.findid(dto).substring(0, dao.findid(dto).length()-3)+"***</font><br> 입니다.");
		}
		
		
		return mapping.findForward("success");
	}
}
