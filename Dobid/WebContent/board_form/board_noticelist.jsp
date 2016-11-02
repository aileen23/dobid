<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		$('#noticeboardSelectAll').on('click', function() { //공지사항 목록버튼
			$(location).attr('href', '/Dobid/noticeboard_list.do');
		});

	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>공지 게시판 리스트</title>


</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>

	<div class="container">
		

		<Br>
		<br> <Br>
		<form action="/Dobid/noticeboard_list.do" method="POST">

			<h3>공지사항</h3>
			<hr>
			<br>

			<table class="table table-bordered">

				<tr>
					<th>글번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>조회수</th>
					<th>등록일자</th>
				</tr>
				<c:forEach items="${noticelist }" var="noticelist">

					<tr>
						<td>${noticelist.basic_board_num }</td>
						<td>${noticelist.member_id }</td>
						<td><a href="noticeboard_content_view.do?num=${noticelist.basic_board_num }">${noticelist.title }</a></td>
						<td>${noticelist.cilck_count }</td>
						<td>${noticelist.upload_date }</td>
					</tr>
				</c:forEach>


			</table>
			<div class="col-sm-offset-6 col-sm-6">
				<div class="col-sm-7">
					<input type="text" id="noticeselecttext" name="noticeselecttext"
						class="form-control">
				</div>
				<input type="submit" id="noticeboardSelectbtn" value="검색"
					class="button button5 btn-default">
		</form>
		<input type="button" value="목록" id="noticeboardSelectAll"
			class="button button5 btn-default">
			
			<div class="form-group">
			<div class="col-sm-7">
				<br>
				<c:if test="${page == 1}">이전</c:if>
				<c:if test="${page > 1}">
					<a href="noticeboard_list.do?page=${ page-1 }">이전</a>
				</c:if>

				<c:if test="${page == totalPage }">다음</c:if>
				<c:if test="${page < totalPage }">
					<a href="noticeboard_list.do?page=${ page+1 }">다음</a>
				</c:if>
				<br>
				<br>
				<c:forEach begin="1" end="${totalPage }" var="i">
       [<a href="noticeboard_list.do?page=${ i }">${i }</a>]
    </c:forEach>
			</div>
		</div>
	</div>
	<Br>
	<br>
	<Br>
	<Br>
	<br>
	<Br>

	<footer> <%@include file="/regist_form/footer.jsp"%>
	</footer>
</body>
</html>