<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신고하기</title>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/customerservice.js"></script>

<link rel="stylesheet" type="text/css" href="css/customerservice.css">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>
<header><%@include file="../regist_form/header.jsp"%></header>
<body>


<p class="col-sm-offset-2" style="margin-top: 70px">
<a href="customerservice_qna.jsp"><button class="button button5 btn-default">자주하는 질문</button></a>
<a href="customerservice_ono.jsp"><button class="button button5 btn-default">1 : 1 문의</button></a>
<a href="customerservice_report.jsp"><button class="button button5 btn-default active">신고하기</button></a>
</p>
<hr>
<form class="form-horizontal">
  <div class="form-group">
    <label for="inputTitle" class="col-sm-3 control-label">제목</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputTitle" placeholder="신고할 제목을 입력하세요">
    </div>
  </div>
  <div class="form-group">
    <label for="inputWriter" class="col-sm-3 control-label">작성자</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputWriter" placeholder="작성자">
    </div>
  </div>
  <div class="form-group">
    <label for="inputTextarea" class="col-sm-3 control-label" >내용</label>
    <div class="col-sm-5">
      <textarea class="form-control " id="inputTextarea" placeholder="내용을 입력하세요" style="height: 200px"></textarea>
    </div>
  </div>
 <div class="form-group">
    <label for="inputFile" class="col-sm-3 control-label" >첨부파일</label>


    <div class="filebox col-sm-5">
        <label  for="cma_file">첨부파일</label>
        <input type="file" name="cma_file" id="cma_file" accept="image/*" capture="camera" onchange="getThumbnailPrivew(this,$('#cma_image'))" />
        <br><br>
        <div id="cma_image" style="width:100%;max-width:100%;display:none;"></div>
    </div>
</div>


</form>

<button class="button button5 btn-default col-sm-offset-5">확인</button>
<button class="button button5 btn-default">취소</button>


</body>
</html>