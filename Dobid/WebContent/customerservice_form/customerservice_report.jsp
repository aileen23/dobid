<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신고하기</title>
<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    
}



.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button5:hover {
    background-color: #555555;
    color: white;
}

.filebox label {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
    width:100%;
    max-width:100%;
}
 
.filebox input[type="file"] {  /* 파일 필드 숨기기 */
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

</style>

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
function getThumbnailPrivew(html, $target) {
    if (html.files && html.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $target.css('display', '');
            //$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
            $target.html('<img src="' + e.target.result + '" border="0" alt="" width="50%" />');
        }
        reader.readAsDataURL(html.files[0]);
    }
}
</script>

</head>
<body>

<center>
<p style="margin-left: -30%">
<button class="button button5 btn-default">자주하는 질문</button>
<button class="button button5 btn-default">1 : 1 문의</button>
<button class="button button5 btn-default">신고하기</button>
</p>
<hr>
<form class="form-horizontal">
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