package com.dobid.actions.reply.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Reply_noticeDTO;
import com.dobid.model.ReplyDAO;



public class AddAction extends Action{
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
    		HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("UTF-8");    	
    	String name = request.getParameter("name");
    	
    	if(name.equals("")){
			request.setAttribute("msg", "로그인이 필요합니다");
		}else{
    	Reply_noticeDTO reply_notice = new Reply_noticeDTO(0,
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
    	
    	 if(dao.insert_noitice(reply_notice)){
    		 request.setAttribute("msg", "댓글 등록 성공");  
    	   }
		}
    	return mapping.findForward("success");
    }
}




