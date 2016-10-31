<%@page import="com.dobid.beans.BasketDTO"%>
<%@page import="com.dobid.model.Product_registDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	int id = Integer.parseInt(request.getParameter("id"));
	String check = (String)request.getParameter("check");
	String user_id = (String)request.getSession().getAttribute("logincheck");
	Product_registDAO dao = new Product_registDAO();
	BasketDTO basketDTO = new BasketDTO(check,id,user_id);
	boolean re = dao.basket_add(basketDTO);
	String res = null;
	if(re==true){
		res = "OK";
	}
%>
<%@page trimDirectiveWhitespaces="true"%>
<%=res%>
