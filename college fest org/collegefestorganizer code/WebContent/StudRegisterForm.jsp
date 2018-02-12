<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@include file="dbconnect.jsp" %>
<%
  String vname=request.getParameter("uname");
  String vpwd=request.getParameter("pwd");
  String vsname=request.getParameter("studname");
  String vcoll=request.getParameter("coll");
  String vbranch=request.getParameter("branch");
  String vvol=request.getParameter("vol");
  String vuname=request.getParameter("uname");

  String contactno=request.getParameter("contactno");
  String emailid=request.getParameter("emailid");
  String vrole="";
  if((request.getParameter("vol")).equals("Yes"))
  		vrole="Volunteer";
  else
	  	vrole="Student";
  
  PreparedStatement pstmt=connection.prepareStatement("INSERT INTO Students(studID,Name,College,Branch,contactno,emailId,Volunteer) VALUES(?,?,?,?,?,?,?)");
  PreparedStatement pstmt1=connection.prepareStatement("INSERT INTO users(uname,password,role) VALUES(?,?,?)");
  pstmt.setString(1,vname);
  pstmt.setString(2,vsname);
  pstmt.setString(3,vcoll);
  pstmt.setString(4,vbranch);
  pstmt.setString(5,contactno);
  pstmt.setString(6,emailid);
  pstmt.setString(7,vvol);
  
  pstmt1.setString(1,vuname);
  pstmt1.setString(2,vpwd);
  pstmt1.setString(3,vrole);
  int execute1=pstmt1.executeUpdate();
  int execute=pstmt.executeUpdate();
 
 if(execute==1)
	  request.setAttribute("status","Success");
  else
	  request.setAttribute("status","Fail");
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