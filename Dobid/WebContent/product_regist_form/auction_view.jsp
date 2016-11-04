<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.dobid.beans.AuctionDTO"%>
<%@page import="com.dobid.model.Product_registDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Dobid/product_regist_form/css/auction_view.css" rel="stylesheet">
<script src="/Dobid/product_regist_form/js/jquery-3.0.0.js"></script>
<title>경매뷰</title>
</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<script type="text/javascript">
$(document).ready(function(){
	var a = setInterval(time_update, 1000*1);
	
	function time_update(){
		var view_time = $(".only").text();
		var split1 = view_time.split("시간");
		var hour = Number(split1[0]);
		var split2 = split1[1].split("분");
		var mi = Number(split2[0]);
		var split3 = split2[1].split("초");
		var ss = Number(split3[0]);
		ss--;
		if(ss < 0){
			mi--;
			ss = 60;
			if(mi < 0){
				mi = 60;
				hour--;
			}
		}
		var input_time = hour+"시간"+mi+"분"+ss+"초";
		$(".only").text(input_time);
	};
	
	$("#buyBtn").click(function(){
		var id = $('.wap').attr("name");
		var price = $('.now_bid_text').text();
		var input_price = $('#inputId').val();
		if(input_price < Number(price)){
			alert("현재 임찰금액보다 낮습니다.\n금액을 확인해주세요.")
		}else {
		location.replace("auction_buy.do?id="+id+"&price="+input_price);
		}
	});
	$(".basket_btn").click(function(){
		var id = $('.wap').attr("name");
		var check = $('.content').attr("name");
		$.ajax({
            url:'basket_add.do',	
            type:'POST',
            data:{"id" : id,"check":check},
            success:function(result){
            	console.log(result);
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
function showKeyCode(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) )
	{
		return;
	}
	else
	{
		return false;
	}
}
</script>
<body>
<%
	if(session.getAttribute("logincheck") == null){
		out.print("<script type='text/javascript'>"+
										"alert('로그인을 하셔야합니다.');"+
										"location.replace('/Dobid/login.do');"+
									"</script>");
	}
	String id = request.getParameter("id");
	Product_registDAO dao = new Product_registDAO();
	
	AuctionDTO auctionDTO = dao.auction_object_select(id);
	String user_name = dao.user_name_select(auctionDTO.getSeller_id());
	
	String end_time[] = auctionDTO.getEnd_date().split(" ");
	String regist_time[] = auctionDTO.getRegist_date().split(" ");
	
	Calendar calendar = Calendar.getInstance();
	SimpleDateFormat dateFormat = new SimpleDateFormat("dd HH:mm:ss");
	String now_time[] = dateFormat.format(calendar.getTime()).split(" ");
	
	String end_day = end_time[0].split("-")[2];
	String regist_day =regist_time[0].split("-")[2];
	String now_day = now_time[0];
	
	//끝나는 시간 시분초 나눈 배열.
		String end_hMs[] = end_time[1].split(":");
	//등록 시간 시분초 나눈 배열.
		String regist_hMs[] = regist_time[1].split(":");
	//현재 시간 시분초 나눈 배열
		String now_hMs[] = now_time[1].split(":");
	

	//끝나는 시간 - 현재시간.
		int day_char = Integer.parseInt(end_day) - Integer.parseInt(now_day);
		int hour_char = Integer.parseInt(end_hMs[0]) - Integer.parseInt(now_hMs[0]);
		int mi_char = Integer.parseInt(end_hMs[1]) - Integer.parseInt(now_hMs[1]);
		int ss_char = Integer.parseInt(end_hMs[2]) - Integer.parseInt(now_hMs[2]);
		
		double total_E_N = day_char*86400+Math.abs(hour_char)*3600+Math.abs(mi_char)*60+Math.abs(ss_char);
		
	//현재시간 - 등록시간
		day_char = Integer.parseInt(now_day) - Integer.parseInt(regist_day);
		hour_char = Integer.parseInt(now_hMs[0]) - Integer.parseInt(regist_hMs[0]);
		mi_char = Integer.parseInt(now_hMs[1]) - Integer.parseInt(regist_hMs[1]);
		ss_char = Integer.parseInt(now_hMs[2]) - Integer.parseInt(regist_hMs[2]);
		
		double total_N_R = day_char*86400+Math.abs(hour_char)*3600+Math.abs(mi_char)*60+Math.abs(ss_char);
		
		double nowtal_int = total_E_N - total_N_R;
		System.out.println(nowtal_int);
		int view_hour = (int)(nowtal_int)/3600;
		int view_mi = (int)(nowtal_int-(view_hour*3600))/60;
		int view_ss = (int)((nowtal_int-(view_hour*3600))-view_mi*60);
%>
	<div class="wap" name="<%=id%>">
  		<div class="content" name="<%= auctionDTO.getHot_check()%>">
  			<span class="title"><%=auctionDTO.getTitle() %></span>
  			<div class="box">
  				<div class="fires_box">
  					<div id="slider">
						<figure>
						<%
							String[] path = auctionDTO.getExplain_image_path().split("@");
							for(int i = 1; i < path.length; i++){
								out.print("<img src='/Dobid"+path[i]+"'>");
							}
						%>
						</figure>
					</div>
				</div>
				<div class="sen_box">
					<p class="now_bid">현재입찰가</p>
					<p class="now_bid_text"><%=auctionDTO.getHighest_price() %></p>
					<hr>
					<div class="Rem_aining_time">
						<DIV class="progress-box progress-box-default">  
     						<DIV class=progress-heading>남은시간</DIV>
     	 						<DIV class=progress-small>
            						<DIV role=progressbar aria-valuenow=10 aria-valuemin=0 class="progress-bar-small progress-bar-s-info" style="WIDTH: <%=(total_N_R/total_E_N*100) %>%" aria-valuemax=100>
                   					<!-- <SPAN class=sr-only>60% Complete</SPAN> -->
                   					
             					</DIV>
             					<span class="only"><%=view_hour+"시간"+Math.abs(view_mi)+"분"+Math.abs(view_ss)+"초" %></span>
             					
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
                                    <span class="pull-right text-muted small"><em><%=auctionDTO.getCategori() %></em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-twitter fa-fw"></i> 판매자
                                    <span class="pull-right text-muted small"><em><%= user_name %></em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-envelope fa-fw"></i> 등록일
                                    <span class="pull-right text-muted small"><em><%=auctionDTO.getRegist_date() %></em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-tasks fa-fw"></i> 입찰 시작가
                                    <span class="pull-right text-muted small"><em><%=auctionDTO.getStart_amount() %>원</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item a">
                                    <i class="fa fa-upload fa-fw"></i> 참가자 수
                                    <span class="pull-right text-muted small"><em>나중에 추가.명</em>
                                    </span>
                                </a>
                            </div>
                            <!-- /.list-group -->
                        </div>
  				</div>
  				</div>
  				<div class="sen_box">
  					<div class="warning_box">
  						<p>경고사항</p>
  						<p>1. 해당 금액 이상의 충전금액이 있어야합니다.</p>
  						<p>2. 참가 이후 취소 불가능합니다.</p>
  						<p>3. 종료 5분 전 입찰시 종료시간이 증가합니다.</p>
  					</div>
  					<input type="text" class="form-control2" id="inputId" placeholder="금액" onkeydown="return showKeyCode(event)">
  					<button id="buyBtn" type="button" class="btn btn-default" style="margin-right: 5%">경매참가하기</button>
  					<button type="button" class="basket_btn btn-default">찜하기</button>
  				</div>
  			</div>
  			<textarea class="text_area" rows="20" cols="110" style="resize: none;" readonly="readonly"><%= auctionDTO.getContents() %></textarea>
  		</div>
  	</div>
  	<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</body>
</html>