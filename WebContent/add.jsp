<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.vo.GuestVo" %>
<%@ page import = "com.javaex.dao.GuestDao" %>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestVo guestVo = new GuestVo(name, password, content);
	
	GuestDao guestDao = new GuestDao();
	
	guestDao.guestInsert(guestVo);
	
	List<GuestVo> guestList = guestDao.getGuestList();
	
	response.sendRedirect("./addList.jsp");

%>

