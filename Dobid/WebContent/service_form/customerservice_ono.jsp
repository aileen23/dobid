<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
	if (session.getAttribute("logincheck") == null) {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/Dobid/login.do');" + "</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터 - 1:1 문의</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<%-- *.do 에 대한 CSS, JS 파일 경로 --%>
<script src="service_form/js/customerservice_ono.js" type="text/javascript"></script>
<%-- 유효성검사  --%>
<script src="service_form/js/customerservice_ono_upload.js" type="text/javascript"></script>
<%-- 첨부파일 업로드  --%>
<link rel="stylesheet" type="text/css" href="service_form/css/service.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function reset() {
		if (confirm("1:1 문의를 정말 취소하시겠습니까? \n 작성된 문의 내용은 모두 사라지며 메인페이지로 넘어갑니다") == true) { //확인

			location.href = '/Dobid/main.do';
		} else { //취소
			return;
		}
	}
</script>

</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<body>


	<p class="col-sm-offset-2" style="margin-top: 70px">
		<a href="service_qna.do"><button
				class="button button5 btn-default">자주하는 질문</button></a> <a
			href="service_ono.do"><button
				class="button button5 btn-default active">1 : 1 문의</button></a> <a
			href="service_report.do"><button
				class="button button5 btn-default">신고하기</button></a>
	</p>
	<hr>
	<form name="sfo" action="service_ono_write.do" method="post"
		enctype="multipart/form-data" class="form-horizontal">
		<div class="form-group">
			<label for="inputTitle" class="col-sm-3 control-label">제목</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="inputTitle" name="title"
					placeholder="문의할 제목을 입력하세요">
			</div>
		</div>
		<div class="form-group">
			<label for="inputWriter" class="col-sm-3 control-label">작성자</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="inputWriter"
					value=${logincheck } name="member_id" readonly="readonly">
			</div>
		</div>
		<div class="form-group">
			<label for="inputWriter" class="col-sm-3 control-label">분류</label>
			<div class="col-sm-5">
				<select class="form-control" name="categori" id="categorl">
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
			<label for="inputTextarea" class="col-sm-3 control-label">내용</label>
			<div class="col-sm-5">
				<textarea class="form-control " id="inputTextarea" name="contents"
					placeholder="내용을 입력하세요." style="height: 200px"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="inputFile" class="col-sm-3 control-label">첨부파일</label>


			<div class="filebox col-sm-5">
				<label for="cma_file" class="text-center">첨부파일</label> <input
					type="file" name="image_path" id="cma_file" accept="image/*"
					capture="camera"
					onchange="getThumbnailPrivew(this,$('#cma_image'))" /> <br> <br>
				<div align="center" style="text-decoration: underline">
					* 최대 300MB 용량까지 업로드 가능<br>gif, jpg, png 이미지 파일만 업로드 가능합니다
				</div>
				<br>
				<div id="cma_image"
					style="width: 100%; max-width: 100%; display: none;"></div>
				<br>

			</div>
		</div>
		<button type="submit"
			class="button button5 btn-default col-sm-offset-5" id="submit">확인</button>
		<button type="reset" class="button button5 btn-default"
			onclick="reset()">취소</button>
	</form>


	<!-- Footer -->
	<hr>

	<footer> <%@include file="/regist_form/footer.jsp"%></footer>



</body>
</html>
