package com.dobid.actions.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MessageDTO;
import com.dobid.model.Mypage_DAO;

public class Mypage_sendmsg_Action extends Action{
@Override
public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
		HttpServletResponse response) throws Exception {
		
		Mypage_DAO dao = new Mypage_DAO();
		String id= (String) request.getSession().getAttribute("logincheck");
		
		String send_id = dao.select(id).getNickname();
		String member_id =request.getParameter("member_id");
		String title =request.getParameter("title");
		String contents =request.getParameter("contents");
		
		MessageDTO list = new MessageDTO("0",send_id,member_id,contents,title);
		
		
		dao.sendmsg(list);
		
	return mapping.findForward("success");
}
	
}
