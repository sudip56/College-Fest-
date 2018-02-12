<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp"%>
<%
	
	Statement stmt1 = connection.createStatement();
	ResultSet rs = statement.executeQuery("SELECT * FROM festevents");
	ResultSetMetaData rmd=rs.getMetaData();
	int eid;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >

<jsp:include page="include.jsp"></jsp:include>
<%
	if (session.getAttribute("username") !=null && session.getAttribute("role").equals("student"))
	{
%>
<center><h3>LIST OF EVENTS</h3></center>
<table border="1" align="center" bgcolor="lightyellow" width="100%">
	<tr>
		<td><b><%=rmd.getColumnName(2)%></b></td>
		<td><b><%=rmd.getColumnName(3)%></b></td>
		<td><b><%=rmd.getColumnName(4)%></b></td>
		<td><b><%=rmd.getColumnName(5)%></b></td>
		<td><b><%=rmd.getColumnName(6)%></b></td>
        <td><b>UPLOAD FILES</b></td> 
<%
			if (session.getAttribute("role").equals("Event Manager")) {
	%>
		<td><b>Updates</b></td>
<%} %>
	</tr>
	<%
			if (session.getAttribute("role").equals("Event Manager")) {
				if (rs != null)
					while (rs.next()) {
						eid=rs.getInt(1);
	%>
	<tr>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getDate(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><a href="fileUpload.jsp?eventid=<%=eid%>"><b>Upload A FILE!</b></a></td>
		<td><a href="updEventForm.jsp?eventid=<%=eid%>">Update</a></td>
	</tr>
	<%
		}
			} else 
			{
				if (rs != null)
					while (rs.next()) {
						eid=rs.getInt(1);

	%>
	<tr>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getDate(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><a href="fileUpload.jsp?eventid=<%=eid%>"><b>Upload A FILE!</b></a></td>
	</tr>
	<%
		}
			}
	%>
		<%
			rs.close();
			statement.close();
			connection.close();
	%>
</table>
<%
	} else {%>
 <center><h3>LIST OF EVENTS</h3></center>
		<table border="1" align="center" bgcolor="lightyellow" width="100%">
	<tr>
	<td><b><%=rmd.getColumnName(2)%></b></td>
	<td><b><%=rmd.getColumnName(3)%></b></td>
	<td><b><%=rmd.getColumnName(4)%></b></td>
	<td><b><%=rmd.getColumnName(5)%></b></td>

<%if (rs != null)
	while (rs.next()) {
		eid=rs.getInt(1);
%>
<tr>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getDate(4)%></td>
<td><%=rs.getString(5)%></td>
<%
	}
}
%></table>
</body>
</html>