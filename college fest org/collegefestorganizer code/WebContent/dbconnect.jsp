<%@ page import="java.sql.*" %>
<%

 String connectionURL = "jdbc:mysql://localhost:3306/collegefest?user=;password=";
 Connection connection = null; 

Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "");

 Statement statement = connection.createStatement();
  
%>