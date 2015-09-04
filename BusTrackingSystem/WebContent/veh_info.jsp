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
				<li><a href="index.html">Main Home</a></li>
				<li><a href="veh_home.jsp">Home</a></li>
				<li><a href="veh_info.jsp">Vehicle Info</a></li>
				
				<li><a href="veh_about.jsp">About Us</a></li>
				<li><a href="veh_contact.jsp">Contact us</a></li>
				<li><a href="logout.jsp">Logout</a></li>
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
		<center> <strong>Vehicle Information Form</strong><br><br>	<table border="1" bgcolor="darkgreen">
			<tr><td bgcolor="dark">Vehicle Number</td><td>GPS Number</td><td>Type</td></tr>
			 <%@include file="driver.jsp" %>
<%
try{
	PreparedStatement ps=con.prepareStatement("select * from veh_vehicleinfo where uid=?");
	ps.setString(1,id);
	ResultSet rs= ps.executeQuery();
	while(rs.next()){
		
		%>
		<tr>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(3) %></td>
			<td><a bgcolor="blue" href="veh_map.jsp?gpsno=<%=rs.getString(4) %>">View on map</a></td>
		</tr>
	<%	
	}
}catch(Exception e){out.print(e);}
		%>	 
         </table></center>
         <br><br>
         <br><br>
			<!-- end #page -->
		</div>
	</div>
</div>
</div>
</body>
</html>