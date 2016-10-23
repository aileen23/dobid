<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /*2016-10-23
	작성자 : 신유동
*/	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/auction_view.css" rel="stylesheet">
<title>공대구매뷰</title>
</head>
<header><%@include file="/regist_form/header.jsp"%></header>
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
					<p class="now_bid">현재 구매가</p>
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
  					<div>
                            <div class="list-group">
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-comment fa-fw"></i> 분류
                                    <span class="pull-right text-muted small"><em>골돌품</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-twitter fa-fw"></i> 판매자
                                    <span class="pull-right text-muted small"><em>lgh3680</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-envelope fa-fw"></i> 등록일
                                    <span class="pull-right text-muted small"><em>2016-10-19</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-tasks fa-fw"></i> 처음 구매가
                                    <span class="pull-right text-muted small"><em>100,000원</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-upload fa-fw"></i> 참가자 수
                                    <span class="pull-right text-muted small"><em>1000명</em>
                                    </span>
                                </a>
                            </div>
                            <!-- /.list-group -->
                        </div>
  				</div>
  				</div>
  				<div class="sen_box">
  					<div class="warning_box2">
  						<p>경고사항</p>
  					<p>1. 해당 금액 이상의 충전금액이 있어야합니다.</p>
  					<p>2. 신청 후 취소 불가능합니다.</p>
  					<p>3. 신중히 생각하세요.</p>
  					</div>
  					<p class="now_bid">현재 참여자 수</p>
  					<p class="now_bid_text2">1000명</p>
  					<button type="button" class="btn btn-default" style="margin-right: 5%">공동구매참가하기</button>
  				</div>
  			</div>
  			<textarea class="text_area" rows="20" cols="110" style="resize: none;"></textarea>
  		</div>
  	</div>
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>
</html>