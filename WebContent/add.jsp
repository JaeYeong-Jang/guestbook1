<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String pw = request.getParameter("password");
	String content = request.getParameter("content");

	//vo로 묶기
	GuestBookVo guestBookVo = new GuestBookVo(name,pw,content);
	
	//저장하기
	GuestBookDao guestBookDao = new GuestBookDao();
	guestBookDao.guestBookInsert(guestBookVo);
	//리스트 리다이렉트
	response.sendRedirect("./list.jsp");
	
%>
