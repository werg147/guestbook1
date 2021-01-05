<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestDao" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));

	GuestDao guestDao = new GuestDao();
	guestDao.guestDelete(no);
	
	response.sendRedirect("./addList.jsp");

%>

