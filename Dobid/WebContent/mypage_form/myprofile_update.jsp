<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("logincheck") == null) {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/Dobid/login.do');" + "</script>");
	}
%>
<!DOCTYPE html>
<html>
<header><%@include file="/regist_form/header.jsp"%></header>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Do!bid</title>

<script type="text/javascript">
$(document).ready(function() {
	var address = "${member.address }";
	var add = address.split("%%");
	$("#inputAddress").val(add[0]);
	$("#inputdetailAddress").val(add[1]);
	
	$(":password").keyup(function() {
		
		if ($("#inputPwd").val() != $("#inputPwdCheck").val() ){
			$("#passcheck").html("<font color = 'red'>두 비밀번호가 맞지않습니다.</font>");			
		}else if($("#inputPwd").val().length > 5 && $("#inputPwd").val().length < 21 && $("#inputPwd").val().replace(" ","").length == $("#inputPwd").val().length) {
			$("#passcheck").html("<font color = 'blue'>O</font>");
		}else if ($("#inputPwd").val().length == 0 || $("#inputPwdCheck").val().length == 0) {
			$("#passcheck").html("");
		}
		else {
			$("#passcheck").html("<font color = 'red'>비밀번호를 6-20자리입력해주세요.</font>");
		}
		
	});//패스워드 체크
	
	$("#update").click(function () {
		
		if($("#inputPwd").val() != $("#inputPwdCheck").val() || $("#inputPwd").val().length < 6|| $("#inputPwd").val().length > 20 || $("#inputPwd").val().replace(" ","").length != $("#inputPwd").val().length){
			alert("비밀번호를 확인해주세요.");
			return false;

		}else if ($("#phone").val().length < 1 || $("#phone").val().length > 15 || isNaN($("#phone").val())) {
			alert("전화번호를 확인해주세요.");
			return false;

		}else if ($("#address").val().length < 1 || ($("#address").val().length > 100)) {
			alert("주소를 확인해주세요.");
			return false;
		}else if ($("#detailaddress").val().length < 1 || ($("#detailaddress").val().length > 100)) {
			alert("상세주소를 확인해주세요.");
			return false;
		}else if ($("#introduction").val().length < 1 || ($("#introduction").val().length > 330)) {
			alert("자기소개를 확인해주세요.");
			return false;

		}else {
			alert("회원정보를 수정하였습니다");
		}
		
	});//유효성 검사
})
</script>

</head>

<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="titleText"  style="margin-left: 22%; margin-right: auto;">
		<font size="80" color="black">정보수정</font><br>
	</div>

	<div class="container-fluid" style="margin-bottom: 100px">
		<header><%@include file="/mypage_form/mypageHeader.jsp"%></header>
	</div>
	<div class="container-fluid">
		<form class="form-horizontal" style="margin-left: 25%" role="form"
			action="myprofile_update2.do">
			<div class="form-group">
				<label for="inputId" class="col-sm-2 control-label">ID</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputId"
						placeholder="${member.member_id }"  value="${member.member_id }" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputName" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputName"
						placeholder="${member.name }" value="${member.name }" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPwd" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="inputPwd" name="pass"
						placeholder="Password (6-20)" >
				</div>
				<div id="passcheck" ></div>
			</div>
			<div class="form-group">
				<label for="inputPwdCheck" class="col-sm-2 control-label">CheckPassword</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="inputPwdCheck"
						placeholder="CheckPassword">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPhone" class="col-sm-2 control-label">Phone</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputPhone" name="phone"
						placeholder="${member.phone } " value="${member.phone }">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail" class="col-sm-2 control-label">E-mail</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputEmail" 
						placeholder="${member.email }"  value="${member.email }"disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress" class="col-sm-2 control-label">Address</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputAddress" name="address"
						placeholder="" value ="" onclick="DaumPostcode()">
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress" class="col-sm-2 control-label">Detail Address</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputdetailAddress" name="inputdetailaddress"
						placeholder="" value ="">
				</div>
			</div>

			<div class="form-group">
				<label for="inputNickName" class="col-sm-2 control-label">NickName</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputNickName"
						placeholder="${member.nickname }" value="${member.nickname }" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputIntro" class="col-sm-2 control-label">Introduction</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputIntro" name="introduction"
						placeholder="${member.introduction }" value="${member.introduction }">
				</div>
			</div>
			
			<div class="form-group">
				<label for="Birthday" class="col-sm-2 control-label">Birthday</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="Birthday"
						placeholder="${member.birthday }" value="${member.birthday }" disabled>
				</div>
			</div>

			<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
				<button type="submit" class="btn btn-default" id="update"
					style="margin-right: 5%">Update</button>
			</div>
	</form>
	</div>
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img
			src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>

	<br>
	<br>
	<br>

	<div class="container">

		<hr>

		<!-- Footer -->
		<footer>
			<%@include file="/regist_form/footer.jsp"%></footer>

	</div>
	<!-- Script -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 화면을 넣을 element
		var element_layer = document.getElementById('layer');

		function closeDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_layer.style.display = 'none';
		}

		function DaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = data.address; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수

					// 기본 주소가 도로명 타입일때 조합한다.
					if (data.addressType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')'
								: '');
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					// document.getElementById('sample2_postcode').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('inputAddress').value = fullAddr;
					//document.getElementById('sample2_addressEnglish').value = data.addressEnglish;

					// iframe을 넣은 element를 안보이게 한다.
					// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					element_layer.style.display = 'none';
				},
				width : '100%',
				height : '100%'
			}).embed(element_layer);

			// iframe을 넣은 element를 보이게 한다.
			element_layer.style.display = 'block';

			// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
			initLayerPosition();
		}

		// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
		// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
		// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 460; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께

			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
					+ 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
					+ 'px';
			element_layer.style.zIndex = 10001;
		}
		
	</script>
</body>
</html>