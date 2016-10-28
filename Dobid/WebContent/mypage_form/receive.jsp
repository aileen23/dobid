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
        <th>내용</th>
        <th>보낸시간</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${receivelist}" var="listmsg"></c:forEach>
      <tr>
        <td>${listmsg.send_id }</td>
        <td>${listmsg.contents }</td>
        <td>${listmsg.regist_date }</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>