<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap Core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./css/shop-homepage.css" rel="stylesheet">

<!-- Script -->
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/jquery-1.8.3.min.js" charset="UTF-8"></script>
</head>
<body>

<div class="container">
  <h2>쪽지함</h2>
	<br><br>        
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>보낸사람</th>
        <th>내용</th>
        <th>보낸시간</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>


</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
