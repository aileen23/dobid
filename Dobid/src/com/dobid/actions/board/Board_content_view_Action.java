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

public class Board_content_view_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		String num =request.getParameter("num");
		String id= request.getParameter("id");
		if (id.equals("1")) {
			
			NoticeboardDTO noticeobject = new NoticeboardDTO();
			boardDAO dao = new boardDAO();
			noticeobject = dao.noticeSelect(num);
			dao.noticeSelectCnt(num);
			request.setAttribute("viewobject", noticeobject);

		} else if (id.equals("2")) {

			FreeboardDTO freeobject = new FreeboardDTO();
			boardDAO dao = new boardDAO();
			freeobject = dao.freeSelect(num);
			dao.freeSelectCnt(num);
			request.setAttribute("viewobject", freeobject);
		}

		return mapping.findForward("success");
	}

}
