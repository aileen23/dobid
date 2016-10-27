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
<% request.setCharacterEncoding("UTF-8");%>
<script type="text/javascript">
	$(document).ready(function() {


		$("#close").click(function() {
			$("#popup").hide();
		});

		$(".list").click(function() {
			console.log($(this).children().text());
		
			$("#popup").show();
			
			$("#admin_ono_view_title").val($(this).children().eq(0).text());
			$("#admin_omo_view_member_id").val($(this).children().eq(1).text());
			$("#admin_ono_view_categori").val($(this).children().eq(2).text());
			$("#admin_ono_view_contents").val($(this).children().eq(3).text());
			$("#admin_ono_view_upload_date").val($(this).children().eq(4).text());
			$("#admin_ono_view_answer_contents").val($(this).children().eq(5).text());

			
		});
		
	
		
		
	});
</script>

<title>1대1문의보기</title>


</head>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>
<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">
		<h3>1대1문의보기</h3>
		<hr>
		
		<div class="form-group">
			<form action="/Dobid/admin_ono.do" method="POST">
				<div class="col-sm-2 col-sm-offset-1">
					<select class="form-control" name="catalogue">
						<option value="buy">구매관련</option>
						<option value="sell">판매관련</option>
						<option value="guide">이용안내</option>
						<option value="fraud">사기</option>
						<option value="etc">기타</option>
					</select>
				</div>
				<div class="col-sm-7">
					<input type="text" class="form-control"
						name="admin_ono_selecttext" placeholder="검색어입력">

				</div>
				<button class="button button5 btn-default" id="admin_ono_select"
					name="admin_ono_select">검색</button>
			</form>
		</div>
		<table class="table table-bordered">

			<tr>

				<th>제목</th>
				<th>작성자</th>
				<th>구분</th>
				<th>내용</th>
				<th>시간</th>
				<th>답변</th>
			</tr>
			<c:forEach items="${adminonolist }" var="adminonolist">
			<tr class="list">
			
				<td>${adminonolist.title }</td>
				<td>${adminonolist.member_id}</td>
				<td>${adminonolist.categori}</td>
				<td>${adminonolist.contents}</td>
				<td>${adminonolist.upload_date}</td>
				<td>${adminonolist.answer_contents}</td>
			</tr>
</c:forEach>

		</table>

	</div>
	

	
<div id="popup" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 60%; height: 55%; margin-left: 20%; margin-top: 10%; border: 1px solid black;">
			<form class="form-horizontal" action="/Dobid/admin_ono.do" method="POST">
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control" name="admin_ono_view_title"
							id="admin_ono_view_title" style="margin-top: 20px;" value="asd"
							 readOnly>
							
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_omo_view_member_id" name="admin_omo_view_member_id"
							 readOnly>
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-3 col-sm-5">
						<input type="text" class="form-control"
							id="admin_ono_view_categori" name="admin_ono_view_categori"
							 readOnly>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<input type="image" src="../image/dobid.png"
							id="admin_ono_view_img" name="admin_ono_view_img"
							 readOnly>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<textarea class="form-control " id="admin_ono_view_contents"
							name="admin_ono_view_contents"
							style="height: 200px"
							readOnly></textarea>
					</div>
				</div>
				
			
		
			
			<div class="col-sm-offset-3 col-sm-5">
				<button class="button button5 btn-default">삭제</button>
			
				<input type="hidden" name="del" value="del">
				<input type="hidden" name="admin_ono_view_upload_date" id="admin_ono_view_upload_date">
				
			
			
			</div>
			</form>
			<button class="button button5 btn-default" id="close">취소</button>
			<form action="/Dobid/admin_ono.do" method="POST">
				<button class="button button5 btn-default">답장</button>
				
				<input type="hidden" name="send" value="send">
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-5">
						<textarea class="form-control " id="admin_ono_view_answer_contents"
							name="admin_ono_view_answer_contents"
							style="height: 200px"></textarea>
					</div>
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
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>