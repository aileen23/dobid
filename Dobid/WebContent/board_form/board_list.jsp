<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>


$(document).ready(function(){

    $("freeboard").hide();
    $("noticeboard").show();

    var id = getQuerystring(id);
    if(id == 1){
    	$("freeboard").show();
	    $("noticeboard").hide();
    }else if(id == 2){
    	 $("freeboard").hide();
    	    $("noticeboard").show();
    }else {
    	 $("freeboard").hide();
 	    $("noticeboard").show();
    	
    }
    
    $("#noticebtn").click(function(){
        $("freeboard").hide();
        $("noticeboard").show();
    });
    $("#freebtn").click(function(){
    	  $("noticeboard").hide();
          $("freeboard").show();
    });
    
    $('#noticeboardSelectAll').on('click', function() { //공지사항 목록버튼
    	$(location).attr('href', '../board_form/board_list.jsp?id=1');
	});
    
    $('#freeboardSelectAll').on('click', function() {  //자유게시판 목록버튼
    	$(location).attr('href', '../board_form/board_list.jsp?id=2');

	});
    $('#freeWrite').on('click', function() { //글쓰기 버튼
    	$(location).attr('href', '../board_form/board_freedom_write.jsp');

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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>각 게시판 리스트</title>


</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<!-- board_list.jsp 자유게시판과 공지사항을 탭으로구분하여 보여줌 -->
<body>

	<div class="container">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
		<input type="button" class="button button5 btn-default active" value="공지사항" id="noticebtn"> 
		<input type="button" class="button button5 btn-default active" value="자유게시판" id="freebtn">
		<hr>
<Br><br>
<Br>
<noticeboard id="noticeboard">
<h3>공지사항</h3>
<br>


		<table class="table table-bordered">

			<tr>
				<th>글번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>조회수</th>
				<th>등록일자</th>
			</tr>
			<c:forEach items="${noticelist }" var="noticelist">

				<tr>
					<td>${noticelist.basic_board_num }</td>
					<td>${noticelist.member_id }</td>
					<td>${noticelist.title }</td>
					<td>${noticelist.cilck_count }</td>
					<td>${noticelist.upload_date }</td>
				</tr>
			</c:forEach>


		</table>
		<div class="col-sm-offset-6 col-sm-6">
		<div class="col-sm-7">
			<input type="text" id="noticeselect" class="form-control"> 
			</div>
			<input type="button" id="noticeboardSelect" value="검색" class="button button5 btn-default">
			<input type="button" value="목록" id="noticeboardSelectAll" class="button button5 btn-default"> 
		</div>
		</noticeboard>
		
	<freeboard id="freeboard">
	<h3>자유게시판</h3>
	<br>
		<table class="table table-bordered">

			<tr>
				<th>글번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>조회수</th>
				<th>등록일자</th>
			</tr>
		
		<c:forEach items="${freelist }" var="freelist">

				<tr>
					<td>${freelist.basic_board_num }</td>
					<td>${freelist.member_id }</td>
					<td>${freelist.title }</td>
					<td>${freelist.cilck_count }</td>
					<td>${freelist.upload_date }</td>
				</tr>
			</c:forEach>


		</table>
		<div class="col-sm-offset-6 col-sm-6">
		<div class="col-sm-7">
			<input type="text" id="freeselect" class="form-control"> 
			</div>
			<input type="button" id="freeboardSelect" value="검색" class="button button5 btn-default">
			<input type="button" value="목록" id="freeboardSelectAll" class="button button5 btn-default"> 
		<input type="button" value="글쓰기" id="freeWrite" class="button button5 btn-default">
		</div>
</freeboard>
	</div>
	
	<Br><br><Br>
	<Br><br><Br>
	
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>
</html>