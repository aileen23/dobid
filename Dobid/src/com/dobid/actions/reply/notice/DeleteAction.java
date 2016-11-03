package com.dobid.actions.reply.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Reply_noticeDTO;
import com.dobid.model.ReplyDAO;



public class DeleteAction extends Action{
   @Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	   request.setCharacterEncoding("UTF-8");
		int no = Integer.parseInt(request.getParameter("no"));
		String name = request.getParameter("name");
		System.out.println(no);
		System.out.println(name);
		
		
			Reply_noticeDTO reply_notice = new Reply_noticeDTO();
			reply_notice.setNo(no);
			reply_notice.setName(name);
		
		ReplyDAO dao = new ReplyDAO();
		   if(dao.delete_notice(reply_notice)){
			   request.setAttribute("msg", "댓글 삭제 성공!!");
		   }
		   
		return mapping.findForward("success");
	}
}





