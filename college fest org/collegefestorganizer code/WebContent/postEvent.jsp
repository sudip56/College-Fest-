<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<%
    
	PreparedStatement pstmt=connection.prepareStatement("SELECT Name FROM students WHERE Volunteer='Yes'");
	pstmt.execute();
	ResultSet rs = pstmt.getResultSet();
	String Uname = "";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">


function saveSelections()
{

 if(eventSchedule.event.value=="")
{
	alert("EventName Must be entered");
	return false;
}
else if(eventSchedule.desc.value=="")
{
	alert("Description Must be entered");
	return false;
}
else if(eventSchedule.date.value=="")
{
	alert("Date Must be entered");
	return false;
}
else if(eventSchedule.venue.value=="")
{
	alert("Venue Must be entered");
	return false;
}
else 
{
	var checked="";
	for(var i=0;i<eventSchedule.vol.length;i++)
	{
		 if(eventSchedule.vol[i].checked)
		 {
		 checked+=eventSchedule.vol[i].value;
         checked+=",";
		 }
		}
	 eventSchedule.data.value=checked;

	 return  true;
}
	
}


    
</script>
</head>
<body>
<jsp:include page="include.jsp"></jsp:include>
<fieldset>
			<legend style="font-size:15px;color:maroon">Post Event</legend>

<form name="eventSchedule" action="schedule.jsp" onsubmit="return saveSelections()">
<table align="center">
	<tr>
		<td><b>Event : </b></td>
		<td><input type="text" align="left" width="30" name="event"></td>
	</tr>
	<tr>
		<td><b>Description : </b></td>
		<td><textarea rows="3" cols="25" name="desc"></textarea></td>
	</tr>
	<tr>
		<td><b>Date : </b></td>
		<td><input type="text" align="left" width="30" name="date"></td>
	</tr>
	<tr>
		<td><b>Venue : </b></td>
		<td><input type="text" align="left" width="30" name="venue"></td>
	</tr>
	<tr>
		<td><b>Volunteers:</b></td>
		<td>
		<%
			while (rs.next()) {
				Uname = rs.getString(1);
		%><input type="checkbox" name="vol"
			value="<%=Uname%>"><%=Uname%>&nbsp;&nbsp;&nbsp; <%
 	}
 %> <%
 	rs.close();
 	pstmt.close();
 	connection.close();
 %>
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
    <tr>
		<td><input type="hidden" align="left" width="30" name="data"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="postEvent" width="30"></td>
	</tr>
</table>
</form>
</fieldset>
</body>
</html>