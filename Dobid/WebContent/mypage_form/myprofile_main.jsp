<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	if (session.getAttribute("logincheck") == null) {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/Dobid/login.do');" + "</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="/regist_form/header.jsp"%></header>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Do!bid</title>

<!--<link href="/Dobid/mypage_form/css/bootstrap.css" rel="stylesheet" media="screen" type="text/css">

<link href="/Dobid/mypage_form/css/shop-homepage.css" rel="stylesheet" type="text/css">
<link href="/Dobid/mypage_form/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link href="/Dobid/mypage_form/css/mystyle.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="/Dobid/mypage_form/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="/Dobid/mypage_form/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Dobid/mypage_form/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="/Dobid/mypage_form/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
-->
</head>

<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText"  style="margin-left: 22%; margin-right: auto;">
		<font size="80" color="black">My Page</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
<div>
  <table width="570" height="130" align="center" cellpadding="20" cellspacing="0">
    <tbody align="center">
    
      <tr>
      	<td rowspan="3"><img src="/Dobid/image/people.png"></td>
        <td>${member.member_id } 님</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td> 이름 : ${member.name }</td>
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
	<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>