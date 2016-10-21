<%@page import="com.dobid.beans.Auction_listDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.dobid.product_regist.action.SqlMapconfig"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="com.dobid.model.Product_registDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/shop-homepage.css" rel="stylesheet">
<script src="js/jquery-3.0.0.js"></script>
<script>
$(document).ready(function(){

	$( ".more_btn" ).mouseenter(function() {
			$(this).css("background-color","#848484");
		});
	$( ".more_btn" ).mouseleave(function() {
		$(this).css("background-color","#BDBDBD");
	});
	//더보기.
	$("#more_Btn").click(function(){
		var text = $(".input_text").val();
		var lastNum = $("#more_Btn").attr("name");
		$.ajax({
            url:'search_more.do',	
            type:'POST',
            data:{"text" : text,"lastNum" : lastNum},
            success:function(result){
            	//$("#more_Btn").attr("name",nextNum);
            	$("#more_Btn").remove();
  				$("#box").append(result);

           	},
           	error: function(xhr,status,error){ 

           	          alert("code:"+xhr.status); 
           	      } 

        });
	});
	//검색.
	$(".sch_smit").click(function(){
		var text = $(".input_text").val();
		$.ajax({
            url:'search.do',	
            type:'POST',
            data:{"text" : text},
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
 				<div class='green_window'>
					<input type='text' class='input_text' />
				</div>
				<button type='submit' class='sch_smit'>검색</button>
			</div>
			
			<div class="top_title">경매 중인 물품</div>
				<div id="box">
<% List<Auction_listDTO> list = (List<Auction_listDTO>)request.getAttribute("list");
for(int i = 0; i <list.size(); i++ ){ %>
				<div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail"><a href="auction_view.do?id=<%= list.get(i).getAuction_board_num()%>">
                            <img src="http://placehold.it/320x150" alt="">
                            </a>
                            <!-- <img src="<%= list.get(i).getMain_image_path()%>" alt=""> -->
                            <div class="caption">
                            	<div class="center_title">
                            		<div><%= list.get(i).getTitle() %></div>  
                            	</div>
                            	<div class="caption_div">
                                	<div class="caption_div_bold">입찰시작금액</div>                              
                                	<div class="caption_div_bold">현재최고금액</div>
                                </div>
                                <div class="caption_div">
                                	<div><%= list.get(i).getStart_amount()%>원</div>
                                	<div><%= list.get(i).getHighest_price()%>원</div>
                                </div>
                                <div class="caption_div">
                                	<div class="caption_div_bold">입찰 등록 시간</div>
                                	<div class="caption_div_bold">종료 시간</div>
                                </div>
                                <div class="caption_div">
                                	<div><%= list.get(i).getRegist_date()%></div>
                                	<div><%= list.get(i).getEnd_date()%></div>
                                </div>
                                <div class="caption_div">
                                	<%= list.get(i).getEmail()%>(<%=list.get(i).getName() %>)
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