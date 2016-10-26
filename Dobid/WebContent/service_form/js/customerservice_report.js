
$(document).ready(function() {
	$("#submit").click(function() {

		var fileNm = sfr.cma_file.value;

		if (sfr.inputTitle.value == "") {
			alert("타이들을 작성해주세요");
			sfr.inputTitle.focus();
			return false;
		} else if (sfr.inputTextarea.value == "") {
			alert("내용을 입력하세요");
			sfr.inputTextarea.focus();
			return false;
		} else if (!sfr.cma_file.value) {
			alert("첨부할 파일이 없습니다");
			$("#cma_file").click();
			return false;
		} else if (fileNm != "") {

			var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();

			if (!(ext == "gif" || ext == "jpg" || ext == "png")) {
				alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
				$("#cma_file").click();
				return false;
			}

		} else {
			alert("신고가 완료 되었습니다 \n 메인페이지로 이동합니다");
			return true;
		}
	});
});
