<%@page import="java.io.*,javazoom.upload.*"%>
<%@include file="dbconnect.jsp"%>
<%@include file="include.jsp"%>
<%@page import="java.util.*"%>
<%
	String username = (String)session.getAttribute("username");
	ResultSet res = null;
	String eventname = null;
	int eventid=0;
	String filetype = "";
	
	try {

		UploadBean upBean = new UploadBean();
		MultipartFormDataRequest mrequest = null;
		if (MultipartFormDataRequest.isMultipartFormData(request)) {
			mrequest = new MultipartFormDataRequest(request);
			Hashtable files = mrequest.getFiles();
			filetype = mrequest.getParameter("filetype");
     		if (filetype.equals("video"))
				upBean
						.setFolderstore("E:/24-7-2013 coign 1/Ramu/22College Events Organizer/uploads/videos");
			else if (filetype.equals("document"))
				upBean
						.setFolderstore("E:/24-7-2013 coign 1/Ramu/22College Events Organizer/uploads/documents");
			if ((files != null) && (!files.isEmpty()))
				upBean.store(mrequest, "myfile");
		}

		File fileuploaded = new File(mrequest.getParameter("filename"));
		eventid=Integer.parseInt(mrequest.getParameter("evid"));
		String filename = fileuploaded.getName();
		res=statement.executeQuery("select Events from festevents where EventId="+eventid);
		if (res.next()) {
		eventname = res.getString(1);
		int inserted = statement.executeUpdate("insert into files(eventname,filename,filetype,sender) values('"
							+ eventname
							+ "','"
							+ filename
							+ "','"
							+ filetype + "','" + username + "')");

		}
		connection.close();

		response.sendRedirect("viewEvents.jsp");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>