<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
    </style>
   
<title>GPS</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="bg1">
<form action="view.jsp">
<h1>Select location</h1>From <select name="from">
<%@page import="java.sql.* ,java.io.*" %>
<%
try{
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from bus_stop");
	while(rs.next()){
		//out.println(rs.getString(2));
		%>
		<option ><%=rs.getString(2)%></option>
		
		<%
	}
}catch(Exception e){out.print(e);}

	%>
</select>To <select name="to">
	<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con2= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
	Statement st2=con2.createStatement();
	ResultSet rs2=st2.executeQuery("select * from bus_stop");
	while(rs2.next()){
		
		%>
		<option><%=rs2.getString(2)%></option>
		
		<%
	}
	}catch(Exception e){out.print(e);}

%>
	</select>
	<input type="submit" value="  Find  "></input>
	</form>	
<div id="header">	
</div></div>
</body>
</html>
