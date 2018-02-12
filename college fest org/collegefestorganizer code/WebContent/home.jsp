<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="include.jsp"%>
<%
if(session!=null)
{
session.invalidate();
}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CollegeFest HOMEPAGE</title>
</head>
<form action="StudRegister.jsp" method="post">
<body>
<table width="100%">
	
	<tr bgcolor=""><td><b><font color="red">WeLcOmE U S E R S!</font></b></td></tr>
<tr bgcolor="">
<td ><b><font color="blue">If you are a student...<a href="StudRegister.jsp">Register here</a></font></b></td><td bgcolor="white" width=100><td bgcolor="white" width=100><td bgcolor="white" width=50></td><td align="center" width="500"><a href="viewEvents.jsp"><font color=red><b>ViEW EvENtS</b></font></a></td></tr>
<tr bgcolor="">
<td ><b><font color="blue">If you are an Event Manager...<a href="ManageReg.jsp">Register here</a></font></b></td></tr>
	<tr height="30" bgcolor="white">
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td><img src="crowd.jpg" WIDTH="250" HEIGHT="240"></td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td width=50%><font color="black"><b>&nbsp;&nbsp;&nbsp;<u>WELCOME
		to the COLLEGE FEST!!!!</u></b></font>
		<p align="justify"><font color="indigo"><b><i> All
		the young and happening college-goers are hereafter invited to
		participate in the ongoing <font color="pink">'TECH FEST -
		2014' </font>conducted for students who are pursuing their (post) graduation
		in and around Hyderabad...So up your Tech Quotient NOW!</i></b></font></p>
		</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td align="right"><img SRC="collegeday.jpg"
			WIDTH="250" HEIGHT="240"></td>
	</tr>
	
	<tr>
		<td align="left" valign="top" bordercolor="0" colspan="5"><div align="center">
		<span onClick="javascript:window.location.href='login.jsp'" style="cursor:hand">
		<img src="LiknoWebButtonMaker1.jpg" width="164" height="48" border="0" usemap="#Map"></span></div></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>
</body>
</html>