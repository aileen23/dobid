<%@page import="com.dobid.beans.MessageDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
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
        <th>받은사람</th>
        <th>내용</th>
        <th>보낸시간</th>
        <th>읽은시간</th>
      </tr>
    </thead>
    <tbody>
        <%
    	List<MessageDTO> list = (List<MessageDTO>)request.getAttribute("list");
    	for(int i=0;i<list.size();i++){
    %>
      <tr>
        <td><%=list.get(i).getMember_id()%></td>
        <td><%=list.get(i).getContents()%></td>
        <td><%=list.get(i).getRegist_date() %></td>
		<%if(list.get(i).getReception_check()==0){ %>
        <td>읽지않음</td>
        <%}else { %>
        <td>읽음</td>
        <% } %>
      </tr>
      <%
    	}
    %>
    </tbody>
  </table>
</div>
</body>
</html>