<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1 문의</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="js/customerservice.js"></script>

<link rel="stylesheet" type="text/css" href="css/customerservice.css">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
<center>

<p style="margin-left: -30%">
<button class="button button5 btn-default">자주하는 질문</button>
<button class="button button5 btn-default">1 : 1 문의</button>
<button class="button button5 btn-default">신고하기</button>
</p>
<hr>
  <form name="form" id="form" action="" method="post" enctype="multipart/form-data" autocomplete="off" class="form-horizontal">
  <div class="form-group">
    <label for="inputTitle" class="col-sm-4 control-label">제목</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputTitle" placeholder="신고할 제목을 입력하세요">
    </div>
  </div>
  <div class="form-group">
    <label for="inputWriter" class="col-sm-4 control-label">작성자</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputWriter" placeholder="작성자">
    </div>
  </div>
  <div class="form-group">
    <label for="inputWriter" class="col-sm-4 control-label">분류</label>
    <div class="col-sm-5">
      <select style="width: 100%" class="form-control">
      	<option>선택해 주세요</option>
      	<option>선택해라</option>
      	<option>나좀 선택해줘</option>
      	<option>선택 받고 싶어요</option>
      	<option>아이 선택</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputTextarea" class="col-sm-4 control-label" >내용</label>
    <div class="col-sm-5">
      <textarea class="form-control " id="inputTextarea" placeholder="내용을 입력하세요" style="height: 200px"></textarea>
    </div>
  </div>
  <div class="form-group">
    <label for="inputFile" class="col-sm-4 control-label" >첨부파일</label>


    <div class="filebox col-sm-5">
        <label  for="cma_file">첨부파일</label>
        <input type="file" name="cma_file" id="cma_file" accept="image/*" capture="camera" onchange="getThumbnailPrivew(this,$('#cma_image'))" />
        <br><br>
        <div id="cma_image" style="width:100%;max-width:100%;display:none;"></div>
    </div>
</div>
 
  
 

</form>

<button class="button button5 btn-default">확인</button>
<button class="button button5 btn-default">취소</button>


</center>

</body>
</html>