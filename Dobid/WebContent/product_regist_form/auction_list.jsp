<%@page import="com.dobid.beans.Auction_listDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.dobid.product_regist.action.SqlMapconfig"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="com.dobid.model.Product_registDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
/*2016-10-23
작성자 : 신유동
*/	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Dobid/product_regist_form/css/shop-homepage.css" rel="stylesheet">
<script src="/Dobid/product_regist_form/js/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){

	$( ".more_btn" ).mouseenter(function() {
			$(this).css("background-color","#848484");
		});
	$( ".more_btn" ).mouseleave(function() {
		$(this).css("background-color","#BDBDBD");
	});
	//더보기.
	$(document).on("click","#more_Btn",function(){  
	//$("#more_Btn").click(function(){
		console.log("aaaa");
		var text = $(".input_text").val();
		
		var nowAddress = unescape(encodeURIComponent(location.href));

        nowAddress = decodeURIComponent(nowAddress);
        
		var oldcheck = nowAddress.substring(1).split("?")[1].split("=")[1];
        var categori = $("#cate option:selected").val();
		var lastNum = $("#more_Btn").attr("name");
		$.ajax({
            url:'search_more.do',	
            type:'POST',
            data:{"text" : text,"lastNum" : lastNum,"categori":categori,"oldcheck":oldcheck},
            success:function(result){
            	$("#more_Btn").remove();
  				$("#box").append(result);

           	},
           	error: function(xhr,status,error){ 

           	          alert("code:"+xhr.status); 
           	      } 

        });
	});
	//검색.
	$(document).on("click",".sch_smit",function(){  
	//$(".sch_smit").click(function(){
		var text = $(".input_text").val();
		var nowAddress = unescape(encodeURIComponent(location.href));

        nowAddress = decodeURIComponent(nowAddress);

		var oldcheck = nowAddress.substring(1).split("?")[1].split("=")[1];
        var categori = $("#cate option:selected").val(); 
		$.ajax({
            url:'search.do',	
            type:'POST',
            data:{"text" : text,"oldcheck" :oldcheck,"categori":categori},
            success:function(result){
            	$("#more_Btn").attr("name",0);
            		$("#box").empty();
            		$("#box").append(result);

           	},
           	error: function(xhr,status,error){ 

           	          alert("code:"+xhr.status); 
           	      } 

        });
	});
});
</script>
<title>dobid경매목록</title>
</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<body>
 <div class="row2">
 			<div class="search_box">
 			<select id="cate" class="form-control3" name="cate">
 				<option value="">전체</option>
  				<option value="미술">미술</option>
 				<option value="골동품">골동품</option>
 				<option value="의류">의류</option>
 				<option value="기타">기타</option>
			</select>
 				<div class='green_window'>
					<input type='text' class='input_text' />
				</div>
				<button type='submit' class='sch_smit'>검색</button>
			</div>
			
			<div class="top_title">경매 중인 물품</div>
			<a href="regist.do" class="btn btn-default" style="margin-left:92%;">경매등록</a>
				<div id="box">
<% List<Auction_listDTO> list = (List<Auction_listDTO>)request.getAttribute("list");
for(int i = 0; i <list.size(); i++ ){ %>
				<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail"><a href="auction_view.do?id=<%= list.get(i).getAuction_board_num()%>">
                        <img src="/Dobid<%= list.get(i).getMain_image_path()%>" alt="" style="width: 320px; height: 150px;">
                            <!--<img src="http://placehold.it/320x150" alt="">-->
                            </a>
                            <div class="caption">
                            	<div class="center_title">
                            		<div><%= list.get(i).getTitle() %></div>  
                            	</div>
                            	<div class="caption_div">
                                	<div class="caption_div_bold">입찰시작금액</div>                              
                                	<div class="caption_div_bold">현재최고금액</div>
                                </div>
                                <div class="caption_div_a">
                                	<div><%= list.get(i).getStart_amount()%>원</div>
                                	<div><%= list.get(i).getHighest_price()%>원</div>
                                </div>
                                <div class="caption_div">
                                	<div class="caption_div_bold">입찰 등록 시간</div>
                                	<div class="caption_div_bold">종료 시간</div>
                                </div>
                                <div class="caption_div_a">
                                	<div><%= list.get(i).getRegist_date()%></div>
                                	<div><%= list.get(i).getEnd_date()%></div>
                                </div>                       
                            </div>
                        </div>
                    </div>
<% } %>
                    	<button id="more_Btn" class="btn btn-default btn-lg btn-block" name="6">더 보기</button>
					</div>
                 </div>               
         </div><!-- row 끝태그입니다. -->
</body>
<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</html> 