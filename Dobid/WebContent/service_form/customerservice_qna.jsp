<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자주하는 질문</title>
<!-- customerservice_qna.jsp -->

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">


</script>

<!-- *.do 에 대한 CSS, 파일 경로 -->
<link rel="stylesheet" type="text/css" href="service_form/css/service.css">
<script src="service_form/js/customerservice_qna.js"></script>


<!-- JSP파일에 대한 CSS, JS 파일 경로 -->
<link rel="stylesheet" type="text/css" href="css/service.css">
<script src="js/customerservice_qna.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<header><%@include file="/regist_form/header.jsp"%></header>
<body>

<p class="col-sm-offset-2" style="margin-top: 70px">
<a href="service_qna.do"><button class="button button5 btn-default active">자주하는 질문</button></a>
<a href="service_ono.do"><button class="button button5 btn-default">1 : 1 문의</button></a>
<a href="service_report.do"><button class="button button5 btn-default">신고하기</button></a>
</p>
<hr>
<p class="col-sm-offset-2" id="serviceBtn">
<button class="service button button5 btn-default active" id="all">전체</button>
<button class="service button button5 btn-default" id="buy">구매관련</button>
<button class="service button button5 btn-default" id="sell">판매관련</button>
<button class="service button button5 btn-default" id="use">이용안내</button>
<button class="service button button5 btn-default" id="fraud">사기</button>
<button class="service button button5 btn-default" id="ect">기타</button>
</p>
<br>
<div class="panel-group col-sm-8 col-sm-offset-2" id="accordion" role="tablist" aria-multiselectable="true">

  <div class="panel panel-default" id="buy">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
      		<b>[구매관련] 신상경매와 중고경매의 차이를 알고 싶어요.</b>
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
			신상경매는 시중에 나와 있는 신제품이나 재고 상품을 저희 사이트에서 물품으로 올려 경매 방식으로 입찰하여 판매하는 방식이며 중고경매는 개인 판매자가 물품을 등록하여 구매자가 입찰하여 물건을 구매하는 방식입니다.

      </div>
    </div>
  </div>
  <div class="panel panel-default" id="buy">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
      		<b>[구매관련] 구매 방법을 알고 싶어요.</b>
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
			경매의 경우, 입찰 된 금액보다 높은 금액을 입력한 후에 입찰하기를 누르시면 입찰을 하실 수 있습니다.<br>
 공동구매의 경우, 달성된 구매자의 인원만큼 낮아진 금액의 값으로 물건을 구매하실 수 있습니다.
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="sell">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
			<b>[판매관련] 물건을 판매하고 싶은데 누구나 판매자가 될 수 있나요?</b>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
			네. 누구든 중고경매를 통해 물품을 판매하실 수 있으며 판매하는 제품을 등록하시면 구매자의 입찰을 통해서 물건을 판매 하게 됩니다.
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="sell">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
			<b>[판매관련] 신상 경매의 판매 물품은 믿을 수 있나요?</b>
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      <div class="panel-body">
			신상경매의 판 제품은 저희가 후원을 받아서 경매를 통해 판매를 하며 구매한 물품은 모두 신제품임을 알려드립니다.
      </div>
    </div>
  </div>
   <div class="panel panel-default" id="use">
    <div class="panel-heading" role="tab" id="headingfive">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapsefive" aria-expanded="false" aria-controls="collapsfive">
			<b>[이용안내] 아이디 비밀번호를 잊어 버렸어요.</b>
        </a>
      </h4>
    </div>
    <div id="collapsefive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfive">
      <div class="panel-body">
			아이디와 비밀번호는 아래의 경로를 통해 찾을 수 있습니다.<br>
			*홈페이지 > 아이디/비밀번호 찾기 <a>바로가기</a><br>
			아이디 찾기 : 회원가입 시 등록하셨던 정보를 통해 아이디를 찾으실 수 있습니다.<br>
비밀번호 찾기 : 회원가입 시 등록하셨던 이메일로 발송된 새로운 비밀번호 입력하시여 로그인 후에 비밀번호를 재설정해주시기 바랍니다.
			
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="use">
    <div class="panel-heading" role="tab" id="headingsix">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
			<b>[이용안내]  낙찰금은 어떻게 받나요?</b>
        </a>
      </h4>
    </div>
    <div id="collapsesix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingsix">
      <div class="panel-body">
			구매자가 물품을 확인한 후에 판매자가 입력한 계좌를 통해 입금해드립니다.
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="use">
    <div class="panel-heading" role="tab" id="headingseven">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
			<b>[이용안내] 포인트란 무엇인가요?</b>
        </a>
      </h4>
    </div>
    <div id="collapseseven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingseven">
      <div class="panel-body">
			포인트는 경매와 공동구매 시 사용가능한 온라인상의 재화를 뜻하며 1포인트 = 1원입니다.
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="use">
    <div class="panel-heading" role="tab" id="headingeight">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseeight" aria-expanded="false" aria-controls="collapseeight">
			<b>[이용안내] 포인트 충전/환불을 하고 싶어요.</b>
        </a>
      </h4>
    </div>
    <div id="collapseeight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingeight">
      <div class="panel-body">
			포인트 충전 방식은 신용카드/체크카드와 계좌이체, 무통장 입금을 통해 하실 수 있으며
			포인트 환불은 충전된 금액이 사용되지 않는 상태에서 충전일로부터 최대 7일 안에 충전된 입력된 계좌 번호를 통해 환불 받으실 수 있습니다.
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="fraud">
    <div class="panel-heading" role="tab" id="headingnine">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapsenine" aria-expanded="false" aria-controls="collapsenine">
			<b>[사기] 사기를 당했어요.</b>
        </a>
      </h4>
    </div>
    <div id="collapsenine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingnine">
      <div class="panel-body">
			사기당한 날짜 : <br>
			사기를 당한 물품 : <br>
			판매자 아이디 : <br>
			: 사기를 당한 물품, 판매자 아이디 등의 정보를 입력한 후에 물품의 사진을 찍어 아래의 경로를 통해 신고를 해주시면 처리 해드리겠습니다. <br>
			*홈페이지> 고객센터 > 신고하기 <a href="service_report.do">바로가기</a>
      </div>
    </div>
  </div>
  <!-- headingnine 중북으로 인한 생략 삭제 -->
  <div class="panel panel-default" id="fraud">
    <div class="panel-heading" role="tab" id="headingten">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseten" aria-expanded="false" aria-controls="collapseten">
			<b>[사기] 아이디를 도용당했어요.</b>
        </a>
      </h4>
    </div>
    <div id="collapseten" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingten">
      <div class="panel-body">
			도용당한 아이디 : <br>
			도용당한 날짜 : <br>
			도용당한 포인트 : <br>
			내용 : <br>
			 위 내용을 자세히 작성하여 아래의 경로를 통해 신고를 해주시면 처리를 해드리겠습니다.<br>
			*홈페이지> 고객센터 > 신고하기 <a href="service_report.do">바로가기</a>
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="ect">
    <div class="panel-heading" role="tab" id="heading11th">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse11th" aria-expanded="false" aria-controls="collapse11th">
			<b>[기타] 문의를 하고 싶은데 어디서 하나요?</b>
        </a>
      </h4>
    </div>
    <div id="collapse11th" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11th">
      <div class="panel-body">
			문의는 1대1 문의를 통해 가능하며 아래의 경로를 통해 문의 하실 수 있습니다.<br>
 			*홈페이지> 고객센터 > 1대1 문의 <a href="service_ono.do">바로가기</a>
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="ect">
    <div class="panel-heading" role="tab" id="heading12th">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse12th" aria-expanded="false" aria-controls="collapse12th">
			<b>[기타] 문의한 내용과 답변은 어디서 확인 하나요?</b>
        </a>
      </h4>
    </div>
    <div id="collapse12th" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12th">
      <div class="panel-body">
			문의 내용과 답변은 아래의 경로를 통해 문의 내역을 확인하실 수 있습니다.<br>
			*홈페이지> 마이페이지 > 문의내역 <a>바로가기</a>
      </div>
    </div>
  </div>
  <div class="panel panel-default" id="ect">
    <div class="panel-heading" role="tab" id="heading13th">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse13th" aria-expanded="false" aria-controls="collapse13th">
			<b>[기타] - 타인 명의 계좌로 인증 되지 않아요.</b>
        </a>
      </h4>
    </div>
    <div id="collapse13th" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading13th">
      <div class="panel-body">
			환불 계좌 인증의 경우 회원명과 동일한 예금주의 계좌로 인증이 가능해야 환불을 받으실 수 있습니다.
      </div>
    </div>
  </div>
</div>



</body>
</html>