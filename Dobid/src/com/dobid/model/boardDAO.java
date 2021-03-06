package com.dobid.model;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dobid.beans.Admin_auctionDTO;
import com.dobid.beans.Admin_freeDTO;
import com.dobid.beans.Admin_groupBuyDTO;
import com.dobid.beans.Admin_hotAuctionDTO;
import com.dobid.beans.Admin_memberAskDelListDTO;
import com.dobid.beans.Admin_noticeDTO;
import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.MemberDTO;
import com.dobid.beans.NoticeboardDTO;
import com.dobid.beans.Service_answerDTO;
import com.dobid.beans.Service_reportDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

public class boardDAO {
	SqlMapClient smc;

	public boardDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public List<NoticeboardDTO> noticeSelectAll() { // borad_list 공지사항 전체목록
		List<NoticeboardDTO> list = null;
		try {
			list = smc.queryForList("board.NoticeSelectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<FreeboardDTO> freeSelectAll() { // borad_list 자유게시판 전체목록
		List<FreeboardDTO> list = null;
		try {
			list = smc.queryForList("board.FreeSelectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	///////// 공지사항 관리 페이징 메소드

	public int NoticeCount(String title) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.noticelistcount", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<NoticeboardDTO> NoticePage(int start, int end, String title) {
		List<NoticeboardDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			list = smc.queryForList("board.noticelistpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	///////// 자유게시판 유저 페이징 메소드

	public int FreeCount(String title) {// 자유 페이징카운터
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.freelistcount", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<FreeboardDTO> FreePage(int start, int end, String title) {
		List<FreeboardDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			list = smc.queryForList("board.freelistpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean freeBoardWrite(FreeboardDTO freeboard) { // board_freedom_write
															// 자유게시판 글쓰기

		try {
			smc.insert("board.FreeBoardWrite", freeboard);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}

	public boolean noticeBoardWrite(NoticeboardDTO noticeboard) { // 관리자 공지사항글쓰기
		// 자유게시판 글쓰기

		try {
			smc.insert("board.NoticeBoardWrite", noticeboard);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}

	public NoticeboardDTO noticeSelect(String num) { // board_content_view 공지사항
														// 상세보기
		NoticeboardDTO noticeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			noticeboardDTO = (NoticeboardDTO) smc.queryForObject("board.NoticeSelect", bagic_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return noticeboardDTO;

	}

	public FreeboardDTO freeSelect(String num) { // board_content_view 자유게시판
													// 상세보기
		FreeboardDTO freeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			freeboardDTO = (FreeboardDTO) smc.queryForObject("board.FreeSelect", bagic_num);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return freeboardDTO;
	}

	public boolean noticeSelectCnt(String num) {// 조회수 증가

		try {
			int bagic_num = Integer.parseInt(num);
			smc.update("board.NoticeSelectCnt", bagic_num);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}

	public boolean freeSelectCnt(String num) {// 조회수증가

		try {
			int bagic_num = Integer.parseInt(num);
			smc.update("board.FreeSelectCnt", bagic_num);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}

	public List<NoticeboardDTO> noticeSelectAllTitle(String title) { // 공지사항리스트
																		// 검색
		List<NoticeboardDTO> list = null;
		try {
			list = smc.queryForList("board.NoticeSelectTitle", title);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<FreeboardDTO> freeSelectAllTitle(String title) { // 공지사항 리스트 검색
		List<FreeboardDTO> list = null;

		try {
			list = smc.queryForList("board.FreeSelectTitle", title);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	///////////////////////////////////////////// 관리자 공지/자유 게시물

	public List<Admin_noticeDTO> adminNoticeSelectAll() { // admin 관리자공지사항 전체목록
		List<Admin_noticeDTO> list = null;
		try {
			list = smc.queryForList("board.adminnoticelist");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<Admin_freeDTO> adminFreeSelectAll() { // admin 관리자자유게시판 전체목록
		List<Admin_freeDTO> list = null;
		try {
			list = smc.queryForList("board.adminfreelist");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<Admin_noticeDTO> adminNoticeSelectTitle(String title) { // 관리자
																		// 공지사항리스트
																		// 검색
		List<Admin_noticeDTO> list = null;

		try {

			list = smc.queryForList("board.adminnoticetitle", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public List<Admin_freeDTO> adminFreeSelectTitle(String title) { // 괸리자 공지사항
																	// 리스트 검색
		List<Admin_freeDTO> list = null;

		try {
			list = smc.queryForList("board.adminfreetitle", title);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// 상세보기
	public Admin_noticeDTO adminNoticeSelect(String num) { // 관리자 공지사항 상세보기
		Admin_noticeDTO adminnoticeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			adminnoticeboardDTO = (Admin_noticeDTO) smc.queryForObject("board.adminnoticeselect", bagic_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return adminnoticeboardDTO;

	}

	public Admin_freeDTO adminFreeSelect(String num) { // 관리자 자유게시판 상세보기
		Admin_freeDTO adminfreeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			adminfreeboardDTO = (Admin_freeDTO) smc.queryForObject("board.adminfreeselect", bagic_num);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return adminfreeboardDTO;
	}

	public boolean adminNoticeBoardDel(String num) {// 관리자 공지사항 게시판 삭제
		try {
			int bagic_num = Integer.parseInt(num);
			smc.delete("board.adminnoticeboarddel", bagic_num);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean adminFreeBoardDel(String num) {// 관리자 공지사항 게시판 삭제
		try {
			int bagic_num = Integer.parseInt(num);
			smc.delete("board.adminfreeboarddel", bagic_num);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	//////////////////////////////////////////////////////////////////////////////////// 관리자
	//////////////////////////////////////////////////////////////////////////////////// 경매
	//////////////////////////////////////////////////////////////////////////////////// 게시물

	public List<Admin_auctionDTO> adminAuctionSelectAll() { // 관리자 일반경매 리스트
		List<Admin_auctionDTO> list = null;
		try {
			list = smc.queryForList("board.adminauctionlist");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<Admin_hotAuctionDTO> adminHotAuctionSelectAll() { // 관리자 핫경매 리스트
		List<Admin_hotAuctionDTO> list = null;
		try {
			list = smc.queryForList("board.adminhotauctionlist");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<Admin_groupBuyDTO> adminGroupAuctionSelectAll() { // 관리자 그룹경매
																	// 리스트
		List<Admin_groupBuyDTO> list = null;
		try {
			list = smc.queryForList("board.admingroupauctionlist");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<Admin_auctionDTO> adminAucionSelectTitle(String title) { // 관리자
																			// 일반경매리스트
																			// 검색
		List<Admin_auctionDTO> list = null;

		try {

			list = smc.queryForList("board.adminauctionselecttitle", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public List<Admin_hotAuctionDTO> adminHotAucionSelectTitle(String title) { // 관리자
																				// 핫경매리스트
																				// 검색
		List<Admin_hotAuctionDTO> list = null;

		try {

			list = smc.queryForList("board.adminhotauctionselecttitle", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public List<Admin_groupBuyDTO> adminGroupAucionSelectTitle(String title) { // 관리자
																				// 공동구매
																				// 리스트
																				// 검색
		List<Admin_groupBuyDTO> list = null;

		try {

			list = smc.queryForList("board.admingroupauctionselecttitle", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public Admin_auctionDTO adminAuctionSelect(String num) { // 관리자 일반경매 상세보기
		Admin_auctionDTO adminauctionDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			adminauctionDTO = (Admin_auctionDTO) smc.queryForObject("board.adminauctionselect", bagic_num);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return adminauctionDTO;
	}

	public Admin_hotAuctionDTO adminHotAuctionSelect(String num) { // 관리자 핫경매
																	// 상세보기
		Admin_hotAuctionDTO adminhotauctionDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			adminhotauctionDTO = (Admin_hotAuctionDTO) smc.queryForObject("board.adminhotauctionselect", bagic_num);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return adminhotauctionDTO;
	}

	public Admin_groupBuyDTO adminGroupAuctionSelect(String num) { // 관리자 그룹경매
																	// 상세보기
		Admin_groupBuyDTO admingroupauctionDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			admingroupauctionDTO = (Admin_groupBuyDTO) smc.queryForObject("board.admingroupauctionselect", bagic_num);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admingroupauctionDTO;
	}

	public boolean adminActionDel(String num) {// 관리자 일반경매 게시판 상세보기 삭제
		try {
			int bagic_num = Integer.parseInt(num);
			smc.delete("board.adminauctiondel", bagic_num);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean adminHotActionDel(String num) {// 관리자 핫경매 게시판 상세보기 삭제
		try {
			int bagic_num = Integer.parseInt(num);
			smc.delete("board.adminhotauctiondel", bagic_num);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean adminGroupActionDel(String num) {// 관리자 공동경매 게시판 상세보기 삭제
		try {
			int bagic_num = Integer.parseInt(num);
			smc.delete("board.admingroupauctiondel", bagic_num);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	/////////////////////////////////////////// 관리자 ono

	public List<Service_answerDTO> adminOnoSelectAll(String categori) {

		List<Service_answerDTO> list = null;

		try {

			list = smc.queryForList("board.adminonolist", categori);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public List<Service_answerDTO> adminOnoSelectTitle(Service_answerDTO onoparam) {

		List<Service_answerDTO> list = null;

		try {

			list = smc.queryForList("board.adminonoselect", onoparam);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public boolean adminOnoDel(String upload_date) {

		try {

			smc.delete("board.adminonodel", upload_date);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean adminOnoSend(Service_answerDTO onosendparam) {

		try {

			smc.update("board.adminonosend", onosendparam);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	///////////////////////////////////////////////////////// 관리자 신고하기

	public List<Service_reportDTO> adminReportSelectAll() {

		List<Service_reportDTO> list = null;

		try {

			list = smc.queryForList("board.adminreportall");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public List<Service_reportDTO> adminReportSelect(String title) {

		List<Service_reportDTO> list = null;

		try {

			list = smc.queryForList("board.adminreportselect", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public boolean adminReportDel(String upload_date) {

		try {

			smc.delete("board.adminreportdel", upload_date);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	///////////////////////////////// 관리자 멤버보기/삭제

	public List<MemberDTO> adminMemberdelSelectAll() {

		List<MemberDTO> list = null;

		try {

			list = smc.queryForList("board.adminmemberdelall");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public List<MemberDTO> adminMemberdelSelect(String member_id) {

		List<MemberDTO> list = null;

		try {

			list = smc.queryForList("board.adminmemberdelselect", member_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public boolean adminMemberdelDel(String member_id) {

		try {

			smc.delete("board.adminmemberdeldel", member_id);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	///////// 신고하기 페이징 메소드

	public int adminSelectReportCount(String title) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.adminreportcount", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<Service_reportDTO> adminReportPage(int start, int end, String title) {
		List<Service_reportDTO> list = null;
		Integer.toString(start);
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			list = smc.queryForList("board.adminreportpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	///////// 1대1 페이징 메소드

	public int adminOnoCount(Service_answerDTO onoparam) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.adminonocount", onoparam);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<Service_answerDTO> adminOnoPage(int start, int end, String title, String categori) {
		List<Service_answerDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			map.put("categori", categori);
			list = smc.queryForList("board.adminonopage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	///////// 회원관리 페이징 메소드

	public int adminMemberDelCount(String member_id) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.adminmemberdelcount", member_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<MemberDTO> adminMemberDelPage(int start, int end, String member_id) {
		List<MemberDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("member_id", member_id);
			map.put("withdrawal", "사용중");
			list = smc.queryForList("board.adminmemberdelpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	///////// 경매/핫 관리 페이징 메소드

	public int adminAuctionCount(Admin_auctionDTO auctionparam) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.adminauctionlistcount", auctionparam);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<Admin_auctionDTO> adminAuctionPage(int start, int end, String title, String hot_check) {
		List<Admin_auctionDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			map.put("hot_check", hot_check);
			list = smc.queryForList("board.adminauctionlistpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	///////// 공동구매 관리 페이징 메소드

	public int adminGroupBuyCount(String title) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.admingroupbuylistcount", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<Admin_groupBuyDTO> adminGroupBuyPage(int start, int end, String title) {
		List<Admin_groupBuyDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			list = smc.queryForList("board.admingroupbuylistpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	///////// 공지사항 관리 페이징 메소드

	public int adminNoticeCount(String title) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.adminnoticelistcount", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<Admin_noticeDTO> adminNoticePage(int start, int end, String title) {
		List<Admin_noticeDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			list = smc.queryForList("board.adminnoticelistpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	///////// 자유게시판 관리 페이징 메소드

	public int adminFreeCount(String title) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.adminfreelistcount", title);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<Admin_freeDTO> adminFreePage(int start, int end, String title) {
		List<Admin_freeDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("title", title);
			list = smc.queryForList("board.adminfreelistpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	///////// 탈퇴요청회원 페이징 메소드

	public int adminMemberAskDelCount(String member_id) {
		int cnt = 0;
		try {
			cnt = (int) smc.queryForObject("board.adminmemberaskdelcount", member_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;

	}

	public List<Admin_memberAskDelListDTO> adminMemberAskDelPage(int start, int end, String member_id) {
		List<Admin_memberAskDelListDTO> list = null;
		try {
			Map<String, String> map = new HashMap<>();
			map.put("start", Integer.toString(start));
			map.put("end", Integer.toString(end));
			map.put("member_id", member_id);
			map.put("withdrawal", "탈퇴대기중");
			list = smc.queryForList("board.adminmemberaskdelpage", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean adminMemberdelUpdate(String member_id) {// 관리자 핫경매 게시판 상세보기 삭제
		try {
			smc.update("board.adminmemberaskupdate", member_id);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	//신유동 공동구매 종료 입니다.
	public boolean admingroupbuy_end(int id) {// 관리자 핫경매 게시판 상세보기 삭제
		try {
			smc.update("board.adminmembergroupbuy_end", id);
			return true;
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	
	
	
}
