<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="include.jsp"></jsp:include>
<%int ev=Integer.parseInt(request.getParameter("eventid"));%>
<%@ page import="java.sql.*" %>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=connection.prepareStatement("SELECT * FROM festevents WHERE EventID=?");
	pstmt.setInt(1,ev);
	pstmt.execute();
	rs=pstmt.getResultSet();
%>
<form name="EventForm" method="post" action="updateEvent.jsp">
<table width="100%" cellpadding="0" cellspacing="0">
<tr bgcolor="aqua" >
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
</table>
<table width="100%">
<%if(rs!=null)
	{
		System.out.println("inside if");

	while(rs.next())
	{
		System.out.println("inside WHILE"); %>
<tr><td align="left"><b>Events</b></td><td><b>:</b></td><td><input type="text" align="left" width="30" name="event" value="<%=rs.getString(2)%>"></td></tr>
<tr><td align="left"><b>Description</b></td><td><b>:</b></td><td><textarea rows="3" cols="25" name="desc"> <%=rs.getString(3)%></textarea></td></tr>
<tr><td align="left"><b>Date</b></td><td><b>:</b></td><td><input type="text" align="left" width="30" name="date" value="<%=rs.getString(4)%>"></td></tr>
<tr><td align="left"><b>Venue</b></td><td><b>:</b></td><td><input type="text" align="left" width="30" name="venue" value="<%=rs.getString(5)%>"></td></tr>
<tr><td align="left"><b>Volunteers</b></td><td><b>:</b></td><td><input type="text" align="left" width="30" name="vol" value="<%=rs.getString(6)%>"></td></tr>
<%}} %>
<%
rs.close();
pstmt.close();
connection.close();
%>
<tr><td colspan="3" align="center"><input type="submit" value="Submit" width="30"></td></tr>
</table>
</form>
</body>
</html>