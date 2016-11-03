<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	if (session.getAttribute("logincheck") == null) {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/Dobid/login.do');" + "</script>");
	}
%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Do!bid</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
function callTable(tablegate,tabletitle,tabledate,tablecontent){
	$("#tablegate").text(tablegate);
	$("#tabletitle").text(tabletitle);
	$("#tabledate").text(tabledate);
	$("#tablecontent").text(tablecontent);
	$("#popup").fadeIn(700);
}
function callAnsTable(tableAnswerDate,tableAnswerCon){
	$("#tableAnswerDate").text(tableAnswerDate);
	$("#tableAnswerCon").text(tableAnswerCon);
	$("#popup2").fadeIn(700);
}

$(function(){
	$("#close").click(function(){
	$("#popup").fadeOut(500);
});
	$("#close2").click(function(){
		$("#popup2").fadeOut(500);
	});


});
</script>
</head>
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
			
	<div class="titleText" style="margin-left: 17%; margin-right: auto;">
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
					<tr class="tr">
						<td>${listqna.categori }</td>
						<td>${listqna.title }</td>
						<td>${listqna.upload_date }</td>
						<td><button class="btn btn-default" onclick="callTable('${listqna.categori }','${listqna.title }','${listqna.upload_date }','${listqna.contents }')">상세보기</button></td>
						<c:choose>
							<c:when test="${empty listqna.answer_date}">
								<td>답변대기</td>
							</c:when>
							<c:otherwise>
								<td><button class="btn btn-default" onclick="callAnsTable('${listqna.answer_date}','${ listqna.answer_contents}')">답변완료</button></td>
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
			style="background-color: white; width: 50%; height: 60%; margin-left: 20%; margin-top: 10%;  border: 1px solid black;">

			<br>
			<table class="table">
				<tr>
					<td>카테고리</td>
					<td><div id="tablegate"></div></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><div id="tabletitle"></div></td>
				</tr>
				<tr>
					<td>시간</td>
					<td><div id="tabledate"></div></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><div id="tablecontent"></div></td>
				</tr>
			</table>
			<button type="button" class="btn btn-default" id="close"
				style="margin-left: 45%">닫기</button>


		</div>
	</div>
	
	<div id="popup2" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 50%; height: 60%; margin-left: 20%; margin-top: 10%;  border: 1px solid black;">

			<br>
			<table class="table">
				<tr>
					<td>답변날짜</td>
					<td><div id="tableAnswerDate"></div></td>
				</tr>
				<tr>
					<td>답변내용</td>
					<td><div id="tableAnswerCon"></div></td>
				</tr>
			</table>
			<button type="button2" class="btn btn-default" id="close2"
				style="margin-left: 45%">닫기</button>

		</div>
	</div>
	

</body>
<footer>
	<%@include file="/regist_form/footer.jsp"%></footer>
</html>
