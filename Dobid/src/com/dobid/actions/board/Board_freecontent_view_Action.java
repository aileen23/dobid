package com.dobid.actions.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.NoticeboardDTO;
import com.dobid.model.boardDAO;

public class Board_freecontent_view_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		String num =request.getParameter("num");
		

			FreeboardDTO freeobject = new FreeboardDTO();
			boardDAO dao = new boardDAO();
			freeobject = dao.freeSelect(num);
	
			dao.freeSelectCnt(num);
			request.setAttribute("freeobject", freeobject);


		return mapping.findForward("success");
	}
}
