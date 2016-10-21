package com.dobid.actions.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MemberDTO;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.engine.mapping.sql.Sql;

import iba.SqlMapConfig;

public class Mypage_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		SqlMapClient sqlMap = SqlMapConfig.getSqlMapInstance();
		MemberDTO memberlist = (MemberDTO) sqlMap.queryForObject("myprofile.select"); 
		
		
		return mapping.findForward("success");
	}
}
