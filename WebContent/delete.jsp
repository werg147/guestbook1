<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestDao" %>
<%@ page import = "com.javaex.vo.GuestVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");

	GuestVo guestVo = new GuestVo(no, password);
	
	GuestDao guestDao = new GuestDao();
	int count = guestDao.guestDelete(guestVo);
	
	
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
	
	<%if(count == 1){
			response.sendRedirect("./addList.jsp"); //보통 리다이렉트보다 페이지 이동으로 맞추어 넣는다(아래 비밀번호 다시입력처럼)
			//삭제됐습니다. <br>
			//<a href="./addList.jsp">처음으로 이동</a>
	} else if(count == 0) {%>
			비밀번호를 잘못입력했습니다.<br>
			<a href="./deleteForm.jsp?no=<%=guestVo.getNo() %>">비밀번호 다시 입력</a>
	<%} %>
	
</body>
</html>