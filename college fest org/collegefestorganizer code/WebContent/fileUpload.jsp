<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="dbconnect.jsp" %>
<%@include file="include.jsp" %>
<% String username=(String)session.getAttribute("username");
   int eventId=Integer.parseInt((String)request.getParameter("eventid"));
      %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script language="JavaScript">
function uploadFile()
{
    
	var filename=document.uploadForm.myfile.value;
	var filesplit=filename.split('.');
    var eid=document.uploadForm.eventid.value;
	var this_ext=filesplit[1];      
	var ftype="";
	if(this_ext=="doc" || this_ext=="txt" || this_ext=="docx")
		ftype="document";
	if(this_ext=="flv" || this_ext=="mp3" || this_ext=="mov")
		ftype="video"; 

	
	document.uploadForm.filetype.value=ftype;
	document.uploadForm.filename.value=filename;
	document.uploadForm.evid.value=eid;
	alert(document.uploadForm.evid.value);
	document.uploadForm.action="single_upload_page.jsp";
	document.uploadForm.method="post";
	document.uploadForm.submit();
	
} 
</script>
</head>
<body>
<form name="uploadForm" enctype="multipart/form-data">
<table>
<% 
ResultSet res=null;  


%>

<tr><td colspan="2"><font face=verdana>Upload File Here</font></td></tr>
<tr><td>File</td><td><input type="file" name="myfile"></td></tr>
<tr><td colspan="2"><input type="button" onclick="uploadFile()" value="Upload" ></td></tr>
</table>
<input type="hidden" name="filetype">
<input type="hidden" name="filename">
<input type="hidden" name="eventid" value=<%=eventId%>>
<input type="hidden" name="evid">
</form>

</body>
</html>