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
<% request.setCharacterEncoding("UTF-8");%>
<%
   if (session.getAttribute("adminlogincheck") == null) {
      out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
            + "location.replace('/Dobid/admin_login.do');" + "</script>");
   }
%>
<script type="text/javascript">
	$(document).ready(function() {


		$("#close").click(function() {
			$("#popup").hide();
		});

		$(".list").click(function() {
			console.log($(this).children().text());
		
			$("#popup").show();
			
			$("#admin_report_view_title").val($(this).children().eq(0).text());
			$("#admin_report_view_member_id").val($(this).children().eq(1).text());
			$("#admin_report_view_contents").val($(this).children().eq(2).text());
			$("#admin_report_view_image_path").val($(this).children().eq(3).text());
			$("#admin_report_view_upload_date").val($(this).children().eq(4).text());


			
		});
		

		
		
	});
</script>

<title>신고하기보기</title>


</head>

<body>
<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">
		<h3>신고하기보기</h3>
		<hr>
		
		<div class="form-group col-sm-8" style="float: right;">
			<form action="/Dobid/admin_report.do" method="POST">
				
				<div class="col-sm-10">
					<input type="text" class="form-control"
						name="admin_report_selecttext" placeholder="검색어입력">

				</div>
				<button class="button button5 btn-default" id="admin_report_select"
					name="admin_ono_select">검색</button>
			</form>
		</div>
		<table class="table table-bordered" style="table-layout:fixed">

			<tr>

				<th style="width: 20%; text-align: center;">제목</th>
				<th style="width: 15%; text-align: center;">작성자</th>
				<th style="width: 40; text-align: center;">내용</th>
				<th style="width: 10%; text-align: center;">이미지</th>
				<th style="width: 15%; text-align: center;">시간</th>
			
			</tr>
			<c:forEach items="${adminreportlist }" var="adminreportlist">
			<tr class="list">

				<td style="text-overflow:ellipsis; overflow:hidden;">${adminreportlist.title }</td>
				<td style="text-align:center;">${adminreportlist.member_id}</td>
				<td style="text-overflow:ellipsis; overflow:hidden;">${adminreportlist.contents}</td>
				<td style="text-overflow:ellipsis; overflow:hidden;">${adminreportlist.image_path}</td>
				<td style="text-align:center;">${adminreportlist.upload_date}</td>
				
		
			</tr>
</c:forEach>

		</table>

		<div class="form-group">
			<div class="col-sm-7">
			<center>
				<br>
				<c:if test="${page == 1}">이전</c:if>
				<c:if test="${page > 1}">
					<a href="admin_report.do?page=${ page-1 }&admin_report_selecttext=${select}">이전</a>
				</c:if>

				<c:if test="${page == totalPage }">다음</c:if>
				<c:if test="${page < totalPage }">
					<a href="admin_report.do?page=${ page+1 }&admin_report_selecttext=${select}">다음</a>
				</c:if>
				<br>
				<br><c:if test="${totalPage >1}">
				<c:forEach begin="1" end="${totalPage }&admin_report_selecttext=${select}" var="i">
    		   [<a href="admin_report.do?page=${ i }">${i }</a>]
			    </c:forEach>
			    </c:if>
			    </center>
			</div>
		</div>
	</div>

<div id="popup" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width:700px; height: 680px; margin-left: 30%; margin-top: 5%; border: 1px solid black;">
			<form class="form-horizontal" action="/Dobid/admin_report.do" method="POST">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input type="text" class="form-control" name="admin_report_view_title"
							id="admin_report_view_title" style="margin-top: 20px;" value="asd"
							 readOnly>
							
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-2 col-sm-8">
						<input type="text" class="form-control"
							id="admin_report_view_member_id" name="admin_report_view_member_id"
							 readOnly>
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-2 col-sm-8">
						<input type="text" class="form-control"
							id="admin_report_view_categori" name="admin_report_view_categori"
							 readOnly>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input type="image" src="../image/dobid.png"
							id="admin_report_view_image_path" name="admin_report_view_image_path"
							 readOnly>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<textarea class="form-control " id="admin_report_view_contents"
							name="admin_ono_view_contents"
							style="height: 350px"
							readOnly></textarea>
					</div>
				</div>
				
			
		
			
			<div class="col-sm-offset-4 col-sm-3">
				<button class="button button5 btn-default" >삭제</button>
			
				<input type="hidden" name="del" value="del">
				<input type="hidden" name="admin_report_view_upload_date" id="admin_report_view_upload_date">
				
					<input type="button" class="button button5 btn-default" id="close" style="float: right;" value="취소">
			
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