<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1 문의</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- *.do 에 대한 CSS, JS 파일 경로 -->
<script src="service_form/js/customerservice_ono.js"></script>
<link rel="stylesheet" type="text/css" href="service_form/css/service.css">


<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<body>


<p class="col-sm-offset-2" style="margin-top: 70px">
<a href="service_qna.do"><button class="button button5 btn-default">자주하는 질문</button></a>
<a href="service_ono.do"><button class="button button5 btn-default active">1 : 1 문의</button></a>
<a href="service_report.do"><button class="button button5 btn-default">신고하기</button></a>
</p>
<hr>
 <form action="service_ono_write.do" method="get" enctype="multipart/form-data" class="form-horizontal">
  <div class="form-group">
    <label for="inputTitle" class="col-sm-3 control-label">제목</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputTitle" name="title" placeholder="신고할 제목을 입력하세요">
    </div>
  </div>
  <div class="form-group">
    <label for="inputWriter" class="col-sm-3 control-label">작성자</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputWriter" name="member_id" placeholder="작성자">
    </div>
  </div>
  <div class="form-group">
    <label for="inputWriter" class="col-sm-3 control-label">분류</label>
    <div class="col-sm-5">
      <select class="form-control" name="categori">
      	<option>선택해주세요</option>
      	<option>구매관련</option>
      	<option>판매관련</option>
      	<option>이용안내</option>
      	<option>사기</option>
      	<option>기타</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputTextarea" class="col-sm-3 control-label" >내용</label>
    <div class="col-sm-5">
      <textarea class="form-control " id="inputTextarea" name="contents" placeholder="내용을 입력하세요." style="height: 200px"></textarea>
    </div>
  </div>
  <div class="form-group">
    <label for="inputFile" class="col-sm-3 control-label" >첨부파일</label>


    <div class="filebox col-sm-5">
        <label  for="cma_file"class="text-center">첨부파일</label>
        <input type="file" name="image_path" id="cma_file" accept="image/*" capture="camera" onchange="getThumbnailPrivew(this,$('#cma_image'))"/>
        <br><br>
        <div id="cma_image" style="width:100%;max-width:100%;display:none;"></div>
    </div>
</div>
<button type="submit" class="button button5 btn-default col-sm-offset-5">확인</button>
<button type="reset" class="button button5 btn-default">취소</button>
</form>


<!-- Footer -->
		<hr>
		
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
		


</body>
</html>