<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="com.javaex.dao.GuestDao"%>
<%@page import="com.javaex.vo.GuestVo"%>

<%
	GuestDao guestDao = new GuestDao();
	List<GuestVo> guestList = guestDao.getGuestList();

	System.out.println(guestList.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./add.jsp" method="get">
		<table border="1" width="500">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan=4><button type="submit">확인</button></td>
			</tr>
		</table>
		<br>
	</form>

	<%for (int i = 0; i < guestList.size(); i++) {%>
	<table border="1" width="500">
		<tr>
			<td><%=guestList.get(i).getNo()%></td>
			<td><%=guestList.get(i).getName()%></td>
			<td><%=guestList.get(i).getRegDate()%></td>
			<td><a href="./deleteForm.jsp?no=<%=guestList.get(i).getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=guestList.get(i).getContent()%></td>
		</tr>
	</table>
	<br>
	<%}%>

</body>
</html>