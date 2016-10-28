<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Do!bid</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
	$(function(){
		$('#receive').click(function(){
			$.ajax({
				url:'/receive.do',
				data:'',
				type:'POST',
				success:function(result){
					$('#printdiv').html(result);	
				}
			});
		});
		$('#send').click(function(){
			$.ajax({
				url:'/send.do',
				data:'',
				type:'POST',
				success:function(result){
					$('#printdiv').html(result);	
				}
			});
		});
		$('#sendMessage').click(function(){
			$.ajax({
				url:'',
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
		<div class="titleText" style="margin-left: 20px">
		<font size="80" color="black">쪽지함</font><br>
		</div>
		<div>
			<input type="button" name="receive" value="받은쪽지함" id="receive">
			<input type="button" name="send" value="보낸쪽지함" id="send">
			<input type="button" name="sendMessage" value="글쓰기" id="sendMessage">
		</div>
			<br>
		<div id="printdiv"></div>		



</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
