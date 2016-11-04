<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

</head>
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText"  style="margin-left: 22%; margin-right: auto;">
		<font size="80" color="black">찜목록</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
	<div class="container" style="size: auto;width: 55%;">
		<c:forEach items="${list }" var="basketlist">
		<div class="panel panel-default row">
			<div class="panel-body col-xs-4"><img src="/Dobid${basketlist.main_image_path}" width="80%"  height="80%"> </div>
			<div class="panel-body col-xs-8"><font color="red">${basketlist.hot_check}</font><br><a href="auction_view.do?id=${basketlist.auction_board_num }"><b>${basketlist.title}</b></a><br>최고가격: ${basketlist.highest_price}<br> 종료일:  ${basketlist.end_date} </div>
		</div>
		</c:forEach>
		    <br>
      <c:if test="${page == 1}">이전</c:if>
      <c:if test="${page > 1}">
         <a href="myprofile_basket.do?page=${ page-1 }">이전</a>      
      </c:if>
         
      <c:if test="${page == totalPage }">다음</c:if>
      <c:if test="${page < totalPage }">
         <a href="myprofile_basket.do?page=${ page+1 }">다음</a>      
      </c:if>
    <br><br>
    <c:if test="${totalPage>0}">
    <c:forEach begin="1" end="${totalPage }" var="i">
       [<a href="myprofile_basket.do?page=${ i }">${i }</a>]
    </c:forEach>
    </c:if>

	</div>

</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
