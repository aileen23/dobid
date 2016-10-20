<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>Insert title here</title>


</head>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>
<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">

		<input type="button" class="button button5 btn-default" value="공지사항"
			onclick="notice_board()"> <input type="button"
			class="button button5 btn-default" value="자유게시판"
			onclick="free_board()">

		<table class="table table-bordered">

			<tr>
				<th>글번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>조회수</th>
				<th>등록일자</th>
			</tr>
			<!-- boardViewSelect()메소드로 글을 하나 눌르면 그 글로 가지게하는 매소드 -->
			<tr>
				<td>num</td>
				<td>id</td>
				<td>title</td>
				<td>cnt</td>
				<td>up_date</td>
			</tr>


		</table>

		<div class="col-sm-offset-8 col-sm-5">
		<input type="button" value="글쓰기" onclick="freeWrite()"
			class="button button5 btn-default">
			<input type="button" value="목록" onclick="boardSelectAll()"
				class="button button5 btn-default"> <input type="text"
				id="select"> <input type="button" onclick="boardSelect()"
				value="검색" class="button button5 btn-default">
		</div>
	</div>
	
	
	<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>

	</div>
</body>
</html>