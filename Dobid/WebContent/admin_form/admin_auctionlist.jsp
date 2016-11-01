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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

						});

			});
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
		<h3>경매물품관리</h3>
		<hr>

		<div class="form-group">
			<form action="/Dobid/admin_auctionlist.do" method="POST">
				<div class="col-sm-2 col-sm-offset-1">
					<select class="form-control" name="catalogue">
						<option value="auction">경매</option>
						<option value="hotauction">핫경매</option>
						<option value="groupauction">공동구매</option>
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

		<table class="table table-bordered" style="margin-top: 50px">

			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>판매자아이디</th>
				<th>구분</th>
				<th>유형</th>
				<th>진행여부</th>
				<th>등록시간</th>
			</tr>
			<c:forEach items="${adminauctionlist }" var="adminauctionlist">
				<tr class="list">

					<td>${adminauctionlist.auction_board_num }</td>
					<td>${adminauctionlist.title }</td>
					<td>${adminauctionlist.contents }</td>
					<td>${adminauctionlist.seller_id }</td>
					<td>${adminauctionlist.categori }</td>
					<td>${adminauctionlist.hot_check }</td>
					<td>${adminauctionlist.bid_check }</td>
					<td>${adminauctionlist.regist_date }</td>






				</tr>
			</c:forEach>

		</table>
		<div class="form-group">
			<div class="col-sm-7">
				<br>
				<c:if test="${page == 1}">이전</c:if>
				<c:if test="${page > 1}">
					<a href="admin_auctionlist.do?page=${ page-1 }">이전</a>
				</c:if>

				<c:if test="${page == totalPage }">다음</c:if>
				<c:if test="${page < totalPage }">
					<a href="admin_auctionlist.do?page=${ page+1 }">다음</a>
				</c:if>
				<br> <br>


				<c:forEach begin="0" end="${totalPage }" var="i">
       [<a href="admin_board.do?page=${ i }">${i }</a>]
    </c:forEach>


			</div>
		</div>
	</div>









	<div id="popup" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 60%; height: 55%; margin-left: 20%; margin-top: 10%; border: 1px solid black;">
			<form class="form-horizontal" action="/Dobid/admin_auctionlist.do"
				method="POST">
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control" name="admin_auction_title"
							id="admin_auction_title" style="margin-top: 20px;" readOnly>

					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_auction_view_userid" name="admin_auction_view_userid"
							readOnly>
					</div>
				</div>

				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_auction_bid_check" name="admin_auction_bid_check"
							readOnly>
					</div>
				</div>

				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_auction_catalogue" name="admin_auction_catalogue"
							readOnly>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<input type="image" src="../image/dobid.png"
							id="admin_auction_view_img" name="admin_auction_view_img"
							readOnly>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<textarea class="form-control " id="admin_auction_view_content"
							name="admin_auction_view_content" style="height: 200px" readOnly></textarea>
					</div>
				</div>


				<div class="col-sm-offset-3 col-sm-5">
					<button class="button button5 btn-default">삭제</button>

					<input type="hidden" name="del" value="del"> <input
						type="hidden" id="admin_auction_view_num"
						name="admin_auction_view_num"> <input type="hidden"
						id="admin_auction_hot_check" name="admin_auction_hot_check">




				</div>
			</form>

			<button class="button button5 btn-default" id="close">취소</button>
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