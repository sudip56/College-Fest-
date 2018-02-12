<%@ page import="java.io.*,java.net.SocketException"%>
<%@include file="dbconnect.jsp" %>
<%     ResultSet res=null;
        int fileid=Integer.parseInt((String)request.getParameter("fileid"));
        String filename=null;
        int bytesRead=0;
		byte[] buff=new byte[1];
		OutputStream ops=null;
		 res=statement.executeQuery("select filename from files where fileid='"+fileid+"'");
		 while(res.next())
		 {
			filename=res.getString(1); 
		 }
		 
		String fileUrl="Documents "+filename;
		out.println(fileUrl);
					
		try
		{
		File file=new File(fileUrl);
		FileInputStream fis=new FileInputStream(file); 
		BufferedInputStream bis=new BufferedInputStream(fis);
		
		 ops=response.getOutputStream();  
		BufferedOutputStream bos=new BufferedOutputStream(ops);
		
		
		response.setContentType("application/doc"); // set the response that response has document type content
		/*setting the file in header with response*/	
		response.setHeader("Content-disposition","attachment;filename="+filename);
		
		while(-1 !=(bytesRead = bis.read(buff,0,buff.length))) {
			bos.write(buff);
			bos.flush();
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
         
%>