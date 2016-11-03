<%@page import="com.dobid.beans.GroupbuyDTO"%>
<%@page import="com.dobid.model.Product_registDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /*2016-10-23
	작성자 : 신유동
*/	
if(session.getAttribute("logincheck") == null){
	out.print("<script type='text/javascript'>"+
									"alert('로그인을 하셔야합니다.');"+
									"location.replace('/Dobid/login.do');"+
								"</script>");
}

	String id = request.getParameter("id");
	Product_registDAO dao = new Product_registDAO();
	GroupbuyDTO dto = (GroupbuyDTO)dao.groupbuy_view(Integer.parseInt(id));
	
	int now_number =  dto.getParticipant_num();
	int max_nunmber = dto.getStep_participant() * 5;
	int now_progras = 0;
	//if(now_number != 0){
		now_progras = (now_number/dto.getStep_participant());
	//}
	int step_discount = dto.getStep_discount();
	double now_price = dto.getDiscount_price();
	double reckoning = (step_discount*(now_progras))/(double)100;
	now_price = dto.getDiscount_price()*reckoning;	
	double view_price = dto.getDiscount_price() - now_price;
	//if(now_progras != 0){
		now_progras = now_progras *2;
		
	//}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Dobid/product_regist_form/css/auction_view.css" rel="stylesheet">
<title>공대구매뷰</title>
</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<script src="/Dobid/product_regist_form/js/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){
	$("#buyBtn").click(function(){
		var id = $('.wap').attr("name");
		var price = $('.now_bid_text').text();
		location.replace("groupbuy_regist.do?id="+id+"&price="+price);
	});
	$(".basket_btn").click(function(){
		var id = $('.wap').attr("name");
		var check = "공동구매";
		$.ajax({
            url:'basket_add.do',	
            type:'POST',
            data:{"id" : id,"check":check},
            success:function(result){
            	if(result == "OK"){
            		alert("찜목록에 추가됬습니다.");	
            	}else {
            		alert("추가실패");
            	}

           	},
           	error: function(xhr,status,error){ 

           	          alert("code:"+xhr.status); 
           	      } 

        });
	});
});
</script>
<body>
	<div class="wap" name="<%=id%>">
  		<div class="content">
  			<span class="title"><%=dto.getTitle()%></span>
  			<div class="box">
  				<div class="fires_box">
  					<div id="slider">
						<figure>
							<img src="/Dobid/product_regist_form/마계촌.png" alt="">
							<img src="/Dobid/product_regist_form/마계촌.png" alt="">
							<img src="/Dobid/product_regist_form/마계촌.png" alt="">
							<img src="/Dobid/product_regist_form/마계촌.png" alt="">
							<img src="/Dobid/product_regist_form/마계촌.png" alt="">
						</figure>
					</div>
				</div>
				<div class="sen_box">
					<p class="now_bid">현재 구매가</p>
					<p class="now_bid_text"><%=view_price%></p>
					<hr>
					<div class="Rem_aining_time">
						<DIV class="progress-box progress-box-default">  
     						<DIV class=progress-heading>남은시간</DIV>
     	 						<DIV class=progress-small>
     	 							<img src="/Dobid/product_regist_form/prograsbar.png" height="20" width="398" class="progress-small_group"></img>
            						<DIV role=progressbar aria-valuenow=10 aria-valuemin=0 class="progress-bar-small progress-bar-s-info" style="WIDTH: <%=now_progras %>0%" aria-valuemax=100>
                   					<span class="only"><%= now_number+"/"+max_nunmber %></span>
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
                                    <span class="pull-right text-muted small"><em><%=dto.getCategori()%></em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-twitter fa-fw"></i> 판매자
                                    <span class="pull-right text-muted small"><em>담당자</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-envelope fa-fw"></i> 등록일
                                    <span class="pull-right text-muted small"><em><%=dto.getRegist_date()%></em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-tasks fa-fw"></i> 처음 구매가
                                    <span class="pull-right text-muted small"><em><%=dto.getFirst_price()%>원</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-upload fa-fw"></i> 인원 기준표
                                    <span class="pull-right text-muted small"><em><%=dto.getStep_participant()%>명씩마다 할인!</em>
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
  					<p class="now_bid_text2"><%=dto.getParticipant_num()%>명</p>
  					<button id="buyBtn" type="button" class="btn btn-default" style="margin-right: 5%">공동구매참가하기</button>
  					<button type="button" class="basket_btn btn-default">찜하기</button>
  				</div>
  			</div>
  			<textarea class="text_area" rows="20" cols="110" style="resize: none;" readonly="readonly"><%=dto.getContents()%></textarea>
  		</div>
  	</div>
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>
</html>
