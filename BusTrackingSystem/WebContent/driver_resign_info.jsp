<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
<%
String id=(String)session.getAttribute("uid");
if(id==null)
	response.sendRedirect("index.html");
else
	out.print("Welcome "+id);
%>
</head>
<body>
<div id="bg1">
	<div id="header">
		<h1><a href="index.html">Vehicle Tracking System</a></h1>
			</div>
	<!-- end #header -->
</div>
<!-- end #bg1 -->
<div id="bg2">
	<div id="header2">
		<div id="menu">
			<ul>
				<li><a href="admin.jsp">home</a></li>
				<li><a href="driver_home.jsp">Drivers</a></li>
				<li><a href="bus_home.jsp">buses</a></li>
				<li><a href="veh_varify.jsp">Verify</a></li>
			  <li><a href="bus_stop_info.jsp">Bus stop</a></li>
				<li><a href="logout.jsp">logout</a></li>
			</ul>
		</div>
		<!-- end #menu -->
	
	</div>
	<!-- end #header2 -->
</div>
<!-- end #bg2 -->
<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page"><!-- end #content -->
		<center> <strong>Bus Drivers Information Form</strong><br><br>	
		<table border="1">
			<tr><td bgcolor="red">Driver Id</td>
			<td bgcolor="red">Name</td>
			<td bgcolor="red">Father's Name</td>
			<td bgcolor="red">Address</td>
			<td bgcolor="red">Voter Id</td>
			<td bgcolor="red">Mobile</td>
			</tr>
			 <%@include file="driver.jsp" %>
<%
try{
	Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from driver_info where resign='Y'");
	while(rs.next()){
		
		%>
		<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		
		</tr>
		
		<%
	}
}catch(Exception e){out.print(e);}
		%>	 
         </table></center>
         <br><br>
         <br><br></br></br></br></br>
			<!-- end #page -->
		</div>
	</div>
</div>
</div>
<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>

</body>
</html>