<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<% request.setCharacterEncoding("UTF-8");%>
<%
   if (session.getAttribute("adminlogincheck") == null) {
      out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
            + "location.replace('/Dobid/admin_login.do');" + "</script>");
   }
%>

<script type="text/javascript">
$(document).ready(function(){ 


	$("#pageback").click(function(){ //돌아가기

		window.history.back();

	});
	
	$("#check").click(function() {
		
		if($("#notice_title").val().length < 1){
			
			alert("제목을 입력해주세요");
			return false;
			}else if($("#notice_contents").val().length < 1){
				
				alert("내용을 입력해주세요.");
				return false;
			}else{
				alert("글쓰기 완료");
			}
		});


});

</script>



<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 글쓰기</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Dobid/admin_form/css/admin.css">
	<script src="/Dobid/admin_form/js/admin_upload.js" type="text/javascript"></script>
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
<header><%@include file="../admin_form/admin_header.jsp"%></header>
<body><br>
<br>
<br>
<br>


	<center>
<H3>공지사항 글쓰기</H3>
	
		</p>
		<hr>
		<form class="form-horizontal" action="/Dobid/admin_noticeboard_write_input.do" method="POST" enctype="multipart/form-data">
		
			<div class="form-group">
				<label for="inputTitle" class="col-sm-4 control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="title" placeholder="제목" name="title">
				</div>
			</div>
			<div class="form-group">
				<label for="inputWriter" class="col-sm-4 control-label">작성자</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="notice_whiter_user"
						placeholder="<%=request.getSession().getAttribute("logincheck") %>" name="free_whiter_user" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputTextarea" class="col-sm-4 control-label">내용</label>
				<div class="col-sm-5">
					<textarea class="form-control " id="notice_contents"
						placeholder="내용을 입력하세요" style="height: 200px" name="contents"></textarea>
				</div>
			</div>
			<div class="form-group">
			<label for="inputFile" class="col-sm-4 control-label">첨부파일</label>


			<div class="filebox col-sm-5">
				<label for="cma_file" class="text-center">첨부파일</label>
				<input type="file" name="image_path" id="cma_file" accept="image/*"
					capture="camera" onchange="getThumbnailPrivew(this,$('#cma_image'))" /> <br> <br>
				<div align="center" style="text-decoration: underline">
					* 최대 300MB 용량까지 업로드 가능<br>gif, jpg, png 이미지 파일만 업로드 가능합니다
				</div>
				<br>
				<div id="cma_image" style="width: 100%; max-width: 100%; display: none;"></div>
				<br>

			</div>
		</div>			


		<div class="col-sm-offset-1 ">
			<input type="submit" class="button button5 btn-default" id="check" value="글쓰기">
			<button class="button button5 btn-default" id="pageback">취소</button>
		</div>
	</form>
		
		
		

	</center>
	
	
		
	<Br><br><Br>
	<Br><br><Br>

			<footer> <%@include file="/regist_form/footer.jsp"%></footer>
		</footer>
</body>


</html>