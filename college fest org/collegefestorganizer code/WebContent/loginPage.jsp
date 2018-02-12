<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="include.jsp"></jsp:include>
<%
if(session.getAttribute("status")!=null){
   if(session.getAttribute("status").equals("Success")){%>
<table bgcolor=orange>
<tr><td width=100><a href="viewEvents.jsp"><b>View Events</b></a></td>
<td width=100><a href="viewfiles.jsp"><b>View Files</b></a></td>
<%
 if(session.getAttribute("role").equals("Event Manager"))
 {
	%> <td width=100><a href="postEvent.jsp"><b>Post Events</b></a></td><% 
 }
 }
%>
<td width=500><td align="left"><b>Welcome,<%=session.getAttribute("username")%></b></td><td><a href="logout.jsp">LOGOUT</a></td></tr></table>

<%
}
   
else
{
	response.sendRedirect("login.jsp");
}

	%>