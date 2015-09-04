<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
    </style>
<title>CBTS</title>
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
		<marquee>	<h1><a href="admin.jsp">City Bus Tracking System</a></h1></marquee>
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
				<li><a href="veh_varify.jsp">verify</a></li>
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
		<center> <h1>Vehicle Varification Form</h1><br><br>	
		<%@include file="driver.jsp" %>
<table border="2">
<%

	try{
		Statement ps=con.createStatement();
		
	    ResultSet rs=ps.executeQuery("SELECT * FROM veh_vehicleinfo WHERE gpsid='NA'");
    %>
		<tr><td bgcolor="red">User Id</td><td bgcolor="red">Vehicle No</td><td bgcolor="red">Type</td><td bgcolor="red">Gpsid</td></tr>
		<%
        while(rs.next()){
    %><tr>
    <td><% out.print(rs.getString(1));%></td>
    <td><% out.print(rs.getString(2));%></td>
    <td><% out.print(rs.getString(3));%></td>
    <td><%out.print(rs.getString(4));%></td>
    <td><a href="veh_varify_code.jsp?uid=<%=rs.getString(1)%>&vehno=<%=rs.getString(2)%>">varify</a></td>
    </tr><%
    	}
    	}
    	catch(Exception e){out.print(e);}%>
    
    	</table>
</center>
         <br><br>
         <br><br>
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