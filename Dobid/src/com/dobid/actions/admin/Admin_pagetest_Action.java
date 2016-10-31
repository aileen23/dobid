package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_pagetest_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_report_selecttext = request.getParameter("admin_report_selecttext");
		String del = request.getParameter("del");
		String admin_report_view_upload_date = request.getParameter("admin_report_view_upload_date");

		System.out.println("admin_report_selecttext : " + request.getParameter("admin_report_selecttext"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_report_view_upload_date : " + request.getParameter("admin_report_view_upload_date"));

		ActionForward forward = mapping.findForward("success");
		List<Service_reportDTO> adminreportlist = dao.adminReportSelectAll();
		if (del == null) {
			if (admin_report_selecttext == null) {

				adminreportlist = dao.adminReportSelectAll();
				request.setAttribute("adminreportlist", adminreportlist);
				forward = mapping.findForward("adminreportlist");
				// 페이지 정보 얻어오기
				String pageStr = request.getParameter("page");

				int page = 1;// 기본페이지를 1페이지로 하겠다!!

				int viewRowCnt = 5;// 한 페이지에 보여줄 행(레코드)의 수
				if (pageStr != null) {
					page = Integer.parseInt(pageStr);
				}

				int end = page * viewRowCnt;
				int start = end - (viewRowCnt - 1);
				int totalRecord = dao.adminReportCount();
				System.out.println("totalRecord: " + totalRecord);
				int totalPage = totalRecord / viewRowCnt;
				if (totalRecord % viewRowCnt > 0)
					totalPage++;
				request.getSession().removeAttribute("adminreportlist");
				request.getSession().removeAttribute("page");
				request.getSession().removeAttribute("totalPage");
				adminreportlist = dao.adminReportPage(start, end);// dao.adminReportSelectAll();
				request.getSession().setAttribute("adminreportlist", adminreportlist);// 4.
																						// 영역에
																						// 데이터
																						// 저장
				request.getSession().setAttribute("page", page);// 현재페이지
				request.getSession().setAttribute("totalPage", totalPage);// 전체페이지
				// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!
				return forward = mapping.findForward("success");

			} else if (admin_report_selecttext != null) {
				adminreportlist = dao.adminReportSelect(admin_report_selecttext);
				request.setAttribute("adminreportlist", adminreportlist);

			}

		} else if (del != null) {

			boolean delflag = dao.adminReportDel(admin_report_view_upload_date);
			request.setAttribute("delflag", delflag);

		}

		return mapping.findForward("success");
	}
}
