<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Do!bid</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText" style="margin-left: 20px">
		<font size="80" color="black">1:1 문의내역</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
<div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>제목</th>
        <th>카테고리</th>
        <th>내용</th>
        <th>날짜</th>
        <th>상세보기</th>
        <th>답변상태</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list }" var="qnalist">
      <tr>
        <td>${qnalist.title}</td>
        <td>${qnalist.categori}</td>
        <td>${qnalist.contents}</td>
        <td>${qnalist.upload_date}</td>
        <td>상세보기</td>
        <c:choose>
        	<c:when test="${qnalist.answer_contents eq null}">
        	<td>답변대기</td>        
        	</c:when>
       		<c:otherwise><td>답변완료</td></c:otherwise>
        </c:choose>

      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>


</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
