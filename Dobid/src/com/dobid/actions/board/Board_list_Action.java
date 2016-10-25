package com.dobid.actions.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.NoticeboardDTO;
import com.dobid.model.boardDAO;

public class Board_list_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		boardDAO dao = new boardDAO();

		String notselect = request.getParameter("noticeselecttext");
		String freeselect = request.getParameter("freeselecttext");
		
		if (notselect.equals("")) {
			List<NoticeboardDTO> noticeselectlist = null;
			noticeselectlist=dao.NoticeSelectTitle(notselect);
			request.setAttribute("noticelist", noticeselectlist);
	
		} else if (freeselect.equals("")) {
			List<FreeboardDTO> freeselectlist = null;
			freeselectlist=dao.FreeSelectAllTitle(freeselect);
			request.setAttribute("freelist", freeselectlist);
			
			
		} else {

			List<NoticeboardDTO> noticelist = null;

			noticelist = dao.NoticeSelectAll();
			request.setAttribute("noticelist", noticelist);

			List<FreeboardDTO> freelist = null;
			freelist = dao.FreeSelectAll();
			request.setAttribute("freelist", freelist);

		}

		return mapping.findForward("success");
	}
}
