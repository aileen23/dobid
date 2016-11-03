<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText"  style="margin-left: 17%; margin-right: auto;">
		<font size="80" color="black">충전내역</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
<div class="container">
     	<b>현재 사용가능금액 :</b> ${Charging_amount }원
</div>
<br>
<div class="container">
  <table class="table">
    <thead>
      <tr>
     	<th></th>
        <th>시간</th>
        <th>내역</th>
        <th>금액</th>
      </tr>	
    </thead>
    <tbody>
    <c:forEach items="${list }" var="chargelist">
      <tr>
      	<c:choose>
      	<c:when test="${chargelist.charge_check eq 0}">
      		<th><font color="red">사용</font></th>
      	</c:when>
      	<c:when test="${chargelist.charge_check eq 1}">
      		<th><font color="blue">충전</font></th>
      	</c:when>
      	</c:choose>
      	
     	<th>${chargelist.charge_date}</th>
     	<th>${chargelist.charge_type}</th>
     	<th>${chargelist.charge_will_amount}</th>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>


</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
