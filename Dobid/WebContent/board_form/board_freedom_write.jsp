<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판 쓰기 뷰</title>

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
			reader.onload = function(e) {
				$target.css('display', '');
				//$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
				$target.html('<img src="' + e.target.result
						+ '" border="0" alt="" width="50%" />');
			}
			reader.readAsDataURL(html.files[0]);
		}
	}
</script>

</head>
<body>

	<center>
		<p style="margin-left: -30%">
			<button class="button button5 btn-default active" onclick="notice_board()">공지사항</button>
			<button class="button button5 btn-default active" onclick="free_board()">자유게시판</button>
		</p>
		<hr>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputTitle" class="col-sm-4 control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="free_title" placeholder="제목">
				</div>
			</div>
			<div class="form-group">
				<label for="inputWriter" class="col-sm-4 control-label">작성자</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="free_whiter_user"
						placeholder="작성자">
				</div>
			</div>
			<div class="form-group">
				<label for="inputTextarea" class="col-sm-4 control-label">내용</label>
				<div class="col-sm-5">
					<textarea class="form-control " id="free_contents"
						placeholder="내용을 입력하세요" style="height: 200px"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="inputFile" class="col-sm-4 control-label">첨부파일</label>

				<div class="filebox col-sm-5">
					<label for="free_file">첨부파일</label> <input type="file"
						name="free_file" id="free_file" accept="image/*" capture="camera"
						onchange="getThumbnailPrivew(this,$('#free_img'))" /> <br> <br>
					<div id="free_img"
						style="width: 100%; max-width: 100%; display: none;"></div>
				</div>
			</div>



		</form>
		<div class="col-sm-offset-7 col-sm-2">
			<button class="button button5 btn-default" onclick="FreeBoardWrite()">글쓰기</button>
			<button class="button button5 btn-default" onclick="pageback()">취소</button>
			<button class="button button5 btn-default" onclick="boardSelectAll()">목록</button>
		</div>
		
		

	</center>
</body>
</html>