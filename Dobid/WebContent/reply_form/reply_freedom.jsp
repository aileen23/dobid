<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--  abc{스타일}   ===> 문서내에서 <abc>태그에 스타일 적용
     .abc{스타일}    ===> 문서내에서 <div class="abc">태그에 스타일 적용
     #abc{스타일}     ===> 문서내에서 <abc id="abc">태그에 스타일 적용 -->
  <style type="text/css">
     .reply{
        margin-top: 30px;
        border-top: 1px solid black;
     }
  </style>
  <script type="text/javascript" src="/Dobid/js/ajax2.js"></script>
  <script type="text/javascript">
    //댓글 등록 작업 : addReply, addResult
    function addReply(){//댓글 등록 요청
       var name = document.addForm.name.value;	
       var content = document.addForm.content.value;	
       var num = document.addForm.num.value;	
       var nickname = document.addForm.nickname.value;	
       
       var params="name="+name+"&content="+content+"&num="+num+"&nickname="+nickname; //"name=길동&content=안녕"
        /* alert(params); */
       new ajax.xhr.Request("/Dobid/freeboard_content_view_reply_add.do", params, addResult, 'POST');	
        
       if (name === "") {
			if (confirm("로그인이 필요합니다 \n로그인 하시겠습니까?") == true) { //확인
				location.href = "/Dobid/login.do";
			} else { //취소
				return;
			}
		}else if(content===""){
			alert("내용을 입력해주세요");
		}
    }//addReply
    function addResult(xhr){//등록요청후 실행할 콜백함수
       if(xhr.readyState==4){
    	  if(xhr.status==200){
    		  var msg = xhr.responseText;
    		  alert(msg.trim());
    		  
    		  loadReplyList();
    		
    		  document.addForm.content.value='';
    		  document.addForm.name.focus();
    	  }
       }	
    }//addResult  
    
    function updateReply(no, name){//댓글 수정 요청
       var no = document.updateForm.no.value;	
       var name = document.updateForm.name.value;	
       var content = document.updateForm.content.value;	
       var num = document.updateForm.num.value;	
       var nickname = document.updateForm.nickname.value;	
       var params="no="+no+"&name=${logincheck}&content="+content+"&num="+num+"&nickname="+nickname;
           //"no=3&name=길동&content=안녕"
       new ajax.xhr.Request("/Dobid/freeboard_content_view_reply_update.do", params, updateResult, 'POST');	
           
       var name2 = document.addForm.name.value;
		if (name2 === "") {
			if (confirm("로그인이 필요합니다 \n로그인 하시겠습니까?") == true) { //확인
				location.href = "/Dobid/login.do";
			} else { //취소
				return;
			}
		}
    }//updateReply
    
    function updateResult(xhr){//수정요청후 실행할 콜백함수
       if(xhr.readyState==4){
    	  if(xhr.status==200){
    		  var msg = xhr.responseText;
    		  alert(msg.trim());
    		  hideUpdateForm();//수정폼 숨기기
    		  
    		  loadReplyList();//변경된 내용 목록 재요청 		 
    	  }
       }	
    }//updateResult  
    
    function deleteReply(no,name){//댓글 삭제요청
    	var name = document.addForm.name.value;
       new ajax.xhr.Request('/Dobid/freeboard_content_view_reply_delete.do','no='+no+'&name=${logincheck}',deleteResult,'POST');	
    
       var name2 = document.addForm.name.value;
		if (name2 === "") {
			if (confirm("로그인이 필요합니다 \n로그인 하시겠습니까?") == true) { //확인
				location.href = "/Dobid/login.do";
			} else { //취소
				return;
			}
		}
    }
    function deleteResult(xhr){//삭제요청후 콜백
       if(xhr.readyState==4){
    	 if(xhr.status==200){
    		 alert( xhr.responseText );//삭제 성공여부 출력
    		 
    		 loadReplyList();//변경된 내용 목록 재요청 	
    	 }else{
    		// alert('서버에러:'+xhr.status)
    	 }  
       } 
    }
    
    
    function loadReplyList(){//목록요청
       new ajax.xhr.Request('/Dobid/freeboard_content_view_reply_list.do',"num=${param.num}",loadReplyResult);
    }//loadReplyList
    
    function loadReplyResult(xhr){//콜백: 목록출력
       if(xhr.readyState==4){
    	 if(xhr.status==200){
    		var list = eval('('+xhr.responseText+')');
    		//[{no:1,name:'길동',content:'내용'},{},{}] 
    	    //list ---> 배열객체
    	    var replyList = document.getElementById('replyList');
    	    
    	    
    	    //이전 자식노드 삭제
    	    var divList = replyList.childNodes;
    	    //alert('자식수: '+ divList.length)
    	    /* for(var i=0; i<divList.length; i++){    	    	
    	    	replyList.removeChild(replyList.firstChild); 	    	
    	    } */   	    
    	    while(replyList.hasChildNodes()){
    	      replyList.removeChild(replyList.firstChild);
    	    }
    	    
    	    //alert('삭제후 자식수: '+ divList.length)
    	    
    	    
    	    for(var i=0; i<list.length; i++){
    	    	var replyDiv = makeReplyView(list[i]);
    	        replyList.appendChild(replyDiv);
    	    }
    	    //alert('추가후 자식수: '+ divList.length)
    	 }else{
    		// alert('서버에러:'+xhr.status)
    	 }  
       }	
    }//loadReplyResult
    
    function viewUpdateForm(no){//수정폼 보이기
       var replyDiv = document.getElementById("r"+no);//댓글div
       var upFormDiv = document.getElementById("replyUpdate");//수정폼div
       
       //댓글<div>태그에 정의된 reply(JSON)객체 얻기
       var reply = replyDiv.reply;
       
       /* alert('reply.no='+reply.no);
       alert('document.updateForm='+document.updateForm);
       alert('document.updateForm.no='+document.updateForm.no);  */
       
       document.updateForm.no.value=  reply.no;
       document.updateForm.name.value= reply.name;
       document.updateForm.content.value= reply.content;       
       document.updateForm.nickname.value= reply.nickname;       
       
       if(name===""){
    	   if (confirm("로그인이 필요합니다 \n로그인 하시겠습니까?") == true){    //확인
    		   location.href="/Dobid/login.do";
       	}else{   //취소
       	    return;
       	}
		}else{
      
      replyDiv.appendChild(upFormDiv);    
      upFormDiv.style.display='';
		}
       
       
    }//viewUpdateForm
    
    function hideUpdateForm(){//수정폼 감추기
    	
      var upFormDiv = document.getElementById("replyUpdate");//수정폼div	
      
      var root = document.documentElement;//<html>엘리먼트
      //document.getElementsByTagName('body').item(0); //<body>엘리먼트
      root.appendChild(upFormDiv);
      
      upFormDiv.style.display='none';
      
      
    }
    
    
    window.onload=function(){
    	loadReplyList();    	
    }    
    
    
    function makeReplyView(reply){//댓글에 대한 <div>태그 생성
    //reply: { no:1, name:'나기롱', content:'Ajax재밌어요~!!' }
      var replyDiv = document.createElement('div');//<div></div>
      replyDiv.setAttribute("id","r"+ reply.no);//<div id="r1"></div>	
      var html =  '<br><strong>'+reply.nickname+'</strong><br><div id=old_data>'+
               reply.content.replace('/\n/g', '\n<br>')+'<br>'+
 		'<div  style="float: right;">'+
 		'<input type="button" value="수정" onclick="viewUpdateForm('+reply.no+')">'+
      	'<input type="button" value="삭제" onclick="deleteReply('+reply.no+')"></div></div>';
      replyDiv.innerHTML = html; // <div id="r1">나길롱<br>안녕<br>수정삭제</div>	        
      replyDiv.reply = reply; //replyDiv엘리먼트에 reply JSON객체저장
      replyDiv.className='reply'; //<div id="r1" class="reply">내용</div>
      return replyDiv;
    }//makeReplyView
  </script>
</head>
<!-- replyclient.html -->
<body>
	<div style="width: 40%; margin-left: 33.3%">
  <!-- 댓글 목록 출력 -->
  <div id="replyList" style="width: 100%;" ></div>
  
  <!-- 댓글 입력폼 -->
  <div id="replyAdd" style="margin-top: 30px; border-top: 1px solid black;" >
     <form name="addForm">
     	
     	<div style="width: 100%; margin-top: 10px;">
     	
     	<input type="hidden" name="name" size="10" value="${logincheck }" ><br>
        <input type="hidden" name="num" size="10" value="${freeobject.basic_board_num }" style="display: ;" readonly="readonly">
        <input type="hidden" name="nickname" size="10" value="${nickname }" style="display: ;" readonly="readonly">
        </div>
		<div>
   		<textarea rows="5" name="content" style="vertical-align: middle; width: 75%"></textarea>
        <input type="button" value="등록" style="width: 18%; height: 70px; margin-left: 3%" onclick="addReply()">
		</div>
     </form>  
  </div>

  <!-- 댓글 수정폼 -->
  <div id="replyUpdate" style="display:none; margin: 10px;">
     <form name="updateForm">
       <input type="hidden" name="no">
       	 <input type="hidden" name="nickname" size="10" style="display: ;" readonly="readonly">
       	 <input type="hidden" name="num" size="5" value="${freeobject.basic_board_num }" style="display: ;" readonly="readonly">
         <input type="hidden" name="name" size="10" readonly="readonly"><br>
         
        <textarea rows="5" style="width: 105%" name="content"></textarea><br><br>
       <input type="button" value="취소" style="float: right;" onclick="hideUpdateForm()">
       <input type="button" value="등록" style="float: right;" onclick="updateReply()">
       <br>
     </form>    
  </div>
  </div>

</body>
</html>



