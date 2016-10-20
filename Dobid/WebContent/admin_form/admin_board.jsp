<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../admin_form/admin_header.jsp"%></header>
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


<title>게시글관리</title>


</head>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>
<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">
		<h3>게시글관리</h3>
		<hr>
		
		<div class="form-group">

			<button class="button button5 btn-default">검색</button>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="admin_select"
					placeholder="검색어입력">

			</div>
			<div class="col-sm-5">
				<select style="width: 30%" class="form-control">
					<option>공지사항</option>
					<option>자유게시판</option>
				</select>
			</div>
		</div>

		<table class="table table-bordered">

			<tr>
				<th>글번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>닉네임</th>
				<th>이메일</th>	
				<th>내용</th>
				<th>등록일자</th>
			</tr>
			
			<tr>
				<td>boardlist_seq</td>
				<td>boardlist_id</td>
				<td>boardlist_name</td>
				<td>boardlist_nickname</td>
				<td>boardlist_email</td>
				<td>boardlist_content</td>
				<td>boardlist_date</td>
			</tr>


		</table>

	</div>
	
	
	
	
		<hr>
	<center>

		<form class="form-horizontal">
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-5">
					<input type="text" class="form-control" id="admin_board_view_title"
						placeholder="제목" disabled>
				</div>
			</div>
			<div class="form-group">

				<div class="col-sm-offset-7 col-sm-1">
					<input type="text" class="form-control" id="admin_board_view_userid)"
						placeholder="아이디" disabled>
				</div>
			</div>

			</div>
			<div class="form-group">
			<div class="col-sm-offset-3 col-sm-5">
					<input type="image" src="../image/dobid.png"  id="admin_board_view_img"
						placeholder="이미지"  disabled>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-5">
					<textarea class="form-control " id="admin_board_view_content"
						placeholder="입력된 내용" style="height: 200px" disabled></textarea>
				</div>
			</div>

		</form>

		<div class="col-sm-offset-3 col-sm-5">
				<button class="button button5 btn-default" onclick="boardDel()">삭제</button>
				
			<button class="button button5 btn-default" onclick="pageback()">취소</button>
		</div>

	</center>


		<div class="container">

		<hr>

		<!-- Footer -->
			<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>

	</div>
	
	
	
	
	
	
</body>
</html>