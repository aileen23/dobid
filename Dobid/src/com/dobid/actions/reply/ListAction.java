package com.dobid.actions.reply;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.model.ReplyDAO;



public class ListAction extends Action{//목록출력 요청

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
	   ReplyDAO dao = new ReplyDAO();
	    //List<Reply>  list =  dao.findAll();
	    request.setAttribute("list", dao.findAll());//list);
	   return mapping.findForward("success");
	}//execute
}








