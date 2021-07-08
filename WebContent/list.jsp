<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

GuestBookDao guestBookDao = new GuestBookDao();

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr>
		<td>이름</td>
		<td><%= %></td>
		<td>비밀번호</td>
		<td><%= %></td>
	</tr>

	<tr>
		<td><textarea></textarea></td>
	</tr>
	
	<tr><button type ="submit">확인</button></tr>

</table>


</body>
</html>