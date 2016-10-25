<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../admin_form/admin_header.jsp"%></header>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("#popup").hide();
	//$(".button").click(function(){
	//	$("#popup").show();
	//});
	$("#close").click(function(){
		$("#popup").hide();
	});
	
});
</script>

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
	<form action="/Dobid/admin_board.do" method="POST">
			<button class="button button5 btn-default" id="admin_boardselect" name="admin_boardselect">검색</button>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="admin_boardselecttext"
					placeholder="검색어입력">

			</div>
			<div class="col-sm-5">
				<select style="width: 30%" class="form-control" name="catalogue">
					<option value="notice">공지사항</option>
					<option value="free">자유게시판</option>
				</select>
			</div>
			</form>
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
		<c:forEach items="${adminboardlist }" var="adminboardlist">
			<tr>
				<td>adminboardlist_seq</td>
				<td>adminboardlist_id</td>
				<td>adminboardlist_name</td>
				<td>adminboardlist_nickname</td>
				<td>adminboardlist_email</td>
				<td>adminboardlist_content</td>
				<td>adminboardlist_date</td>
			</tr>
</c:forEach>

		</table>

	</div>
	


<div id="popup" class="overlay" style="  z-index: 25;
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    background-color: rgba(0,0,0,0.6);
    width: 100%;
    height: 100%;">
    <div style="background-color: white; width: 60%; height: 55%; margin-left: 20%; margin-top: 10%; border: 1px solid black;">
 <form class="form-horizontal">
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-5">
					<input type="text" class="form-control" id="admin_board_view_title" style="margin-top: 20px;"
						placeholder="제목" disabled name="admin_board_view_title">
				</div>
			</div>
			<div class="form-group">

				<div class="col-sm-offset-3 col-sm-5">
					<input type="text" class="form-control" id="admin_board_view_userid" name="admin_board_view_userid"
						placeholder="아이디" disabled>
				</div>
			</div>

			<div class="form-group">
			<div class="col-sm-offset-3 col-sm-5">
					<input type="image" src="../image/dobid.png"  id="admin_board_view_img" name="admin_board_view_img"
						placeholder="이미지"  disabled>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-5">
					<textarea class="form-control " id="admin_board_view_content" name="admin_board_view_content"
						placeholder="입력된 내용" style="height: 200px" disabled></textarea>
				</div>
			</div>

		</form>

		<div class="col-sm-offset-3 col-sm-5">
				<button class="button button5 btn-default" id="board_del">삭제</button>
				
			<button class="button button5 btn-default" id="close">취소</button>
		</div>
		</div>
</div>


<Br><Br><br><br><br>
		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</body>
</html>