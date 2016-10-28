<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../admin_form/admin_header.jsp"%></header>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<% request.setCharacterEncoding("UTF-8");%>
<script type="text/javascript">
	$(document).ready(function() {


		$("#close").click(function() {
			$("#popup").hide();
		});

		$(".list").click(function() {
			console.log($(this).children().text());
		
			$("#popup").show();
			
			$("#admin_memberdel_view_member_id").val($(this).children().eq(0).text());
			$("#admin_memberdel_view_name").val($(this).children().eq(1).text());
			$("#admin_memberdel_view_phone").val($(this).children().eq(2).text());
			$("#admin_memberdel_view_email").val($(this).children().eq(3).text());
			$("#admin_memberdel_view_address").val($(this).children().eq(4).text());
			$("#admin_memberdel_view_nickname").val($(this).children().eq(5).text());
			$("#admin_memberdel_view_introduction").val($(this).children().eq(6).text());
			$("#admin_memberdel_view_birthday").val($(this).children().eq(7).text());
			$("#admin_memberdel_view_charging_amount").val($(this).children().eq(8).text());
			

			
		});
		
	
		
		
	});
</script>

<title>회원관리</title>


</head>

<body>
<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">
		<h3>회원관리</h3>
		<hr>
		
		<div class="form-group">
			<form action="/Dobid/admin_memberdel.do" method="POST">
				
				<div class="col-sm-7">
					<input type="text" class="form-control"
						name="admin_memberdel_selecttext" placeholder="검색어입력">

				</div>
				<button class="button button5 btn-default" id="admin_memberdel_select"
					name="admin_memberdel_select">검색</button>
			</form>
		</div>
		<table class="table table-bordered">

			<tr>

				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>이메일</th>
				<th>주소</th>
				<th>닉네임</th>
				<th>자기소개</th>
				<th>생년월일</th>
				<th>보유금액</th>
			
			</tr>
			<c:forEach items="${adminmemberdellist }" var="adminmemberdellist">
			<tr class="list">

				<td>${adminmemberdellist.member_id}</td>
				<td>${adminmemberdellist.name }</td>
				<td>${adminmemberdellist.phone}</td>
				<td>${adminmemberdellist.email}</td>
				<td>${adminmemberdellist.address}</td>
				<td>${adminmemberdellist.nickname}</td>
				<td>${adminmemberdellist.introduction}</td>
				<td>${adminmemberdellist.birthday}</td>
				<td>${adminmemberdellist.charging_amount}</td>
			</tr>
</c:forEach>

		</table>

	</div>

<div id="popup" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 60%; height: 55%; margin-left: 20%; margin-top: 10%; border: 1px solid black;">
			<form class="form-horizontal" action="/Dobid/admin_memberdel.do" method="POST">
			
			
			
				
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control" name="admin_memberdel_view_member_id"
							id="admin_memberdel_view_member_id" style="margin-top: 20px;" value="asd"
							 readOnly>
							
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_memberdel_view_name" name="admin_memberdel_view_name"
							 readOnly>
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_memberdel_view_phone" name="admin_memberdel_view_phone"
							 readOnly>
					</div>
				</div>
				
				
				
				
	

				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_memberdel_view_email" name="admin_memberdel_view_email"
							 readOnly>
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_memberdel_view_address" name="admin_memberdel_view_address"
							 readOnly>
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_memberdel_view_nickname" name="admin_memberdel_view_nickname"
							 readOnly>
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_memberdel_view_birthday" name="admin_memberdel_view_birthday"
							 readOnly>
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_memberdel_view_charging_amount" name="admin_memberdel_view_charging_amount"
							 readOnly>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<textarea class="form-control " id="admin_memberdel_view_introduction"
							name="admin_memberdel_view_introduction"
							style="height: 200px"
							readOnly></textarea>
					</div>
				</div>
				
			
		
			
			<div class="col-sm-offset-3 col-sm-5">
				<button class="button button5 btn-default">삭제</button>
		
				<input type="hidden" name="del" value="del">
				<input type="hidden" name="admin_memberdel_view_member_id" id="admin_memberdel_view_member_id">
				
			
			</div>
			</form>
			<button class="button button5 btn-default" id="close">취소</button>
			
		
			</div>
		</div>



	
	
	
	
	
		<div class="container">

		<hr>

		<!-- Footer -->
			<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>

	</div>
</div>
	
	
</body>
</html></html>