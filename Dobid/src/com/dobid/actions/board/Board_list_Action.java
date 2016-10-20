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
import com.dobid.model.dobidDAO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;


public class Board_list_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		SqlMapClient sqlMap = SqlMapConfig.getSqlMapInstance();
		
		if (request.getParameter("공지사항").equals(null)) {
	
			List<NoticeboardDTO> list = sqlMap.queryForList("dobid.NoticeSelectAll"); 
	        request.setAttribute("noticelist", list);
		} else if (request.getParameter("자유게시판").equals(null)) {
	
			List<FreeboardDTO> list = sqlMap.queryForList("dobid.FreeSelectAll");  
	        request.setAttribute("freelist", list);
		}

		

		return mapping.findForward("success");
	}

}












