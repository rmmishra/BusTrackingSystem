<%@page import ="java.sql.*"%>
<%!Connection con=null;%>
<%
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsdata","root","admin");
}catch(Exception e){}
%>
