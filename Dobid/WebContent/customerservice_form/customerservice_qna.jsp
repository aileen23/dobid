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
<script src="js/customerservice.js"></script>

<link rel="stylesheet" type="text/css" href="css/customerservice.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<header><%@include file="../regist_form/header.jsp"%></header>
<body>

<p class="col-sm-offset-2" style="margin-top: 70px">
<a href="customerservice_qna.jsp"><button class="button button5 btn-default active" style="">자주하는 질문</button></a>
<a href="customerservice_ono.jsp"><button class="button button5 btn-default">1 : 1 문의</button></a>
<a href="customerservice_report.jsp"><button class="button button5 btn-default">신고하기</button></a>
</p>
<hr>
<p class="col-sm-offset-2">
<button class="button button5 btn-default">전체</button>
<button class="button button5 btn-default">구매관련</button>
<button class="button button5 btn-default">판매관련</button>
<button class="button button5 btn-default">이용안내</button>
<button class="button button5 btn-default">사기</button>
<button class="button button5 btn-default">기타</button>
</p>
<br>
<div class="panel-group col-sm-8 col-sm-offset-2 text-center" id="accordion" role="tablist" aria-multiselectable="true">

  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
      		애국가 1절
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
			동해물과 백두산이 마르고 닳도록  <br>
			하느님이 보우하사 우리나라 만세.  <br>
			무궁화 삼천리 화려강산  <br>
			대한 사람, 대한으로 길이 보전하세

      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
      		애국가 2절
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
			 남산 위에 저 소나무, 철갑을 두른 듯 <br>
			바람서리 불변함은 우리 기상일세. <br>
			무궁화 삼천리 화려강산 <br>
			대한 사람, 대한으로 길이 보전하세
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
			애국가 3절
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
			가을 하늘 공활한데 높고 구름 없이 <br>
			밝은 달은 우리 가슴 일편단심일세. <br>
			무궁화 삼천리 화려강산 <br>
			대한 사람, 대한으로 길이 보전하세
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
			애국가 4절
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      <div class="panel-body">
			이 기상과 이 맘으로 충성을 다하여 <br>
			괴로우나 즐거우나 나라 사랑하세. <br>
			무궁화 삼천리 화려강산 <br>
			대한 사람, 대한으로 길이 보전하세<br>
      </div>
    </div>
  </div>
</div>



</body>
</html>