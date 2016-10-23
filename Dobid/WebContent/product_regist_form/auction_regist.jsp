<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /*2016-10-23
	작성자 : 신유동
*/	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/auction_regist.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.0.0.js"></script>
<script src="js/auction_regist.js"></script>
<title>경매등록</title>
<header><%@include file="/regist_form/header.jsp"%></header>
<body>
  <div class="wap">
  	<div class="content">
  		<div class="top_text">
  			<p>경매 등록하기</p>
  			<p>뒤로</p>
  		</div>
  		<form action="auction_regist.do" method="POST" enctype="multipart/form-data">
  		<div class="first_input">
  			<select class="form-control3" name="cate">
  				<option value="골동품">골동품</option>
  				<option value="미술">미술</option>
  				<option value="기념품">기념품</option>
 				<option value="가전">가전</option>
 				<option value="기타">기타</option>
			</select>
  			<input id="title_text" type="text" class="form-control4" name="title_text" placeholder="제목을 입력해주세요.">
  			<input id="count_text" type="text" class="form-control5" name="count_text" placeholder="개수" onkeydown="return showKeyCode(event)">
  		</div>
  		<div class="secon_input">
  			<img class="imag_view" alt="" src=""><br>
  			<div class="filebox main_file">
  				<label for="ex_file">업로드</label>
  				<input type="file" id="ex_file" name="main_file"> 
			</div>
  		</div>
  		<div class="the_input">
  			<div class="sub_image_box">
  			<img alt="" src="">
  			<img alt="" src="">
  			<img alt="" src="">
  			<img alt="" src="">
  			<img alt="" src="">
  			</div><br>
  			<div class="filebox sub_file">
  				<label for="ex_file">업로드</label>
  				<input type="file" id="ex_file" name="sub_file"> 
			</div>
  		</div>
  		<div class="check_and_cach">
  			<div>
  				<label class="checkbox-inline">
  					<input type="radio" id="inlineCheckbox1" name="auction_check" value="1" checked="checked"> 경매
				</label>
				<label class="checkbox-inline">
 					 <input type="radio" id="inlineCheckbox2" name="auction_check" value="2"> 핫 경매
				</label>
  			</div>
  			<div class="start_cach_box">
  				<label for="no_box" class="big_text">시작금액</label>
  				<br/>
  				<input id="start_cach" type="text" class="form-control6" name="start_cach" placeholder="&nbsp;&nbsp;시작 금액을 입력해주세요." onkeydown="return showKeyCode(event)">
  			</div>
  			 <div class="time_select">
  				<label for="no_box" class="big_text">종료시간</label>
				<br/>
				<div class="size">
					<select id="day" class="form-control7" name="day">
						<option class="day_text">일</option>
									<script>
									for (i=1;i < 32 ;i++ )
										if(i < 10)
											document.write('<option value="0'+i+'">0'+i+'</option>');
											else
											document.write('<option value="'+i+'">'+i+'</option>');
									</script>
					</select>
					<select id="hour" class="form-control7" name="hour">
						<option class="hour_text">시</option>
								<script>
									for (i=1;i < 25 ;i++ )
										if(i < 10)
											document.write('<option value="0'+i+'">0'+i+'</option>');
											else
											document.write('<option value="'+i+'">'+i+'</option>');
									</script>
					</select>
					<select id="minute" class="form-control7" name="minute">
						<option class="minute_text">분</option>
							<script>
									for (i=0;i < 60 ;i++ )
										if(i < 10)
											document.write('<option value="0'+i+'">0'+i+'</option>');
											else
											document.write('<option value="'+i+'">'+i+'</option>');
							</script>
					</select>
				</div>
			</div>
  		</div>
  		<div class="textarea_bot">
  			<textarea rows="20" cols="140" id="text_a" name="form-control" style="resize: none;"></textarea>
  		</div>
  		<input id="submitBtn" name="form_control" class="btn btn-default btn-lg btn-block sub_btn" type="submit" value="올리기" onClick="return input_check();">
  		</form>
  	</div>
  </div>
</body>
<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>
</html>