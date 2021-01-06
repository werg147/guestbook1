<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestDao" %>
<%@ page import = "com.javaex.vo.GuestVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");

	GuestVo guestVo = new GuestVo(no, password);
	
	GuestDao guestDao = new GuestDao();
	guestDao.guestDelete(guestVo);
	
	
	
	//response.sendRedirect("./addList.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- id,password 둘 다 맞으면 삭제
	     1리턴 -> 삭제성공
	     0리턴 -> 삭제실패-->
	
	<%int ret = guestDao.guestDelete(guestVo); %>
	
	<%if(1==ret){%>
			response.sendRedirect("./addList.jsp");
	<% } else {%>
			비밀번호를 잘못입력했습니다.<br>
			<a href="./deleteForm.jsp?no=<%=guestVo.getNo() %>">비밀번호 다시 입력</a>
	<%} %>
	
</body>
</html>
