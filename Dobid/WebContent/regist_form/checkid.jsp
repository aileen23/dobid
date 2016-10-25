<%@page import="com.dobid.model.dobidDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
dobidDAO dao = new dobidDAO();
%>
<%= dao.checkid(request.getParameter("id"))%>
