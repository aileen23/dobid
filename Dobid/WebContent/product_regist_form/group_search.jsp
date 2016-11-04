<%@page import="com.dobid.beans.GroupbuyDTO"%>
<%@page import="com.dobid.beans.Auction_listDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dobid.model.Product_registDAO"%>
<%@page import="com.dobid.beans.Auction_list_paramiterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	

/*2016-10-23
작성자 : 신유동
*/	
	String text = request.getParameter("text");
	
	Auction_list_paramiterDTO auction_list_paramiterDTO = new Auction_list_paramiterDTO(text,"",0,6,"진행중");
	Product_registDAO dao = new Product_registDAO();

	List<GroupbuyDTO> list = dao.group_search_list(auction_list_paramiterDTO);


	for(int i = 0; i <list.size(); i++ ){ %>
	<div class="col-sm-4 col-lg-4 col-md-4">
	        <div class="thumbnail">
	            <img src="/Dobid<%= list.get(i).getMain_image_path()%>" alt="" style="width: 320px; height: 150px;">
	            <!-- <img src="<%= list.get(i).getMain_image_path()%>" alt=""> -->
	            <div class="caption">
	            	<div class="center_title">
	            		<div><%= list.get(i).getTitle() %></div>  
	            	</div>
	            	<div class="caption_div">
	                	<div class="caption_div_bold">시작 금액</div>                              
	                	<div class="caption_div_bold">현재 금액</div>
	                </div>
	                <div class="caption_div">
	                	<div><%= list.get(i).getDiscount_price()%>원</div>
	                	<div>예비원</div>
	                </div>
	                <div class="caption_div">
	                	<div class="caption_div_bold">등록 시간</div>
	                	<div class="caption_div_bold">종료 시간</div>
	                </div>
	                <div class="caption_div">
	                	<div><%= list.get(i).getRegist_date()%></div>
	                	<div><%= list.get(i).getEnd_date()%></div>
	                </div>
	                <div class="caption_div">
	                	<%= list.get(i).getParticipant_num() %>)
	                </div>                       
	            </div>
	            <div class="ratings">                             
	            </div>
	        </div>
	    </div>
	<% } %>
			<button id="more_Btn" class="btn btn-default btn-lg btn-block" name="0">더 보기</button>