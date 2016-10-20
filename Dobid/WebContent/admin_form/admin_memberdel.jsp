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


<title>회원삭제</title>


</head>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body><!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">
		<h3>회원삭제</h3>
		<hr>

		<div class="form-group">

			<button class="button button5 btn-default">검색</button>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="admin_select"
					placeholder="검색어입력">

			</div>


			<table class="table table-bordered">

				<tr>
					<th>글번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>닉네임</th>
					<th>이메일</th>
					<th>삭제</th>
					<th>상세보기</th>
				</tr>

				<tr>
					<td>memberdel_seq</td>
					<td>memberdel_userid</td>
					<td>memberdel_username</td>
					<td>memberdel_nickname</td>
					<td>memberdel_email</td>
					<td>memberdel_del</td>
					<td>memberdel_detail</td>
				</tr>


			</table>

		</div>
	</div>

	<hr>
	<center>

		<form class="form-horizontal">
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_userid"
						placeholder="아이디" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_name"
						placeholder="이름" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_phone"
						placeholder="휴대폰" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_email"
						placeholder="email" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_addr"
						placeholder="주소" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_nickname"
						placeholder="닉네임" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_introduction"
						placeholder="자기소개" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_birthday"
						placeholder="생년월일" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_charging"
						placeholder="충전금액" disabled>
				</div>
			</div>
		
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-3">
					<input type="text" class="form-control" id="admin_memberdel_view_date"
						placeholder="가입일자" disabled>
				</div>
			</div>
			
			



		</form>

		<div class="col-sm-offset-3 col-sm-5">
			<button class="button button5 btn-default"
				onclick="memberdelUpdate()">수정</button>
			<button class="button button5 btn-default" onclick="memberdelDel()">삭제</button>
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