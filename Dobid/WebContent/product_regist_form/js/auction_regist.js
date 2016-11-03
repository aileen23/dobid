/*2016-10-23
		작성자 : 신유동
	*/	 

function input_check(){
	  
	  var title = $('#title_text').val();
	  var count = $('#count_text').val();
	  var cash = $('#start_cach').val();
	  var day = $('#day').val();
	  var hour = $('#hour').val();
	  var minute = $('#minute').val();
	  var text = $('#text_a').val();
	  var time = new Date();
	  if(title == "" || count == "" || cash == "" || text == ""  || day == "일" || hour == "시" || minute == "분"){
		  alert("빈칸이 존재합니다.");
		  return false;
	  }else if(time.getDate() > Number(day)){
		  alert("지난 날짜를 종료시간으로 등록하지 못합니다.");
		  return false;
	  }else if(time.getDate() < Number(day) && time.getHours() > Number(hour)){
		  alert("지난 시간을 종료시간으로 등록하지 못합니다.");
		  return false;
	  }
  }
	
  function showKeyCode(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) )
		{
			return;
		}
		else
		{
			return false;
		}
	}

