<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
    $('#noticeboardSelectAll').on('click', function() {  //공지사항전체목록보기버튼
    	$(location).attr('href', '/Dobid/noticeboard_list.do');
	});
 




});
</script>






<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 게시물보기뷰</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Dobid/admin_form/css/admin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<body><br>
<br>
<br>
<br>

	<center>
<h3>공지사항 상세보기</h3>
		<hr>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputTitle" class="col-sm-4 control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="view_title"
						placeholder="${noticeobject.title }" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputWriter" class="col-sm-4 control-label">작성자</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="view_write_user"
						placeholder="${noticeobject.nickname }" disabled>
				</div>
			</div>
			
			<div class="form-group">
			    <label for="inputFile" class="col-sm-4 control-label" >첨부파일</label>
			    <div class="filebox col-sm-5">
  					<div id="slider">
  					
  					

						<c:set var="image_path1" value="${noticeobject.image_path }"/>
						<c:set var="image_path2" value="${fn:split(image_path1,'@')}"/>
						<c:set var="image_path3" value="${fn:length(image_path2)-1}"/>
  					<c:forEach  begin="1" end="image_path3" var="i" items="image_path2">
  						
  						<img src="/Dobid"+${i} }>
  						
  					</c:forEach>
				</div>
			    </div>
			</div>
			<div class="form-group">
				<label for="inputTextarea" class="col-sm-4 control-label" disabled>내용</label>
				<div class="col-sm-5">
					<textarea class="form-control " id="view_contents" 
						placeholder="${noticeobject.contents }" style="height: 200px" disabled></textarea>
				</div>
			</div>

		</form>

		<div class="col-sm-offset-6 col-sm-5">
			<button class="button button5 btn-default" id="noticeboardSelectAll">목록</button>
		</div>

	</center>
	
	
	
		
	<Br><br>
	<%@include file="/reply_form/reply_notice.jsp" %>
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>
</html>