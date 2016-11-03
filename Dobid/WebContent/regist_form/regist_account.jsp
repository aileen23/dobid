<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="/Dobid/regist_form/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<!-- Custom CSS -->
<link href="/Dobid/regist_form/css/shop-homepage.css" rel="stylesheet">
<link href="/Dobid/mypage_form/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">

<script type="text/javascript"
	src="/Dobid/mypage_form/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript"
	src="/Dobid/mypage_form/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var regid = /^[A-Za-z0-9]{6,20}$/;
		$("#checkid").click(function() {

			var url = "checkid.do";
			var params = "id=" + $("#id").val();

			$.ajax({
				type : "POST",
				url : url,
				data : params,
				success : function(args) {
					/* $("#result").html(args); */
					if (args != 1) {
						alert("이미 사용중인 아이디입니다.");
					}else if ($("#id").val().replace(" ", "").length != $("#id").val().length) {
						alert("아이디에 공백을 사용할수 없습니다.")
					} else if (!regid.test($("#id").val())) {
						alert("영문과 숫자 6-20자 이내로 입력하세요.");
					}
					else {
						if (confirm("사용가능한 아이디입니다. 이 아이디를 사용하시겠습니까?")) {
						$("#id").attr("readonly", true);
						$("#checkid").fadeOut(500);
						}
						else {
							return false;
						}
					}
				},
				error : function(e) {
					alert(e.responseText);
				}
			});

		});//checkid버튼 클릭시

		$("#checknickname").click(function() {

			var url = "checknickname.do";
			var params = "nickname=" + $("#nickname").val();

			$.ajax({
				type : "POST",
				url : url,
				data : params,
				success : function(args) {
					/* $("#result").html(args); */
					if (args != 1) {
						alert("이미 사용중인 닉네임입니다.");
					} else if ($("#nickname").val().length < 2 || $("#nickname").val().length > 10) {
						alert("2 - 10 자리의 닉네임을 입력해주세요.");
					}else if ($("#nickname").val().replace(" ", "").length != $("#nickname").val().length) {
						alert("닉네임에 공백을 사용할수 없습니다.");
					}
					else {
						if (confirm("사용 가능한 닉네임 입니다. 이 닉네임을 사용하시겠습니까?")) {
						$("#nickname").attr("readonly", true);
						$("#checknickname").fadeOut(500);							
						}
						else {
							return false;
						}
					}
				},
				error : function(e) {
					alert(e.responseText);
				}
			});

		});//checknickname버튼 클릭시
		
		$("#send").click(function() {
					$("#send").fadeOut(500);
			var url = "sendMail.do";
			var params = "receiver=" + $("#receiver").val();

			$.ajax({
				type : "POST",
				url : url,
				data : params,
				success : function(args) {
					if (args == 0) {
						alert("이미 회원가입된 이메일 입니다.");
						$("#send").fadeIn(500);
					}else {
					alert("이메일이 발송 되었습니다. \n 발송된 이메일을 확인하고 인증 번호를 입력해주십시오~!");
					$("#buffer").val(args);
					}
				},
				error : function(e) {
					alert(e.responseText);
				}
			});

		});//send 버튼 클릭시

		$(":password").keyup(function() {
			if ($("#password").val() == $("#checkpassword").val() && $("#password").val().length > 5 && $("#password").val().length < 21 && $("#password").val().replace(" ","").length == $("#password").val().length) {
				$("#passcheck").html("<font color = 'blue'>o</font>");
			}else if ($("#password").val().length == 0 || $("#checkpassword").val().length == 0) {
				$("#passcheck").html("");
			}
			else {
				$("#passcheck").html("<font color = 'red'>x</font>");
			}
			
		});//패스워드 체크
		
		$("#account").click(function () {
			if ($("#id").attr("readonly") != "readonly") {
				alert("아이디 중복체크를 해주세요.");
				return false;
			}else if($("#password").val() != $("#checkpassword").val() || $("#password").val().length < 6|| $("#password").val().length > 20 || $("#password").val().replace(" ","").length != $("#password").val().length){
				alert("비밀번호를 확인해주세요.");
				return false;
			}else if ($("#name").val().length < 2 || $("#name").val().length > 13 || $("#name").val().replace(" ","") != $("#name").val()) {
				alert("이름을 확인해주세요.");
				return false;
			}else if ($("#phone").val().length < 1 || $("#phone").val().length > 15 || isNaN($("#phone").val())) {
				alert("전화번호를 확인해주세요.");
				return false;
			}else if ($("#email").val().length < 1 || ($("#email").val().length > 30)){
				alert("이메일을 확인해주세요.");
				return false;
			}else if ($("#nickname").attr("readonly") != "readonly") {
				alert("닉네임 중복체크를 해주세요.");
				return false;
			}else if ($("#address").val().length < 1 || ($("#address").val().length > 100)) {
				alert("주소를 확인해주세요.");
				return false;
			}else if ($("#detailaddress").val().length < 1 || ($("#detailaddress").val().length > 100)) {
				alert("상세주소를 확인해주세요.");
				return false;
			}else if ($("#detailaddress").val().replace("%", "") != $("#detailaddress").val()) {
				alert("상세주소에 특수문자 (%)를 사용할수 없습니다.");
				return false;
			}else if ($("#introduction").val().length < 1 || ($("#introduction").val().length > 330)) {
				alert("자기소개를 확인해주세요.");
				return false;
			}else if ($("#birthday").val().length < 1) {
				alert("생일을 확인해주세요.");
				return false;
			}else {
				alert("Do!bid 회원가입을 환영합니다.");
			}
			
		});//유효성 검사
		
		
		$("#popup").fadeOut(500);//팝업창 숨기기
		
		$("#email_check").click(function(){
		$("#popup").fadeIn(700);
		});
		$("#close").click(function(){
			$("#popup").fadeOut(500);
		});//팝업창 띄우기
		
		
		$("#check_buffer").click(function () {
			if ($("#buffer").val() == $("#certification").val()) {
				$("#popup").hide();
				$("#email").val($("#receiver").val());
				$("#email").attr("readonly", true);
				$("#email_check").fadeOut(500);
				alert("이메일 인증에 성공하셨습니다.");
			}else {
				alert("인증번호가 일치하지 않습니다.");
			}
			
		});//이메일 인증번호 확인버튼 클릭시

	});//ready
</script>

</head>


<body>
	<header><%@include file="header.jsp"%></header>
	<!-- 헤더 -->
	<br>
	<br>
	<br>

	<center>
		<font size="80" color="black" id="font1">Register</font><br>
	</center>
	<center>
		<font size="3" color="black" id="font2">your Account</font>
	</center>
	<br>
	<div class="container">
		<form class="form-horizontal" style="margin-left: 25%" method="post"
			action="do_regist_account.do">

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">ID</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="id"
						placeholder="ID (6-20)" id="id">
				</div>
				<button type="button" class="btn btn-default" id="checkid"
					style="margin-right: 5%">Check</button>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" name="pass"
						placeholder="Password (6-20)" id="password">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">CheckPassword</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" name="checkpass"
						placeholder="CheckPassword" id="checkpassword">
				</div>
				<div id="passcheck" ></div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="name"
						placeholder="Name (2-13)" id="name">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Phone</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="phone"
						placeholder="Phone (' - ' except)" id="phone">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">E-mail</label>
				<div class="col-sm-4">
					<input type="email" class="form-control" name="email"
						placeholder="E-mail" id="email" readonly="readonly">
				</div>
				<button type="button" class="btn btn-default" id="email_check"
					style="margin-right: 5%">Check</button>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">NickName</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="nickname"
						placeholder="NickName" id="nickname">
				</div>
				<button type="button" class="btn btn-default"
					style="margin-right: 5%" id="checknickname">Check</button>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Address</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="address"
						 placeholder="Address" id="address"
						onclick="DaumPostcode()">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Detail Address</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="detailaddress"
						 placeholder="Address" id="detailaddress">
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Introduction</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="introduction"
						 placeholder="Introduction"
						id="introduction">
				</div>
			</div>
			<div class="form-group">
				<label  class="col-sm-2 control-label" style="margin-right: 1.7%">Birthday</label>
				<div class="input-group date form_date col-sm-4" data-date=""
					data-date-format="yyyymmdd" data-link-field="dtp_input2"
					data-link-format="yyyy-mm-dd">
					<input class="form-control" size="16" type="text" name="birthday" id="birthday"
						value="" readonly> <span class="input-group-addon"><span
						class="glyphicon glyphicon-remove"></span></span> <span
						class="input-group-addon"><span
						class="glyphicon glyphicon-calendar"></span></span>
				</div>
				<input type="hidden" id="dtp_input2" value="" /><br />
			</div>


			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
					<button type="submit" class="btn btn-default"
						style="margin-right: 5%" id="account" >Sign
						up</button>
				</div>
			</div>

			<div id="layer"
				style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
				<img
					src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
					id="btnCloseLayer"
					style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
					onclick="closeDaumPostcode()" alt="닫기 버튼">
			</div>
			<br> <br> <br>
		</form>
	</div>
	
	
	<div id="popup" class="overlay" style="  z-index: 25;
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    background-color: rgba(0,0,0,0.6);
    width: 100%;
    height: 100%;">
    <div style="background-color: white; width: 40%; height: 30%; margin-left: 30%; margin-top: 17%; border: 1px solid black;">

			<br>
			<center><font size="4" color="black">이메일 인증</font></center>
			<br>
			<form class="form-horizontal"  method="post">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-4 control-label">E-mail</label>
				<div class="col-sm-5">
					<input type="email" class="form-control"
						placeholder="이메일 입력" id="receiver" >
				</div>
				<button type="button" class="btn btn-default" id="send"
					style="margin-right: 5%">발송</button>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-4 control-label">인증번호</label>
				<div class="col-sm-5">
					<input type="email" class="form-control"
						placeholder="인증번호 입력" id="certification">
				</div>
				<button type="button" class="btn btn-default" id="check_buffer"
					style="margin-right: 5%">확인</button>
			</div>
			<br>
			
			<button type="button" class="btn btn-default" id="close"
					style="margin-left: 45%">닫기</button>
					
			<input type="text" hidden="" id="buffer">
			</form>


		</div>
	</div>
	
	
	
	<div class="container">

		<hr>

		<!-- Footer -->
		<footer>
			<%@include file="/regist_form/footer.jsp"%>
		</footer>

	</div>
		<script type="text/javascript"
      src="/Dobid/mypage_form/js/bootstrap-datetimepicker.js"
      charset="UTF-8"></script>
	<script type="text/javascript">
$('.form_datetime').datetimepicker({
    //language:  'fr',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	forceParse: 0,
    showMeridian: 1
});
$('.form_date').datetimepicker({
    language:  'uk',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0
});
$('.form_time').datetimepicker({
    language:  'uk',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 1,
	minView: 0,
	maxView: 1,
	forceParse: 0
});

// 우편번호 찾기 화면을 넣을 element
var element_layer = document.getElementById('layer');

function closeDaumPostcode() {
    // iframe을 넣은 element를 안보이게 한다.
    element_layer.style.display = 'none';
}

function DaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = data.address; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 기본 주소가 도로명 타입일때 조합한다.
            if(data.addressType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
           // document.getElementById('sample2_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('address').value = fullAddr;
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
function initLayerPosition(){
    var width = 300; //우편번호서비스가 들어갈 element의 width
    var height = 480; //우편번호서비스가 들어갈 element의 height
    var borderWidth = 5; //샘플에서 사용하는 border의 두께
    var zIndex = 10001;

    // 위에서 선언한 값들을 실제 element에 넣는다.
    element_layer.style.width = width + 'px';
    element_layer.style.height = height + 'px';
    element_layer.style.border = borderWidth + 'px solid';
    element_layer.style.zIndex = zIndex;
    // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
    element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
    element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    element_layer.style.opacity = 0.8;
}

</script>
</body>
</html>