<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 $(function(){
	$('sendMessage').click(function(){
		$.ajax({
			url:'/',
			data:'',
			type:'POST',
			success:function(result){
				$('#printdiv').html(result);	
			}
		});
	});
	 
 });

</script>
</head>
<body>
<table>
<tbody>
<tr><td>받는사람 : </td><td><input type="text" id="memberid"></td></tr>
<tr><td>제목 :</td><td><input type="text" id="title"></td></tr>
<tr><td>내용 :</td><td><textarea rows="15" cols="40" id="contents"></textarea></td></tr>
</tbody>
</table>
<input type="button" value="보내기" id="sendMessage">
</body>
</html>