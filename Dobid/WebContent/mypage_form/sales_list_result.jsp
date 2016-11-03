<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" id="listdiv">
		<c:forEach items="${list }" var="saleslist">
		<div class="panel panel-default row">
			<div class="panel-body col-xs-4"><img src="${saleslist.main_image_path}" width="80%"  height="80%"> </div>
			<div class="panel-body col-xs-6"><font color="red">${saleslist.hot_check}</font><br>${saleslist.title}<br>최고가격: ${saleslist.highest_price}<br> 종료일:  ${saleslist.end_date} </div>
			<div class="panel-body col-xs-2">
			<c:if test="${saleslist.bid_check=='경매중'}">
				<button onclick="auctionpost('${saleslist.end_date}','${saleslist.auction_board_num}')">경매종료</button>
			</c:if>
			</div>
		</div>
		</c:forEach>
	</div>
</body>
</html>