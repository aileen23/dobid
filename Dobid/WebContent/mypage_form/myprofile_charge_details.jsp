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
  <h2>충전내역</h2>
	<br><br>        
  <table class="table table-bordered">
    <thead>
      <tr>
     	<th></th>
        <th>시간</th>
        <th>내역</th>
        <th>금액</th>
      </tr>
    </thead>
    <tbody>
      <tr>
     	<th>충전</th>
        <th>2016.6.6</th>
        <th>무통장입금</th>
        <th>+30000원</th>
      </tr>
       <tr>
     	<th>사용</th>
        <th>2016.6.6</th>
        <th>아침 배고픔을..</th>
        <th>-30100원</th>
      </tr>      
      <tr>
     	<th>사용</th>
        <th>2016.6.6</th>
        <th>아침 배고픔을..</th>
        <th>-22000원</th>
      </tr>    
    </tbody>
  </table>
</div>
<div class="container">
  <table class="table table-bordered">
    <thead>
       <tr>
     	<th>현재금액</th>
        <th>100,000원</th>
      </tr>
    </thead>
  </table>
</div>

</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
