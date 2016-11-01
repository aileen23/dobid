package com.dobid.actions.reply.freedom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Reply_freedomDTO;
import com.dobid.model.ReplyDAO;



public class AddAction extends Action{
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
    		HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("UTF-8");
    	Reply_freedomDTO reply_freedom = new Reply_freedomDTO(0,
                               request.getParameter("name"),
                               request.getParameter("content"),
                               request.getParameter("num"),
                               request.getParameter("nickname")
    							); 
    	
    	System.out.println(request.getParameter("name"));
    	System.out.println(request.getParameter("content"));
    	System.out.println(request.getParameter("num"));
    	System.out.println(request.getParameter("nickname"));    	
    	
    	ReplyDAO dao = new ReplyDAO();
    	
    	 if(dao.insert_freedom(reply_freedom)){
    		 request.setAttribute("msg", "댓글등록성공!!");  
    	   }else{
   		   request.setAttribute("msg", "댓글등록실패!!");  
    	   }
    	 
    	return mapping.findForward("success");
    }
}




