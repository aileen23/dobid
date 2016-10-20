<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- CSS -->
<link href="./css/jongmin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 게시물보기뷰</title>

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
			<button class="button button5 btn-default" onclick="notice_board()">공지사항</button>
			<button class="button button5 btn-default" onclick="free_board()">자유게시판</button>
		</p>
		<hr>
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputTitle" class="col-sm-4 control-label">제목</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="view_title"
						placeholder="제목" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputWriter" class="col-sm-4 control-label">작성자</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="view_write_user"
						placeholder="작성자" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputWriter" class="col-sm-4 control-label">분류</label>
				<div class="col-sm-5">
					<select style="width: 100%" class="form-control"
						id="view_catalogue" disabled>
						<option>분류1</option>
						<option>분류2</option>
						<option>분류3</option>
						<option>분류4</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="inputTextarea" class="col-sm-4 control-label" disabled>내용</label>
				<div class="col-sm-5">
					<textarea class="form-control " id="view_contents"
						placeholder="입력된 내용" style="height: 200px" disabled></textarea>
				</div>
			</div>

		</form>

		<div class="col-sm-offset-6 col-sm-5">
			<button class="button button5 btn-default" onclick="boardSelectAll()">목록</button>
		</div>

	</center>
</body>
</html>