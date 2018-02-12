<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="dbconnect.jsp"%>
<%@include file="include.jsp"%>
<br><br><br>
<table border=1  align="center" bgcolor="lightyellow"><tr><td>
<table>
<tr><td BGCOLOR="WHITE"><b>EVENTNAME</b></td><td BGCOLOR="WHITE"><b>FILENAME</b></td><td BGCOLOR="WHITE"><b>SENDER</b></td><td BGCOLOR="WHITE"></td></tr>
<%
   ResultSet res=null;
   String eventname=null;
   String filename=null;
   String sender=null;
   String filetype=null;
   int fileid=0;
   
   String username=(String)session.getAttribute("username");
   res=statement.executeQuery("select fileId,eventname,filename,filetype,sender from files");
    while(res.next())
    {
    	fileid=res.getInt(1);
    	eventname=res.getString(2);
    	filename=res.getString(3);
    	filetype=res.getString(4);
    	sender=res.getString(5);
	 if(filetype.equals("video")){%>
    				    <tr><td><%=eventname%></td><td><%=filename%></td><td><%=sender%></td><td><a href="view.jsp?fileid=<%=fileid%>">view</a></td></tr>
    				 <%
    				 }
    				 else
    				 {
    				%><tr><td><%=eventname%></td><td><%=filename%></td><td><%=sender%></td><td><a href="downloadFile.jsp?fileid=<%=fileid%>">download</a></td></tr>
    				<%	 
    				 }
    			}
    
    
    
   %>
</table>
</td></tr></table>



