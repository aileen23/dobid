<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/auction_view.css" rel="stylesheet">
<title>경매뷰</title>
</head>
<body>
	<div class="wap">
  		<div class="content">
  			<span class="title">제목</span>
  			<div class="box">
  				<div class="fires_box">
  					<div id="slider">
						<figure>
							<img src="마계촌.png" alt="">
							<img src="마계촌.png" alt="">
							<img src="마계촌.png" alt="">
							<img src="마계촌.png" alt="">
							<img src="마계촌.png" alt="">
						</figure>
					</div>
				</div>
				<div class="sen_box">
					<p class="now_bid">현재입찰가</p>
					<p class="now_bid_text">5,000,000원</p>
					<hr>
					<div class="Rem_aining_time">
						<DIV class="progress-box progress-box-default">  
     						<DIV class=progress-heading>남은시간</DIV>
     	 						<DIV class=progress-small>
            						<DIV role=progressbar aria-valuenow=10 aria-valuemin=0 class="progress-bar-small progress-bar-s-info" style="WIDTH: 60%" aria-valuemax=100>
                   					<SPAN class=sr-only>60% Complete</SPAN>
             					</DIV>
       						</DIV>
						</DIV>
					</div>					
				</div>
  			</div>
  			<div class="box">
  				<div class="fires_box">
  				<div id="slider">
  					<div class="info_name">
  						<p>분류</p>
  						<p>판매자</p>
  						<p>등록일</p>
  						<p>입찰 시작가</p>
  						<p>참가자 수</p>
  					</div>
  					<div class="info">
  						<p>골동품</p>
  						<p>lgh3680</p>
  						<p>2016-10-19</p>
  						<p>100,000원</p>
  						<p>1000</p>
  					</div>
  				</div>
  				</div>
  				<div class="sen_box">
  					<div class="warning_box">
  						<p>경고사항</p>
  					<p>해당 금액 이상의 충전금액이 있어야합니다.</p>
  					</div>
  					<input type="text" class="form-control" id="inputId" placeholder="금액">
  					<button type="button" class="btn btn-default" style="margin-right: 5%">경매참가하기</button>
  				</div>
  			</div>
  			<textarea class="text_area" rows="20" cols="140" style="resize: none;"></textarea>
  		</div>
  	</div>
</body>
</html>