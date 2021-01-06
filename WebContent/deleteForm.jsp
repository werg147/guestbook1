<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestDao" %>
<%@ page import = "com.javaex.vo.GuestVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no")); //no가 no일때 삭제 -비밀번호가 틀려도 삭제되는 오류
	
	/*
	GuestDao guestDao = new GuestDao();
	GuestVo guestVo = guestDao.getGuest(no);
	*/
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		비밀번호 <input type="text" name="password"> <button type="submit">확인</button>
		<input type="hidden" name="no" value="<%=no %>"><br>
		
		<a href="./addList.jsp">메인으로 돌아가기</a>
	</form>
</body>
</html>