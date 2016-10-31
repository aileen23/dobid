<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 $(function(){
	$('#sendMessage2').click(function(){
		 $.ajax({
			url:'/Dobid/sendmessage.do',
			data:{
				member_id:$('#member_id').val(),
				title:$('#title').val(),
				contents:$('#contents').val()				
			},
			type:'POST',
			success:function(result){
				alert("메세지를 전송하였습니다");
				$('#printdiv').html(result);	
			},
			error:function(xhr,status,error){
				alert(error);
			}
		});
	});
	 
 });

</script>
</head>
<body>
<table style="margin-left: 150px">
<tbody>
<tr><td>받는사람 : </td><td><input type="text" id="member_id"></td></tr>
<tr><td>제목 :</td><td><input type="text" id="title"></td></tr>
<tr><td>내용 :</td><td><textarea rows="15" cols="40" id="contents"></textarea></td></tr>
</tbody>
</table>
<input type="button" value="보내기" id="sendMessage2">
</body>
</html>