<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@include file="dbconnect.jsp" %>
<%
  String vevent=request.getParameter("event");
  String vdesc=request.getParameter("desc");
  String vdate=request.getParameter("date");
  String vven=request.getParameter("venue");
  String vvol=request.getParameter("vol");
  String data=request.getParameter("data");
  out.println(data);
  
  PreparedStatement ps=connection.prepareStatement("INSERT INTO festevents(Events,Description,Date,Venue,Volunteers) VALUES(?,?,?,?,?)");
  ps.setString(1,vevent);
  ps.setString(2,vdesc);
  ps.setString(3,vdate);
  ps.setString(4,vven);
  ps.setString(5,data);
  int executed=ps.executeUpdate();
  connection.close();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:forward page="loginPage.jsp"/>
</body>
</html>