<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
    
<%
GuestBookDao guestBookDao = new GuestBookDao();
List<GuestBookVo> guestList = guestBookDao.guestbookList();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="add.jsp" method="post">
<table border="1">
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" value=""></td>
		<td>비밀번호</td>
		<td><input type="text" name="password" value=""></td>
	</tr>

	<tr>
		<td><textarea type="text" name="content" value=""></textarea></td>
	</tr>
	
	<tr><button type ="submit">확인</button></tr>

</table>
</form>
<br>

<%
	for(int i = 0; i <guestList.size();i++){
%>
<table border="1">
	<tr>
		<td><%=guestList.get(i).getNo() %></td>
		<td><%=guestList.get(i).getName() %></td>
		<td><%=guestList.get(i).getDate() %></td>
		<td><a href="./deleteForm.jsp">[삭제]</a></td>
	</tr>
	
	<tr>
		<td>첫번째 방명록내용<br><%=guestList.get(i).getContent() %></td>
	</tr>
</table>

<%
	}
%>

</body>
</html>