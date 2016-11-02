<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date"/>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
$(function(){
	var sysdate
	$("#auctionEnd").click(function(){
		var enddate="${auctionlist.end_date}".replace(/-/g, "");
		var nowdate=now.replace(/-/g, "");
		
		if(nowdate-enddate>0){
			$.ajax({
				url:'/Dobid/receive.do',
				data:{auction_board_num:"${auctionlist.auction_board_num}" },
				type:'POST',
				success: alert("경매가 종료되었습니다.")
			});
		}else{
			alert("종료시간이 지나야 가능합니다.");
		}
			
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
		<font size="80" color="black">경매내역</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="/mypage_form/mypageHeader.jsp"%></header>
	</div>
	<div class="container">
		<c:forEach items="${list }" var="auctionlist">
		<div class="panel panel-default row">
			<div class="panel-body col-xs-4"><img src="${auctionlist.main_image_path}" width="80%"  height="80%"> </div>
			<div class="panel-body col-xs-6"><font color="red">${auctionlist.hot_check}</font><br>${auctionlist.title}<br>입찰가격 : ${auctionlist.bid_price_amount }원<br>종료일:  ${auctionlist.end_date}</div>
			<div class="panel-body col-xs-2">
				<c:if test="${auctionlist.end_date}"></c:if>
				
				<button id="auctionEnd" value="경매종료"></button>
			</div>
		</div>
		</c:forEach>
	</div>

</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
