<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<% request.setCharacterEncoding("UTF-8");%>
     <%
   
    if(session.getAttribute("logincheck") == null){
       out.print("<script type='text/javascript'>"+
                               "alert('로그인을 하셔야합니다.');"+
                               "location.replace('/Dobid/login.do');"+
                            "</script>");
    }
        %>
<script>
$(document).ready(function(){ 
	

	
	$('#freeboardSelectAll').on('click', function() {  //자유게시판
    	$(location).attr('href', '/Dobid/board_freedom_write.do');

	});
	

	$("#pageback").click(function(){ //돌아가기

		window.history.back();

	});
	



});

</script>


<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판 쓰기 뷰</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Dobid/admin_form/css/admin.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





<script>
	function getThumbnailPrivew(html, $target) {
		if (html.files && html.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$target.css('display', '');
				//$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
				$target.html('<img src="' + e.target.result
						+ '" border="0" alt="" width="50%" />');
			}
			reader.readAsDataURL(html.files[0]);
		}
	}
	
</script>

</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<body><br>
<br>
<br>
<br>


	<center>

		<p style="margin-left: -30%">
		<input type="button" class="button button5 btn-default active" value="자유게시판" id="freebtn">
		<input type="button" class="button button5 btn-default active" value="공지사항" id="noticebtn"> 
		</p>
		<hr>
		<form class="form-horizontal" action="/Dobid/board_freedom_write_input.do" method="POST">
		
			<div class="form-group">
				<label for="inputTitle" class="col-sm-4 control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="free_title" placeholder="제목" name="free_title">
				</div>
			</div>
			<div class="form-group">
				<label for="inputWriter" class="col-sm-4 control-label">작성자</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="free_whiter_user"
						placeholder="<%=request.getSession().getAttribute("logincheck") %>" name="free_whiter_user" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputTextarea" class="col-sm-4 control-label">내용</label>
				<div class="col-sm-5">
					<textarea class="form-control " id="free_contents"
						placeholder="내용을 입력하세요" style="height: 200px" name="free_contents"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="inputFile" class="col-sm-4 control-label">첨부파일</label>

				<div class="filebox col-sm-5">
					<label for="free_file">첨부파일</label> <input type="file"
						name="free_file" id="free_file" accept="image/*" capture="camera"
						onchange="getThumbnailPrivew(this,$('#free_img'))" /> <br> <br>
					<div id="free_img"
						style="width: 100%; max-width: 100%; display: none;"></div>
				</div>
			</div>




		<div class="col-sm-offset-4 ">
			<input type="submit" class="button button5 btn-default" value="글쓰기">
			<button class="button button5 btn-default" id="pageback">취소</button>
			<button class="button button5 btn-default" id="freeboardSelectAll">목록</button>
		</div>
	</form>
		
		
		

	</center>
	
	
		
	<Br><br><Br>
	<Br><br><Br>
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>


</html>