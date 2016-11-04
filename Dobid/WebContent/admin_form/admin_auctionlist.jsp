<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../admin_form/admin_header.jsp"%></header>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/Dobid/admin_form/css/admin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%
   if (session.getAttribute("adminlogincheck") == null) {
      out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
            + "location.replace('/Dobid/admin_login.do');" + "</script>");
   }
%>


<script type="text/javascript">

	$(document).ready(
			function() {

				$("#close").click(function() {
					$("#popup").hide();
				});

				$(".list").click(
						function() {
							console.log($(this).children().text());

							$("#popup").show();
	

							$("#admin_auction_view_num").val(
									$(this).children().eq(0).text());
							$("#admin_auction_title").val(
									$(this).children().eq(1).text());
							$("#admin_auction_view_content").val(
									$(this).children().eq(2).text());
							$("#admin_auction_view_userid").val(
									$(this).children().eq(3).text());
							$("#admin_auction_catalogue").val(
									$(this).children().eq(4).text());
							$("#admin_auction_hot_check").val(
									$(this).children().eq(5).text());
							$("#admin_auction_bid_check").val(
									$(this).children().eq(6).text());
							$("#admin_auction_view_img").val(
									$(this).children().eq(7).text());
							$("#admin_auction_bid_check").val(
									$(this).children().eq(8).text());
							
							var image = "/Dobid"+$(this).children().eq(7).text();
							$("#image_path").attr("src", image);

						});
				
			
			});//ready
</script>

<title>관리자 경매리스트</title>


</head>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">
		<h3>경매물품관리${test }</h3>
		<hr>

		<div class="form-group">
			<form action="/Dobid/admin_auctionlist.do" method="POST">
				<div class="col-sm-2 col-sm-offset-1">
					<select class="form-control" name="catalogue">
						<option value="경매">경매</option>
						<option value="핫경매">핫경매</option>
					</select>
				</div>
				<div class="col-sm-7">
					<input type="text" class="form-control"
						id="admin_auction_selecttext" name="admin_auction_selecttext"
						placeholder="검색어입력">

				</div>
				<button class="button button5 btn-default" id="admin_auction_select">검색</button>
			</form>
		</div>

		<table class="table table-bordered" style="margin-top: 50px; table-layout: fixed;">

			<tr>
				<th style="text-align:center; width: 8%">글번호</th>
				<th style="text-align:center; width: 10%">제목</th>
				<th style="text-align:center; width: 23%">내용</th>
				<th style="text-align:center; width: 10%">판매자아이디</th>
				<th style="text-align:center; width: 8%">구분</th>
				<th style="text-align:center; width: 8%">유형</th>
				<th style="text-align:center; width: 8%">진행여부</th>
				<th style="text-align:center; width: 10%">이미지</th>
				<th style="text-align:center; width: 15%">등록시간</th>
			</tr>
			<c:forEach items="${adminauctionlist }" var="adminauctionlist">
				<tr class="list">

					<td style="text-align:center;">${adminauctionlist.auction_board_num }</td>
					<td style="text-overflow:ellipsis; overflow:hidden;">${adminauctionlist.title }</td>
					<td style="text-overflow:ellipsis; overflow:hidden;">${adminauctionlist.contents }</td>
					<td style="text-align:center;">${adminauctionlist.seller_id }</td>
					<td style="text-align:center;">${adminauctionlist.categori }</td>
					<td style="text-align:center;">${adminauctionlist.hot_check }</td>
					<td style="text-align:center;">${adminauctionlist.bid_check }</td>
					<td style="text-overflow:ellipsis; overflow:hidden">${adminauctionlist.main_image_path }</td>
					<td style="text-align:center;">${adminauctionlist.regist_date }</td>






				</tr>
			</c:forEach>

		</table>
		<div class="form-group">
			<div class="col-sm-7">
				<br>
				<c:if test="${page == 1}">이전</c:if>
				<c:if test="${page > 1}">
					<a
						href="admin_auctionlist.do?page=${ page-1 }&catalogue=${catalogue}&admin_auction_selecttext=${select}">이전</a>
				</c:if>

				<c:if test="${page == totalPage }">다음</c:if>
				<c:if test="${page < totalPage }">
					<a
						href="admin_auctionlist.do?page=${ page+1 }&catalogue=${catalogue}&admin_auction_selecttext=${select}">다음</a>
				</c:if>
				<br> <br>

				<c:if test="${totalPage >1}">
					<c:forEach begin="1" end="${totalPage }" var="i">
       [<a
							href="admin_auctionlist.do?page=${ i }&catalogue=${catalogue}&admin_auction_selecttext=${select}">${i }</a>]
    </c:forEach>

				</c:if>
			</div>
		</div>
	</div>









	<div id="popup" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 700px; height: 660px; margin-left: 30%; margin-top: 5%; border: 1px solid black;overflow:auto; overflow-x:hidden;">
			<form class="form-horizontal" action="/Dobid/admin_auctionlist.do"
				method="POST">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input type="text" class="form-control" name="admin_auction_title"
							id="admin_auction_title" style="margin-top: 20px;" readOnly>

					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-2 col-sm-8">
						<input type="text" class="form-control"
							id="admin_auction_view_userid" name="admin_auction_view_userid"
							readOnly>
					</div>
				</div>

				<div class="form-group">

					<div class="col-sm-offset-2 col-sm-8">
						<input type="text" class="form-control"
							id="admin_auction_bid_check" name="admin_auction_bid_check"
							readOnly>
					</div>
				</div>

				<div class="form-group">

					<div class="col-sm-offset-2 col-sm-8">
						<input type="text" class="form-control"
							id="admin_auction_catalogue" name="admin_auction_catalogue"
							readOnly>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<img alt="이미지설명" id="image_path" name="admin_auction_view_img"  width="100%">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<textarea class="form-control " id="admin_auction_view_content"
							name="admin_auction_view_content" style="height: 350px" readOnly></textarea>
					</div>
				</div>


				<div class="col-sm-offset-4 col-sm-3">
					<button class="button button5 btn-default">삭제</button>

					<input type="hidden" name="del" value="del"> <input
						type="hidden" id="admin_auction_view_num"
						name="admin_auction_view_num"> <input type="hidden"
						id="admin_auction_hot_check" name="admin_auction_hot_check">
					<input type="button" class="button button5 btn-default" id="close" style="float: right;"  value="취소">



				</div>
			</form>

		</div>
	</div>




	<div class="container">

		<hr>

		<!-- Footer -->
		<div class="container">

			<hr>

			<!-- Footer -->
			<footer> <%@include file="/regist_form/footer.jsp"%></footer>

		</div>
	</div>


</body>
</html>