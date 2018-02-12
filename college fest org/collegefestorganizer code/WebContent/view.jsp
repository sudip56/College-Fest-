<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineCoursePortal</title>

</head>    
<body>
 <%@include file="dbconnect.jsp"%>
<%@include file="include.jsp"%>
<%
 String filename=null;
 ResultSet res=null;
 int fileid=Integer.parseInt((String)request.getParameter("fileid"));
 res=statement.executeQuery("select filename from files where fileid='"+fileid+"'");
 while(res.next())
 {
	filename=res.getString(1); 
 }
 
String file=filename;
out.println(file);
//String file="track.mp3";
%>    
<p id='preview'>The player will show in this paragraph</p>

<script type='text/javascript' src='swfobject.js'></script>
<script type='text/javascript'>
var s1 =new SWFObject('player.swf','player','400','300','9');
s1.addParam('allowfullscreen','true');
s1.addParam('allowscriptaccess','always');
s1.addParam('flashvars','&file=<%=file%>');  

s1.write('preview');  
</script>   

  
</body>          
</html>