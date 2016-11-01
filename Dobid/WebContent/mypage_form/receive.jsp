<%@page import="com.dobid.beans.MessageDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>보낸사람</th>
        <th>보낸시간</th>
        <th>제목</th>
        <th>내용</th>
      </tr>
    </thead>
    <tbody>
    <%
    	List<MessageDTO> list = (List<MessageDTO>)request.getAttribute("receivelist");
    	for(int i=0;i<list.size();i++){
    %>
      <tr>
        <td><%=list.get(i).getSend_id() %></td>
        <td><%=list.get(i).getRegist_date()%></td>
        <td><%=list.get(i).getTitle() %></td>
        <td><%=list.get(i).getContents()%></td>
      </tr>
    <%
    	}
    %>
    </tbody>
  </table>
</div>
</body>
</html>