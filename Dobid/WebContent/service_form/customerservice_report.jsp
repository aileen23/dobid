<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%
	
    if(session.getAttribute("logincheck") == null){
    	out.print("<script type='text/javascript'>"+
    									"alert('로그인을 하셔야합니다.');"+
    									"location.replace('/Dobid/login.do');"+
    								"</script>");
    }
        %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신고하기</title>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- *.do 에 대한 CSS, JS 파일 경로 -->
<script src="service_form/js/customerservice_ono.js"></script>
<link rel="stylesheet" type="text/css" href="service_form/css/service.css">

<!-- <!-- JSP파일에 대한 CSS, JS 파일 경로 -->
<script src="js/customerservice_ono.js"></script>
<link rel="stylesheet" type="text/css" href="css/service.css"> -->

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
		
		var fileNm = sfr.cma_file.value;		
		
		if(sfr.inputTitle.value == ""){
			alert("타이들을 작성해주세요");
			sfr.inputTitle.focus();
			return false;
		}else if(sfr.inputTextarea.value == ""){
			alert("내용을 입력하세요");
			sfr.inputTextarea.focus();
			return false;
		}else if(!sfr.cma_file.value){
			alert("첨부할 파일이 없습니다");
			$("#cma_file").click();
			return false;	
		}else if (fileNm != "") {
			 
		    var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();
		 
		    if (!(ext == "gif" || ext == "jpg" || ext == "png")) {
		        alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
		        $("#cma_file").click();
		        return false;
		    }
		 
		}else{
			return true;
		}
	});
	});
</script>

</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<body>


<p class="col-sm-offset-2" style="margin-top: 70px">
<a href="service_qna.do"><button class="button button5 btn-default">자주하는 질문</button></a>
<a href="service_ono.do"><button class="button button5 btn-default">1 : 1 문의</button></a>
<a href="service_report.do"><button class="button button5 btn-default active">신고하기</button></a>
</p>
<hr>
<form name="sfr" class="form-horizontal" action="service_report_write.do" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="inputTitle" class="col-sm-3 control-label">제목</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputTitle" placeholder="문의할 제목을 입력하세요"  name="title">
    </div>
  </div>
  <div class="form-group">
    <label for="inputWriter" class="col-sm-3 control-label">작성자</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="inputWriter" placeholder=${logincheck } name="member_id" readonly="readonly">
    </div>
  </div>
  <div class="form-group">
    <label for="inputTextarea" class="col-sm-3 control-label" >내용</label>
    <div class="col-sm-5">
      <textarea class="form-control " id="inputTextarea" placeholder="내용을 입력하세요" style="height: 200px" name="contents"></textarea>
    </div>
  </div>
 <div class="form-group">
    <label for="inputFile" class="col-sm-3 control-label" >첨부파일</label>


    <div class="filebox col-sm-5">
        <label  for="cma_file" class="text-center">첨부파일</label>
        <input type="file" name="image_path" id="cma_file" accept="image/*" capture="camera" onchange="getThumbnailPrivew(this,$('#cma_image'))" />
        <br><br>
        <div align="center" style="text-decoration: underline">* 최대 300MB 용량까지 업로드 가능</div><br>
        <div id="cma_image" style="width:100%;max-width:100%;display:none;"></div><br>
    </div>
</div>

<button type="submit" class="button button5 btn-default col-sm-offset-5" id="submit">확인</button>
<button type="reset" class="button button5 btn-default">취소</button>

</form>


<!-- Footer -->
		<hr>
		
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
		
</body>
</html>