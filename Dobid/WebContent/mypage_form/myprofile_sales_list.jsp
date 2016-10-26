<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<div class="container">
		<h2>찜목록</h2> <br>
		
		<c:forEach items="${list }" var="basketlist">
		<div class="panel panel-default row">
			<div class="panel-body col-xs-4"><img src="{${basketlist.main_image_path}" width="80%"  height="80%""> </div>
			<div class="panel-body col-xs-8">${basketlist.title}<br>최고가격: ${basketlist.highest_price}<br> 종료일  ${basketlist.end_date}<br>${basketlist.hot_check} </div>
		</div>
		</c:forEach>
		

	</div>

</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
