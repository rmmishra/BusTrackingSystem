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
		<marquee behavior="alternate" width="870"><h1><a href="index.html">City Bus Tracking System</a></h1></marquee>
			</div>
	<!-- end #header -->
</div>
<!-- end #bg1 -->
<div id="bg2">
	<div id="header2">
		<div id="menu">
				<ul>
				<li><a href="admin.jsp">home</a></li>
				<li><a href="admin_veh_info.jsp">registered user</a></li>
				<li><a href="driver_home.jsp">Drivers</a></li>
				<li><a href="bus_home.jsp">buses</a></li>
				<li><a href="veh_varify.jsp">Verify</a></li>
			  <li><a href="bus_stop_info.jsp">Bus stop.</a></li>
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
                          <center><h1>Vehicle Registered User Information</h1><br><br><table border="1" bgcolor="darkgreen">
			<tr><td bgcolor="dark">Uid</td><td>Name</td><td>Address</td><td>Mobile</td><td>email</td></tr>
			 <%@include file="driver.jsp" %>
<%
try{
	PreparedStatement ps=con.prepareStatement("select * from veh_registration");
	
	ResultSet rs= ps.executeQuery();
	while(rs.next()){
		
		%>
		<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		
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