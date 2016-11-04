<%@page import="com.dobid.beans.Auction_listDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dobid.model.Product_registDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Do! Bid</title>

<!-- Bootstrap Core CSS -->
<link href="./regist_form/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./regist_form/css/shop-homepage.css" rel="stylesheet">
<link href="/Dobid/product_regist_form/css/shop-homepage.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
$(document).ready(function() {
	
		$("#div0").hover(
				function () {
					$("#div0").animate({opacity: "0.5"},50);
				},
				function () {
					$("#div0").animate({opacity: "1"},50);
				});
		$("#div1").hover(
				function () {
					$("#div1").animate({opacity: "0.5"},50);
				},
				function () {
					$("#div1").animate({opacity: "1"},50);
				});
		$("#div2").hover(
				function () {
					$("#div2").animate({opacity: "0.5"},50);
				},
				function () {
					$("#div2").animate({opacity: "1"},50);
				});
		$("#div3").hover(
				function () {
					$("#div3").animate({opacity: "0.5"},50);
				},
				function () {
					$("#div3").animate({opacity: "1"},50);
				});
		$("#div4").hover(
				function () {
					$("#div4").animate({opacity: "0.5"},50);
				},
				function () {
					$("#div4").animate({opacity: "1"},50);
				});
		$("#div5").hover(
				function () {
					$("#div5").animate({opacity: "0.5"},50);
				},
				function () {
					$("#div5").animate({opacity: "1"},50);
				});
	
	
});

</script>

</head>
<header><%@include file="header.jsp"%></header>
<!-- 헤더 -->


<body>

	<!-- Navigation -->


	<!-- Page Content -->
	<br><br>
	<div class="container">

		<div class="row">



			<div class="col-md-10 col-sm-offset-1">

				<div class="row carousel-holder">

					<div class="col-md-12">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img class="slide-image" src="/Dobid/image/bbeabbearo.png"
										alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="/Dobid/image/dauni.png"
										alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="/Dobid/image/winter.png"
										alt="">
								</div>
								<div class="item">
									<img class="slide-image" src="/Dobid/image/warm.png"
										alt="">
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>

				</div>

				<div class="row">

<% 
Product_registDAO dao = new Product_registDAO();
List<Auction_listDTO> list = dao.main_list();
for(int i = 0; i <list.size(); i++ ){ %>
				<div class="col-sm-4 col-lg-4 col-md-4" id="div<%=i%>" >
                        <div class="thumbnail"><a href="auction_view.do?id=<%= list.get(i).getAuction_board_num()%>">
                            <img src="/Dobid<%= list.get(i).getMain_image_path()%>" alt="" style="width: 320px; height: 150px;">
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


				</div>

			</div>

		</div>

	</div>
	<!-- /.container -->
<br>
<br>
	<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>

	</div>
	<!-- /.container -->


</body>

</html>
