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
<%!String uid; %>
<%
uid=(String)session.getAttribute("uid");
if(uid==null)
	response.sendRedirect("index.html");
else
	out.print("Welcome "+uid);
%>
</head>
<body>
<div id="bg1">
	<div id="header">
		<h1><a href="index.html">City Bus Tracking System</a></h1>
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
			</ul>	</div>
		<!-- end #menu -->
	
	</div>
	<!-- end #header2 -->
</div>
<!-- end #bg2 -->
<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page"><!-- end #content --><form action="updatedata.jsp">
		<div><center> <strong>Bus Drivers Information Form</strong><table border="1">
	<tr><td >Vehicle Number</td><td>Vehicle Type</td><td>Gpsid</td></tr>
			 <%@include file="driver.jsp" %>
<%

try{
	PreparedStatement ps=con.prepareStatement("select * from veh_vehicleinfo where uid=?");
	ps.setString(1,uid);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		
		%>
		<tr><td><%=rs.getString(2) %></td><td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td>
		<td><a href="veh_updatedata.jsp?vehno=<%=rs.getString(2) %>">Edit</a></td>
		<td><a href="veh_deletecode.jsp?vehno=<%=rs.getString(2) %>">Delete</a></td>
		</tr>
		
		<%
	}
	
	
}catch(Exception e){out.print(e);}
		%>	
        </table></center> 
        <br><br></br></br><br><br></br></br></div>
         </form>
		</div>
	</div>
</div>
</div>
</body>
</html>