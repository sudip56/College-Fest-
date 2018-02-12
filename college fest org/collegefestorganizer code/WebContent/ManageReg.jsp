<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EventManagers...register here!</title>
<script language="javascript">
function validate()
{
	if((mregForm.uname.value=="")||(mregForm.pwd.value=="")||(mregForm.pwd.value=="")||(mregForm.menu.selectedIndex==0)||(mregForm.event.value=="")||(mregForm.dept.value=="")){
		alert("all details must be entered");
         return false;}
	else
	{
		return true;
		}
		}
</script> 
</head>
<body >
<jsp:include page="include.jsp"></jsp:include>
<fieldset>
			<legend style="font-size:15px;color:maroon">Organizer</legend>

<form name="mregForm" method="post" action="ManageRegForm.jsp" onSubmit="return validate()" >
<table width="60%" align="center">
<tr><td align="right"><b>UserName</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="uname"></td></tr>
<tr><td align="right"><b>Password</b></td><td align="center"><b>:</b></td><td><input type="password" align="left" width="30" name="pwd"></td></tr>
<tr><td align="right"><b>Designation</b></td><td align="center"><b>:</b></td><td><select name="menu">
<option value="0" selected>(please select:)</option>
<option value="H.O.D">H.O.D</option>
<option value="Professor">Professor</option>
<option value="Lecturer">Lecturer</option>
</select></td></tr>
<tr><td align="right"><b>Event</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="event"></td></tr>
<tr><td align="right"><b>Department</b></td><td align="center"><b>:</b></td><td><input type="text" align="left" width="30" name="dept"></td></tr>
<tr><td colspan="3" align="center"><input type="submit" value="Submit" width="30"></td></tr>
</table>
</form>
</fieldset>
</body>
</html>