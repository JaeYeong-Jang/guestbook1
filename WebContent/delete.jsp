<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
GuestBookDao guestBookDao = new GuestBookDao();

int guestNo = Integer.parseInt(request.getParameter("no"));
String pw = request.getParameter("ipw");

GuestBookVo guestBookVo = new GuestBookVo(guestNo,pw);

guestBookDao.guestBookDelete(guestBookVo);

response.sendRedirect("./list.jsp");

%>
