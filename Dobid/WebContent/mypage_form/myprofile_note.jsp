<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	$(function(){
		$('#receiveMSG').click(function(){
			$.ajax({
				url:'/Dobid/receive.do',
				data:'',
				type:'POST',
				success:function(result){
					$('#printdiv').html(result);	
				}
			});
		});
		$('#sendMSG').click(function(){
			$.ajax({
				url:'/Dobid/send.do',
				data:'',
				type:'POST',
				success:function(result){
					$('#printdiv').html(result);	
				}
			});
		});
		$('#sendMessage').click(function(){
			$.ajax({
				url:'/Dobid/mypage_form/sendMessage.jsp',
				data:'',
				type:'POST',
				success:function(result){
					$('#printdiv').html(result);	
				}
			});
		});
	});

</script>
</head>
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText"  style="margin-left: 17%; margin-right: auto;">
		<font size="80" color="black">쪽지함</font><br>
		</div>
	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="/mypage_form/mypageHeader.jsp"%></header>
	</div>
		<div style="margin-left: 100px">
			<input type="button" name="receive" value="받은쪽지함" id="receiveMSG" class="btn btn-default">
			<input type="button" name="send" value="보낸쪽지함" id="sendMSG" class="btn btn-default">
			<input type="button" name="sendMessage" value="글쓰기" id="sendMessage" class="btn btn-default">
		</div>
		<br>
		<div id="printdiv"></div>		



</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
