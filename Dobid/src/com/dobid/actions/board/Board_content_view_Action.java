package com.dobid.actions.board;



import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.NoticeboardDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;


public class Board_content_view_Action extends Action{

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		SqlMapClient sqlMap = SqlMapConfig.getSqlMapInstance();
		
		
			if (request.getParameter("공지사항").equals(null)) {
		
				 NoticeboardDTO noticedto = (NoticeboardDTO) sqlMap.queryForObject("dobid.NoticeSelect",request.getParameter("num"));	      
			        request.setAttribute("noticeobject", noticedto); 
			} else if (request.getParameter("자유게시판").equals(null)) {
		
				 FreeboardDTO freedto = (FreeboardDTO) sqlMap.queryForObject("dobid.FreeSelect",request.getParameter("num"));      
			        request.setAttribute("freeobject", freedto); 
			}

		
		
		
		return mapping.findForward("success");
	}
}
