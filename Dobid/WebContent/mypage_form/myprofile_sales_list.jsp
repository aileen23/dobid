<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date"/>
<!--<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>-->
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
$(function(){
	$("#auctionEnd").click(function(){
		//넘어온 list는 List배열입니다. 그렇기때문에 get으로 나누어서 받으셔야합니다. 그런데 클릭한 것이 몇번째인지 알아야 해당 정보를 넘길수 있으니 
		// 클릭한 것이 어떠한 건지 알수 있는 방법을 찾아보세요.
		var enddate="${list.get(0).end_date}".replace(/-/g, "");
		var nowdate="${now}".replace(/-/g, "");
		
		console.log(enddate);
		console.log(nowdate);
		//기본적으로는 end,nowdate가 문자열로 취급할겁니다. 그렇기때문에 아래와 같이 연산은 불가능 합니다. 다른 방법을 찾아보세요...
		if(nowdate-enddate>0){
			$.ajax({
				url:'/auctionend.do',
				data:{auction_board_num:"${auctionlist.auction_board_num}" }, //이 부분도 auctionlist는 아래에 jstl 배열에서 선언된 명칭입니다. 그 밖인 이곳에는 request에 list라는 키값으로 해셔야합니다.
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
		<font size="80" color="black">판매목록</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
	<div class="container">
		<c:forEach items="${list }" var="saleslist">
		<div class="panel panel-default row">
			<div class="panel-body col-xs-4"><img src="${saleslist.main_image_path}" width="80%"  height="80%"> </div>
			<div class="panel-body col-xs-6"><font color="red">${saleslist.hot_check}</font><br>${saleslist.title}<br>최고가격: ${saleslist.highest_price}<br> 종료일:  ${saleslist.end_date} </div>
			<div class="panel-body col-xs-2">
				<button  id="auctionEnd">경매종료</button>
			</div>
		</div>
		</c:forEach>
		

	</div>

</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
