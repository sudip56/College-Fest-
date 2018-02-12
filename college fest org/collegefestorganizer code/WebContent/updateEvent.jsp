<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@include file="dbconnect.jsp" %>
<%	String event=request.getParameter("event");
	String desc=request.getParameter("desc");
	String date=request.getParameter("date");
	String venue=request.getParameter("venue");
	String vol=request.getParameter("vol");
	int execute=statement.executeUpdate("UPDATE festevents SET Events='"+event+"',Description='"+desc+"',`Date`='"+date+"',Venue='"+venue+"',Volunteers='"+vol+"' WHERE Events='"+event+"'");
	statement.close();
	connection.close();
	
	if(execute>0)
		request.setAttribute("update","Success");
	else
		request.setAttribute("update","Fail");
	//response.sendRedirect("homepage.jsp");
%>
<jsp:forward page="viewEvents.jsp"></jsp:forward>
</body>
</html>