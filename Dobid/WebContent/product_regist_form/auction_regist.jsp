<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/auction_regist.css" rel="stylesheet">
<script src="js/jquery-3.0.0.js"></script>
<body>
  <div class="wap">
  	<div class="content">
  		<div class="top_text">
  			<p>경매 등록하기</p>
  			<p>뒤로</p>
  		</div>
  		<form action="">
  		<div class="first_input">
  			<select class="cate_list" name="cate_list">
  				<option>분류를 선택해주세요.</option>
  				<option value="가전">가전</option>
  				<option value="골동품">골동품</option>
  				<option value="쿠폰">쿠폰</option>
  			</select>
  			<input type="text" class="title_text" name="title_text" placeholder="제목을 입력해주세요.">
  			<input type="text" class="count_text" name="count_text" placeholder="개수">
  		</div>
  		<div class="secon_input">
  			<img class="imag_view" alt="" src=""><br>
  			<input class="main_file" type="file" name="main_file">
  		</div>
  		<div class="the_input">
  			<div class="sub_image_box">
  			<img alt="" src="">
  			<img alt="" src="">
  			<img alt="" src="">
  			<img alt="" src="">
  			<img alt="" src="">
  			</div><br>
  			<input class="sub_file" type="file" name="sub_file">
  		</div>
  		<div class="check_and_cach">
  			<div>
  				<label>경매
  				<input type="radio" class="auction_check" name="auction_check" value="경매" checked="checked">
  				</label>
  				<label>핫경매
  				<input type="radio" class="auction_check" name="auction_check" value="핫경매">
  				</label>
  			</div>
  			<div class="start_cach_box">
  				<label for="no_box" class="big_text">시작금액</label>
  				<br/>
  				<input type="text" class="start_cach" name="start_cach" placeholder="&nbsp;&nbsp;시작 금액을 입력해주세요.">
  			</div>
  			 <div class="time_select">
  				<label for="no_box" class="big_text">종료시간</label>
				<br/>
				<div class="size">
					<select class="day" name="day">
						<option class="day_text">일</option>
									<script>
									for (i=1;i < 32 ;i++ )
										if(i < 10)
											document.write('<option value="0'+i+'">0'+i+'</option>');
											else
											document.write('<option value="'+i+'">'+i+'</option>');
									</script>
					</select>
					<select class="hour" name="hour">
						<option class="hour_text">시</option>
								<script>
									for (i=1;i < 25 ;i++ )
										if(i < 10)
											document.write('<option value="0'+i+'">0'+i+'</option>');
											else
											document.write('<option value="'+i+'">'+i+'</option>');
									</script>
					</select>
					<select class="minute" name="minute">
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
  			<textarea rows="20" cols="140" name="contents" style="resize: none;"></textarea>
  		</div>
  		<input class="sub_btn" type="submit" value="올리기">
  		</form>
  	</div>
  </div>
</body>
</html>