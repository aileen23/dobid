<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">

<!-- Custom CSS -->
<link href="./css/shop-homepage.css" rel="stylesheet">
<link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<!-- Script -->

<script type="text/javascript" src="./js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>

</head>

<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText" style="margin-left: 20px">
		<font size="80" color="black">My Page</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
<div>
  <table width="400" height="130" align="center" cellpadding="20" cellspacing="0">
    <tbody align="center">
      <tr>
        <td>&nbsp;</td>
        <td> 연락처 </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td> ${member.name } 님</td>
        <td> 이메일주소 : </td>
        <td> ${member.email }</td>
      </tr>
      <tr>
        <td> 별명 : ${member.nickname }</td>
        <td> 휴대전화 : </td>
        <td> ${member.phone }</td>
      </tr>
    </tbody>
  </table>
  &nbsp;</div>
  
</body>
</html>