<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
	var id = getQuerystring(id);

    $('#freebtn').on('click', function() {  //자유게시판
    	var free=$('input[name=free]').val();
    	$(location).attr('href', '/Dobid/board_list.do?id=2');

	});
    $('#noticebtn').on('click', function() {  //공지사항
    	var notice=$('input[name=notice]').val();
    	$(location).attr('href', '/Dobid/board_list.do?id=1');
	});

    $('#boardSelectAll').on('click', function() {  //전체목록보기버튼
    	$(location).attr('href', '/Dobid/board_list.do?id='${id});
	});
 




});
</script>
<script type="text/javascript">
function getQuerystring(paramName){

	var _tempUrl = window.location.search.substring(1); //url에서 처음부터 '?'까지 삭제
	//var _tempArray = _tempUrl.split('&'); // '&'을 기준으로 분리하기
	console.log(_tempUrl);
	return _tempUrl.split("=")[1];
}
</script>





<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 게시물보기뷰</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
		<p style="margin-left: -30%">
		<input type="button" class="button button5 btn-default active" value="자유게시판" id="freebtn" name="free">
		<input type="button" class="button button5 btn-default active" value="공지사항" id="noticebtn" name="notice">
		</p>
		<hr>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputTitle" class="col-sm-4 control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="view_title"
						placeholder="${viewobject.title }" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputWriter" class="col-sm-4 control-label">작성자</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="view_write_user"
						placeholder="${viewobject.member_id }" disabled>
				</div>
			</div>
			
			<div class="form-group">
			    <label for="inputFile" class="col-sm-4 control-label" >첨부파일</label>
			    <div class="filebox col-sm-5">
			        <img alt="이미지설명" src="../image/logo.png"  width="100%">
			    </div>
			</div>
			<div class="form-group">
				<label for="inputTextarea" class="col-sm-4 control-label" disabled>내용</label>
				<div class="col-sm-5">
					<textarea class="form-control " id="view_contents" 
						placeholder="${viewobject.contents }" style="height: 200px" disabled></textarea>
				</div>
			</div>

		</form>

		<div class="col-sm-offset-6 col-sm-5">
			<button class="button button5 btn-default" id="boardSelectAll">목록</button>
		</div>

	</center>
	
	
	
		
	<Br><br><Br>
	<Br><br><Br>
	<%@include file="/reply_form/replyclient.jsp" %>
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>
</html>