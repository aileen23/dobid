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
	request.setCharacterEncoding("UTF-8");
%>
<%
   if (session.getAttribute("adminlogincheck") == null) {
      out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
            + "location.replace('/Dobid/admin_login.do');" + "</script>");
   }
%>


<script type="text/javascript">
	function bokgu(id) {
		var member_id = id;

		$.ajax({
			url : 'admin_memberaskdel.do',
			data : {
				member_id : member_id,
				update : 'update'
			},
			type : 'POST',
			success : function() {
				alert("탈퇴를 취소 처리하였습니다.")
				location.reload(true)
			}
		});
	}
</script>
<title>탈퇴요청관리</title>


</head>

<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container">
		<h3>탈퇴요청관리</h3>
		<hr>

		<div class="form-group col-sm-5" style="float: right;">
			<form action="/Dobid/admin_memberaskdel.do" method="POST">

				<div class="col-sm-10">
					<input type="text" class="form-control"
						name="admin_memberaskdel_selecttext" placeholder="검색어입력">

				</div>
				<button class="button button5 btn-default"
					id="admin_memberaskdel_select" name="admin_memberaskdel_select">검색</button>
			</form>
		</div>
		<table class="table table-bordered">

			<tr>

				<th style="text-align: center;">아이디</th>
				<th style="text-align: center;">이름</th>
				<th style="text-align: center;">휴대폰</th>
				<th style="text-align: center;">이메일</th>
				<th style="text-align: center;">생년월일</th>
				<th style="text-align: center;">보유금액</th>
				<th style="text-align: center;">상태</th>
				<th style="text-align: center;">탈퇴예정일</th>
				<th style="text-align: center;">복구</th>

			</tr>
			<c:forEach items="${adminmemberaskdellist }"
				var="adminmemberaskdellist">
				<tr class="list">

					<td style="text-align: center;">${adminmemberaskdellist.member_id}</td>
					<td style="text-align: center;">${adminmemberaskdellist.name }</td>
					<td style="text-align: center;">${adminmemberaskdellist.phone}</td>
					<td style="text-align: center;">${adminmemberaskdellist.email}</td>
					<td style="text-align: center;">${adminmemberaskdellist.birthday}</td>
					<td style="text-align: center;">${adminmemberaskdellist.charging_amount}</td>
					<td style="text-align: center;">${adminmemberaskdellist.withdrawal}</td>
					<td style="text-align: center;">${adminmemberaskdellist.delete_date}</td>
					<td style="text-align: center;"><button
							onclick="bokgu('${adminmemberaskdellist.member_id}')">복구</button></td>
				</tr>
			</c:forEach>
		</table>
		<div class="form-group">
			<div>
			<center>
				<br>
				<c:if test="${page == 1}">이전</c:if>
				<c:if test="${page > 1}">
					<a
						href="admin_memberdel.do?page=${ page-1 }&admin_memberaskdel_selecttext=${select}">이전</a>
				</c:if>

				<c:if test="${page == totalPage }">다음</c:if>
				<c:if test="${page < totalPage }">
					<a
						href="admin_memberdel.do?page=${ page+1 }&admin_memberaskdel_selecttext=${select}">다음</a>
				</c:if>
				<br> <br>
				<c:if test="${totalPage >1}">
				<c:forEach begin="1" end="${totalPage }" var="i">
       			[<a href="admin_memberdel.do?page=${ i }&admin_memberaskdel_selecttext=${select}">${i }</a>]
    			</c:forEach>
				</c:if>
				</center>
			</div>
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
</html>