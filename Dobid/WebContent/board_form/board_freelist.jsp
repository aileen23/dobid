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

		$('#freeboardSelectAll').on('click', function() { //자유게시판 목록버튼
			$(location).attr('href', '/Dobid/freeboard_list.do');

		});
		$('#freeWrite').on('click', function() { //글쓰기 버튼
			$(location).attr('href', '/Dobid/board_freedom_write.do');

		});

	});
</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Dobid/admin_form/css/admin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>자유게 시판 리스트</title>


</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>

	<div class="container">

		<Br> <br> <Br>
		<form action="/Dobid/freeboard_list.do" method="POST">

			<h3>자유게시판</h3>
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

				<c:forEach items="${freelist }" var="freelist">

					<tr>
						<td>${freelist.basic_board_num }</td>
						<td>${freelist.nickname }</td>
						<td><a
							href="freeboard_content_view.do?num=${freelist.basic_board_num }">${freelist.title }</a></td>
						<td>${freelist.cilck_count }</td>
						<td>${freelist.upload_date }</td>
					</tr>
				</c:forEach>


			</table>
			<div class="col-sm-offset-6 col-sm-6">
				<div class="col-sm-7">
					<input type="text" id="freeselecttext" name="freeselecttext"
						class="form-control">
				</div>
				<input type="submit" id="freeboardSelectbtn" value="검색"
					class="button button5 btn-default">
		</form>
		<input type="button" value="목록" id="freeboardSelectAll"
			class="button button5 btn-default"> <input type="button"
			value="글쓰기" id="freeWrite" class="button button5 btn-default">

		<div class="form-group">
			<div class="col-sm-7">
				<br>

				<c:if test="${page == 1}">이전</c:if>
				<c:if test="${page > 1}">
					<a href="freeboard_list.do?page=${ page-1 }&freeselecttext=${select}">이전</a>
				</c:if>

				<c:if test="${page == totalPage }">다음</c:if>
				<c:if test="${page < totalPage }">
					<a href="freeboard_list.do?page=${ page+1 }&freeselecttext=${select}">다음</a>
				</c:if>
				<br> <br>
				<c:if test="${totalPage >1}">
					<c:forEach begin="1" end="${totalPage }" var="i">
       [<a href="freeboard_list.do?page=${ i }&freeselecttext=${select}">${i }</a>]
    </c:forEach>
				</c:if>
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