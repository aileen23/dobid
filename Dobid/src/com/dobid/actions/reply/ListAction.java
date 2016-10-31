package com.dobid.actions.reply;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.ReplyDTO;
import com.dobid.model.ReplyDAO;
import com.dobid.util.Util;
import com.sun.glass.ui.Size;

import oracle.net.aso.i;



public class ListAction extends Action{//목록출력 요청

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
	   ReplyDAO dao = new ReplyDAO();
	   /*List<ReplyDTO>  list =  dao.findAll();
	    for(int i=0; i<list.size(); i++){
	    	 ReplyDTO reply = list.get(i);
	    	 reply.setContent(Util.toJS(reply.getContent()));
	    }*/
	   
	   
	   
	    request.setAttribute("list", dao.findAll());//list);
	   return mapping.findForward("success");
	}//execute
}








