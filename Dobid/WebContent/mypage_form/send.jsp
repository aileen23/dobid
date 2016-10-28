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
    <c:forEach items="${ list }" var="sendlist"></c:forEach>
      <tr>
        <td>${sendlist.member_id}</td>
        <td>${sendlist.contents }</td>
        <td>${sendlist.regist_date }</td>
        <c:choose>
        <c:when test="${sendlist.reception_check } eq  null">
        <td>읽지않음</td>
        </c:when>
        <c:otherwise>
        <td>읽음</td>
        </c:otherwise>
        </c:choose>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>