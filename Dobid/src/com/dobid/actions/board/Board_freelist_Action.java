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
import com.dobid.beans.Service_answerDTO;
import com.dobid.model.boardDAO;

public class Board_freelist_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		String freeselect = request.getParameter("freeselecttext");

		System.out.println(request.getParameter("freeselecttext"));

		boardDAO dao = new boardDAO();

		ActionForward forward = mapping.findForward("success");

		if (freeselect == null) {
			freeselect = "";
		}
		List<FreeboardDTO> freeselectlist = null;

		// 페이지 정보 얻어오기
		String pageStr = request.getParameter("page");

		int page = 1;// 기본페이지를 1페이지로 하겠다!!

		int viewRowCnt = 10;// 한 페이지에 보여줄 행(레코드)의 수
		if (pageStr != null) {
			page = Integer.parseInt(pageStr);
		}

		int end = page * viewRowCnt;
		int start = end - (viewRowCnt - 1);
		int totalRecord = dao.FreeCount(freeselect);
		System.out.println("totalRecord: " + totalRecord);
		int totalPage = totalRecord / viewRowCnt;
		if (totalRecord % viewRowCnt > 0)
			totalPage++;
		request.removeAttribute("freelist");
		request.removeAttribute("page");
		request.removeAttribute("totalPage");
		request.removeAttribute("select");
		freeselectlist = dao.FreePage(start, end, freeselect);
		request.setAttribute("freelist", freeselectlist);// 4.
													// 영역에
													// 데이터
													// 저장
		
		request.setAttribute("select", freeselect);
		request.setAttribute("page", page);// 현재페이지
		request.setAttribute("totalPage", totalPage);// 전체페이지
		// 영역에 데이터 저장하는 이유? 뷰와 공유하기 위해서!!
		return forward = mapping.findForward("success");


	}
}
