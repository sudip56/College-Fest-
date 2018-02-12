<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@include file="dbconnect.jsp" %>
<%
	String vname=request.getParameter("uname");
	String vpwd=request.getParameter("pwd");
	
	PreparedStatement pstmt=connection.prepareStatement("SELECT uname,role FROM users WHERE uname=? AND password=?");
	pstmt.setString(1,vname);
	pstmt.setString(2,vpwd);
	pstmt.execute();
	ResultSet rs=pstmt.getResultSet();
	if(rs.next()){	
		String un=rs.getString(1);
		String Role=rs.getString(2);
		session.setAttribute("username",un);
		session.setAttribute("role",Role);
		session.setAttribute("status","Success");
		response.sendRedirect("loginPage.jsp");
	}
	else
	{
		session.setAttribute("status","Fail");
        response.sendRedirect("login.jsp");
	}
   
   %>

