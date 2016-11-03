<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /*2016-11-02
	작성자 : 신유동
*/	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/Dobid/product_regist_form/css/groupbuy_regist.css" rel="stylesheet" type="text/css">
<script src="/Dobid/product_regist_form/js/jquery-3.0.0.js"></script>
<script src="/Dobid/product_regist_form/js/auction_regist.js"></script>
<title>경매등록</title>
<script type="text/javascript">
$( document ).ready(function() {


	$('.file_form').change(function() { 
		readURL(this); 
	
	});
	$('.file_form2').change(function() { 
		readURL2(this); 
	
	});
	function readURL(input) { 
        if (input.files && input.files[0]) { 
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성 
            reader.onload = function (e) { 
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러 
                $('.imag_view').attr('src', e.target.result); 
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정 
                //(아래 코드에서 읽어들인 dataURL형식) 
            }                    
            reader.readAsDataURL(input.files[0]); 
            //File내용을 읽어 dataURL형식의 문자열로 저장 
        } 
    }//readURL()-- 
    function readURL2(input) {
    	var file = input.files; // files 를 사용하면 파일의 정보를 알 수 있음
		var count = 0;
    	// 파일의 갯수만큼 반복
    	if(file.length > 5){
    		alert("5개 이상은 못올립니다.");
    		return;
    	}
    	for(var i=0; i<file.length; i++){

    		var reader = new FileReader(); // FileReader 객체 사용
    		reader.onload = function(rst){
    			var st = ".a"+count;
    			count++;
    			$(st).attr("src", rst.target.result); // append 메소드를 사용해서 이미지 추가
    			// 이미지는 base64 문자열로 추가
    			// 이 방법을 응용하면 선택한 이미지를 미리보기 할 수 있음
    		}
    		reader.readAsDataURL(file[i]); // 파일을 읽는다

    	}

    }//readURL()-- 
});
</script>
<header><%@include file="../admin_form/admin_header.jsp"%></header>
<body>
  <div class="wap">
  	<div class="content">
  		<div class="top_text">
  			<p>경매 등록하기</p>
  			<p>뒤로</p>
  		</div>
  		<form action="groupbuy_regist_regist.do" method="get" enctype="multipart/form-data">
  		<div class="first_input">
  			<select class="form-control3" name="cate">
  				<option value="미술">미술</option>
 				<option value="골동품">골동품</option>
 				<option value="의류">의류</option>
 				<option value="기타">기타</option>
			</select>
  			<input id="title_text" type="text" class="form-control4" name="title_text" placeholder="제목을 입력해주세요.">
  			<input id="count_text" type="text" class="form-control5" name="count_text" placeholder="개수" onkeydown="return showKeyCode(event)">
  		</div>
  		<div class="secon_input">
  			<img class="imag_view" alt="" src=""><br>
  			<div class="filebox main_file">
  				<label for="ex_file">업로드</label>
  				<input type="file" id="ex_file" class="file_form" name="main_file"> 
			</div>
  		</div>
  		<div class="the_input">
  			<div class="sub_image_box">
  			<img class="a0" alt="" src="">
  			<img class="a1" alt="" src="">
  			<img class="a2" alt="" src="">
  			<img class="a3" alt="" src="">
  			<img class="a4" alt="" src="">
  			</div><br>
  			<div class="filebox sub_file">
  				<label for="ex_file2">업로드</label>
  				<input multiple="multiple" type="file" id="ex_file2" class="file_form2" name="sub_file"> 
			</div>
  		</div>
  		<div class="check_and_cach">

  			<div class="start_cach_box" style="margin-left: 20%;">
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
									for (i=1;i < 24 ;i++ )
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
			<div class="start_cach_box" style="margin-left: 20%;">
  				<label for="no_box" class="big_text">단계별 인원수</label>
  				<br/>
  				<input id="start_cach" type="text" class="form-control6" name="step_participant" placeholder="&nbsp;&nbsp;숫자만 입력해주세요." onkeydown="return showKeyCode(event)">
  			</div>
  			<div class="time_select">
  				<label for="no_box" class="big_text">할인률</label>
  				<br/>
  				<input id="start_cach" type="text" class="form-control6" name="step_discoun" placeholder="소수점없이 숫자만 입력해주세요." onkeydown="return showKeyCode(event)">
  			</div>
  			
  		</div>
  		<div class="textarea_bot">
  			<textarea rows="20" cols="140" id="text_a" name="textarea" style="resize: none;"></textarea>
  		</div>
  		<input id="submitBtn" name="form_control" class="btn btn-default btn-lg btn-block sub_btn" type="submit" value="올리기" onClick="return input_check();">
  		</form>
  	</div>
  </div>
</body>
<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>