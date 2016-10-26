package com.dobid.model;

import java.sql.SQLException;

import java.util.List;

import com.dobid.beans.Admin_freeDTO;
import com.dobid.beans.Admin_noticeDTO;
import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.NoticeboardDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

public class boardDAO {
	SqlMapClient smc;

	public boardDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	
	public List<NoticeboardDTO> noticeSelectAll(){ //borad_list 공지사항 전체목록
		List<NoticeboardDTO> list=null;
		try {
			list = smc.queryForList("board.NoticeSelectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<FreeboardDTO> freeSelectAll(){ //borad_list 자유게시판 전체목록
		List<FreeboardDTO> list=null;
		try {
			list = smc.queryForList("board.FreeSelectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	public boolean freeBoardWrite(FreeboardDTO freeboard) { //board_freedom_write 자유게시판 글쓰기

		try {
			smc.insert("board.FreeBoardWrite", freeboard);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}
	
	
	public NoticeboardDTO noticeSelect(String num){ //board_content_view 공지사항 상세보기
		NoticeboardDTO noticeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			noticeboardDTO=(NoticeboardDTO)smc.queryForObject("board.NoticeSelect", bagic_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return noticeboardDTO;
			
		
	}
	public FreeboardDTO freeSelect(String num){ //board_content_view 자유게시판 상세보기
		FreeboardDTO freeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			freeboardDTO= (FreeboardDTO)smc.queryForObject("board.FreeSelect", bagic_num);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return freeboardDTO;	
	}
		
	
	public boolean noticeSelectCnt(String num){//조회수 증가
		
		try {
			int bagic_num = Integer.parseInt(num);
			smc.update("board.NoticeSelectCnt", bagic_num);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
		
	}
	public boolean freeSelectCnt(String num){//조회수증가
		
		try {
			int bagic_num = Integer.parseInt(num);
			smc.update("board.FreeSelectCnt", bagic_num);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
		
	}
	
	
	public List<NoticeboardDTO> noticeSelectTitle(String title){ //공지사항리스트 검색
		List<NoticeboardDTO> list=null;
		try {
			list = smc.queryForList("board.NoticeSelectTitle",title);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<FreeboardDTO> freeSelectAllTitle(String title){ //공지사항 리스트 검색
		List<FreeboardDTO> list=null;

		try {
			list = smc.queryForList("board.FreeSelectTitle",title);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
	public List<Admin_noticeDTO> adminNoticeSelectAll(){ //admin 관리자공지사항 전체목록
		List<Admin_noticeDTO> list=null;
		try {
			list = smc.queryForList("board.adminnoticelist");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Admin_freeDTO> adminFreeSelectAll(){ //admin 관리자자유게시판 전체목록
		List<Admin_freeDTO> list=null;
		try {
			list = smc.queryForList("board.adminfreelist");

		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	public List<Admin_noticeDTO> adminNoticetitle(String title){ //관리자 공지사항리스트 검색
		List<Admin_noticeDTO> list = null;
	
		try {
			
			list=smc.queryForList("board.adminnoticetitle", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
			
		
	}
	public List<Admin_freeDTO> adminFreetitle(String title){ //괸리자 공지사항 리스트 검색
		List<Admin_freeDTO> list = null;
	
		try {
			list= smc.queryForList("board.adminfreetitle", title);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;	
	}
	

	//상세보기 
	public Admin_noticeDTO adminNoticeSelect(String num){ //관리자 공지사항 상세보기
		Admin_noticeDTO adminnoticeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			adminnoticeboardDTO=(Admin_noticeDTO)smc.queryForObject("board.adminnoticeselect", bagic_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return adminnoticeboardDTO;
			
		
	}
	public Admin_freeDTO adminFreeSelect(String num){ //관리자 자유게시판 상세보기
		Admin_freeDTO adminfreeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			adminfreeboardDTO= (Admin_freeDTO)smc.queryForObject("board.adminfreeselect", bagic_num);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return adminfreeboardDTO;	
	}
	
	
	public boolean adminNoticeBoardDel(String num){//관리자 공지사항 게시판 삭제
		try {
			int bagic_num = Integer.parseInt(num);
			smc.delete("board.adminnoticeboarddel",bagic_num);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	public boolean adminFreeBoardDel(String num){//관리자 공지사항 게시판 삭제
		try {
			int bagic_num = Integer.parseInt(num);
			smc.delete("board.adminfreeboarddel",bagic_num);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
