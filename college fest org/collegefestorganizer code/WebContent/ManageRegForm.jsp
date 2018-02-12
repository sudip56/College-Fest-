<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<%
  String vname=request.getParameter("uname");
  String vpwd=request.getParameter("pwd");
  String vmenu=request.getParameter("menu");
  String vevent=request.getParameter("event");
  String dept=request.getParameter("dept");
  String vrole="Event Manager";    
  PreparedStatement pstmt=connection.prepareStatement("INSERT INTO eventmanagers(username,designation,event,dept) VALUES(?,?,?,?)");
  PreparedStatement pstmt1=connection.prepareStatement("INSERT INTO users(uname,password,role) VALUES(?,?,?)");
  pstmt.setString(1,vname);
  pstmt.setString(2,vmenu);
  pstmt.setString(3,vevent);
  pstmt.setString(4,dept);
  pstmt1.setString(1,vname);
  pstmt1.setString(2,vpwd);
  pstmt1.setString(3,vrole);
  int execute1=pstmt1.executeUpdate();
  int execute=pstmt.executeUpdate();
  connection.close();
  /*if(execute==1)
	  request.setAttribute("status","Success");
  else
	  request.setAttribute("status","Fail");*/
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="home.jsp"></jsp:forward>
</body>
</html>