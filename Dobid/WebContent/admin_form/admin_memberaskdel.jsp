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
function update(member_id,update){
	$("#member_id").text(member_id);
	$("#update").text(update);
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
		
		<div class="form-group">
			<form action="/Dobid/admin_memberaskdel.do" method="POST">
				
				<div class="col-sm-7">
					<input type="text" class="form-control"
						name="admin_memberaskdel_selecttext" placeholder="검색어입력">

				</div>
				<button class="button button5 btn-default" id="admin_memberaskdel_select"
					name="admin_memberaskdel_select">검색</button>
			</form>
		</div>
		<table class="table table-bordered">

			<tr>

				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>이메일</th>
				<th>생년월일</th>
				<th>보유금액</th>
				<th>상태</th>
				<th>탈퇴예정일</th>
				<th></th>
			
			</tr>
			<c:forEach items="${adminmemberaskdellist }" var="adminmemberaskdellist">
			<tr class="list">

				<td>${adminmemberaskdellist.member_id}</td>
				<td>${adminmemberaskdellist.name }</td>
				<td>${adminmemberaskdellist.phone}</td>
				<td>${adminmemberaskdellist.email}</td>
				<td>${adminmemberaskdellist.birthday}</td>
				<td>${adminmemberaskdellist.charging_amount}</td>
				<td>${adminmemberaskdellist.withdrawal}</td>
				<td>${adminmemberaskdellist.delete_date}</td>
				<td><button onclick="update('${adminmemberaskdellist.member_id}','update')">복구</button></td>
			</tr>
</c:forEach>
		</table>
	<div class="form-group">
			<div class="col-sm-7">
				<br>
				<c:if test="${page == 1}">이전</c:if>
				<c:if test="${page > 1}">
					<a href="admin_memberdel.do?page=${ page-1 }">이전</a>
				</c:if>

				<c:if test="${page == totalPage }">다음</c:if>
				<c:if test="${page < totalPage }">
					<a href="admin_memberdel.do?page=${ page+1 }">다음</a>
				</c:if>
				<br>
				<br>
				<c:forEach begin="1" end="${totalPage }" var="i">
       [<a href="admin_memberdel.do?page=${ i }">${i }</a>]
    </c:forEach>
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
</html></html>