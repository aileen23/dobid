<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Do!bid</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
$(function(){
	
	
	$("#detail").click(function(){
	$("#tablegate").val($(this).children().eq(0).text());
	$("#popup").fadeIn(700);
	});
$("#close").click(function(){
	$("#popup").fadeOut(500);
});//팝업창 띄우기

});
</script>
</head>
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
			
	<div class="titleText" style="margin-left: 20px">
		<font size="80" color="black">1:1 문의내역</font><br>
	</div>

	<div class="container-fluid" style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>카테고리</th>
					<th>제목</th>
					<th>날짜</th>
					<th>상세보기</th>
					<th>답변상태</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ list }" var="listqna">
					<tr>
						<td>${listqna.categori }</td>
						<td>${listqna.title }</td>
						<td>${listqna.upload_date }</td>
						<td><button id="detail" value="${listqna }">상세보기</button></td>
						<c:choose>
							<c:when test="${qnalist.answer_contents eq null}">
								<td>답변대기</td>
							</c:when>
							<c:otherwise>
								<td><button id="answer">답변완료</button></td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="popup" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 40%; height: 30%; margin-left: 30%; margin-top: 17%; border: 1px solid black;">

			<br>
			<table class="table">
				<tr>
					<td>카테고리</td>
					<td><input type="text" id="tablegate"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" id="tabletitle"></td>
				</tr>
				<tr>
					<td>시간</td>
					<td><input type="text" id="tabledate"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><input type="text" id="tablecontent"></td>
				</tr>
			</table>


			<button type="button" class="btn btn-default" id="close"
				style="margin-left: 45%">닫기</button>




		</div>
	</div>

</body>
<footer>
	<%@include file="/regist_form/footer.jsp"%></footer>
</html>
