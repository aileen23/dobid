package com.dobid.actions.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.NoticeboardDTO;
import com.dobid.model.boardDAO;

public class Board_noticelist_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		List<NoticeboardDTO> noticelist = null;

		noticelist = dao.noticeSelectAll();
		request.setAttribute("noticelist", noticelist);

		String notselect = request.getParameter("noticeselecttext");

		System.out.println(request.getParameter("noticeselecttext"));

		if (notselect != null) {
			List<NoticeboardDTO> noticeselectlist = null;
			noticeselectlist = dao.noticeSelectTitle(notselect);
			request.setAttribute("noticelist", noticeselectlist);

		}

		return mapping.findForward("success");
	}

}
