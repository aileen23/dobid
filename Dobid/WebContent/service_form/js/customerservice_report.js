
$(document).ready(function() {
	$("#submit").click(function() {

		var fileNm = sfo.cma_file.value;

		if (sfo.inputTitle.value == "") {
			alert("타이들을 작성해주세요");
			sfo.inputTitle.focus();
			return false;
		} else if (sfo.categorl.value == "선택해주세요") {
			alert("분류를 선택헤 주세요");
			sfo.categorl.focus();
			return false;
		} else if (sfo.inputTextarea.value == "") {
			alert("내용을 입력하세요");
			sfo.inputTextarea.focus();
			return false;
		} else if (fileNm != "") {

			var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();

			if (!(ext == "gif" || ext == "jpg" || ext == "png")) {
				alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
				$("#cma_file").click();
				return false;
			}

		} else 	alert("신고가 정삭적으로 완료되었습니다");
		
	});

});