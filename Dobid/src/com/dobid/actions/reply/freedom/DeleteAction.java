package com.dobid.actions.reply.freedom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Reply_freedomDTO;
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
		
		if(name.equals("")){
			 request.setAttribute("msg", "�α����� �ʿ��մϴ�"); 
		}else{
		Reply_freedomDTO reply_freedom = new Reply_freedomDTO();
		reply_freedom.setNo(no);
		reply_freedom.setName(name);
		
		ReplyDAO dao = new ReplyDAO();
		
		   if(dao.delete_freedom(reply_freedom)){
			   request.setAttribute("msg", "��ۻ�������!!");
		   }else{
			   request.setAttribute("msg", "������ ��۸� ���� �����մϴ�"); 
		   }
		}   
		   
		return mapping.findForward("success");
	}
}





