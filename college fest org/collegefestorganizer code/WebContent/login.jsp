<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<jsp:include page="include.jsp"></jsp:include>
<body bgcolor="white">
<% if(request.getParameter("status")!=null)
{
  if(request.getParameter("status").equals("Fail"))
		{
         %><h2> <font color=white>WRONG USERNAME PASSWORD</font></h2> <%	
		}}%><br><br><br><br>
<fieldset>
			<legend style="font-size:15px;color:maroon">LOGIN</legend>

<form name="loginForm" action="validateUser.jsp">
<table  width="50%" cellpadding="0" cellspacing="0" align="center">
<tr><td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td align="center"><b>UserName</b></td><td><b>:</b></td><td><input type="text" align="left" width="30" name="uname"></td></tr>
<tr><td align="center"><b>Password</b></td><td><b>:</b></td><td><input type="password" align="left" width="30" name="pwd"></td></tr>
<tr><td>&nbsp;</td><td></td><td align="left"><input type="submit" value="Login" width="30" ></td></tr>
</table>
</form>
</fieldset>
</body>
</html>