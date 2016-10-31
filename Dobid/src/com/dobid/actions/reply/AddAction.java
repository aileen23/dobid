package com.dobid.actions.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.ReplyDTO;
import com.dobid.model.ReplyDAO;







public class AddAction extends Action{
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
    		HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("UTF-8");
    	ReplyDTO reply = new ReplyDTO(0,
                               request.getParameter("name"),
                               request.getParameter("content"),
                               request.getParameter("page_type"),
                               request.getParameter("num")
    							); 
    	
    	System.out.println(request.getParameter("name"));
    	System.out.println(request.getParameter("content"));
    	System.out.println(request.getParameter("page_type"));
    	System.out.println(request.getParameter("num"));
    	
    	ReplyDAO dao = new ReplyDAO();
    	 if(dao.insert(reply)){
    		 request.setAttribute("msg", "댓글등록성공!!");  
    	   }else{
    		 request.setAttribute("msg", "댓글등록실패!!");  
    	   }
    	 
    	return mapping.findForward("success");
    }
}




