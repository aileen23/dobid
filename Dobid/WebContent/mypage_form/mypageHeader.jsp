<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Untitled Document</title>
    <!-- Bootstrap -->
<!-- 	<link href="/Dobid/regist_form/css/mystyle.css" rel="stylesheet" type="text/css">
	<link href="/Dobid/mypage_form/css/bootstrap.css" rel="stylesheet"> -->
	<link href="/Dobid/mypage_form/css/mypage_header.css" rel="stylesheet" type="text/css">
	<link href="/Dobid/mypage_form/css/shop-homepage.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    <script> 
	$(document).ready(function(){
		$(".navtab").mouseover(function(){
				$(this).css("background-color", "black");
		});
		$(".navtab").mouseout(function(){
			$(this).css("background-color", "white");
		})
	});
    </script>
       
  </head>
  <body>
	
	<div class="container-fluid" style="margin-left: 14%; margin-right: auto;">
	  <ul class="nav nav-tabs" id="mynav">
	    <li role="presentation"><a href="myprofile.do" id="nav1" class="navtab">내정보</a></li>
	    <li role="presentation"><a href="myprofile_update.do" id="nav2" class="navtab">정보수정</a></li>
	    <li role="presentation"><a href="myprofile_basket.do" id="nav3" class="navtab">찜목록</a></li>
        <li role="presentation"><a href="myprofile_groupbuylist.do" id="nav10" class="navtab">공동구매내역</a></li>
        <li role="presentation"><a href="myprofile_Auction.do" id="nav4" class="navtab">경매참여내역</a></li>
        <li role="presentation"><a href="myprofile_sales.do" id="nav8" class="navtab">판매목록</a></li>
        <li role="presentation"><a href="myprofile_note.do" id="nav5" class="navtab">쪽지함</a></li>
        <li role="presentation"><a href="myprofile_charge.do" id="nav6" class="navtab">충전내역</a></li>
        <li role="presentation"><a href="myprofile_qna.do" id="nav7" class="navtab">문의내역</a></li>
        <li role="presentation"><a href="myprofile_withdrawal.do" id="nav9" class="navtab">회원탈퇴</a></li>

      </ul>
</div>
  </body>
</html>