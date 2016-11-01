package com.dobid.actions.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.FreeboardDTO;

import com.dobid.model.boardDAO;

public class Board_freelist_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		List<FreeboardDTO> freelist = null;
		freelist = dao.freeSelectAll();
		request.setAttribute("freelist", freelist);

		String freeselect = request.getParameter("freeselecttext");

		System.out.println(request.getParameter("freeselecttext"));

		if (freeselect != null) {
			List<FreeboardDTO> freeselectlist = null;
			freeselectlist = dao.freeSelectAllTitle(freeselect);
			request.setAttribute("freelist", freeselectlist);

		}

		return mapping.findForward("success");
	}
}
