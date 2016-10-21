<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	 $("#freeboard").hide();
    $("#noticebtn").click(function(){
        $("freeboard").hide();
        $("noticeboard").show();
    });
    $("#freebtn").click(function(){
    	  $("noticeboard").hide();
          $("freeboard").show();
    });
});
</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>각 게시판 리스트</title>


</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>

	<div class="container">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
		<input type="button" class="button button5 btn-default active" value="공지사항" id="noticebtn"> 
		<input type="button" class="button button5 btn-default active" value="자유게시판" id="freebtn">
<Br><br>
<Br>
<noticeboard>
<h3>공지사항</h3>
<br>

		<table class="table table-bordered">

			<tr>
				<th>글번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>조회수</th>
				<th>등록일자</th>
			</tr>
			<c:forEach items="${noticelist }" var="noticelist">

				<tr>
					<td>${noticelist.basic_board_num }</td>
					<td>${noticelist.member_id }</td>
					<td>${noticelist.title }</td>
					<td>${noticelist.cilck_count }</td>
					<td>${noticelist.upload_date }</td>
				</tr>
			</c:forEach>


		</table>
		</noticeboard>
		
	<freeboard id="freeboard">
	<h3>자유게시판</h3>
	<br>
		<table class="table table-bordered">

			<tr>
				<th>글번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>조회수</th>
				<th>등록일자</th>
			</tr>
		
		<c:forEach items="${freelist }" var="freelist">

				<tr>
					<td>${freelist.basic_board_num }</td>
					<td>${freelist.member_id }</td>
					<td>${freelist.title }</td>
					<td>${freelist.cilck_count }</td>
					<td>${freelist.upload_date }</td>
				</tr>
			</c:forEach>


		</table>
</freeboard>
		<div class="col-sm-offset-8 col-sm-5">
		<input type="button" value="글쓰기" onclick="freeWrite()"class="button button5 btn-default">
			<input type="button" value="목록" onclick="boardSelectAll()" class="button button5 btn-default"> 
			<input type="text" id="select"> 
			<input type="button" onclick="boardSelect()" value="검색" class="button button5 btn-default">
		</div>
	</div>
	
	<Br><br><Br>
	<Br><br><Br>
	
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>
</html>