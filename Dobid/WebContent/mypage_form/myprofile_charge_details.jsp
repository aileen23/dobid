<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<div class="titleText" style="margin-left: 20px">
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
     	<th>${chargelist.charge_type}</th>
     	<th>${chargelist.charge_time}</th>
     	<th>${chargelist.charge_title}</th>
     	<th>${chargelist.charge_price}</th>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>


</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
