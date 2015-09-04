<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
    </style>
<%String id=(String)session.getAttribute("uid");
if(id==null)
	response.sendRedirect("veh_login.jsp");
else
	out.print("Welcome "+id);
 %>

<title>VTS</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
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
			<center>
			<h1 >Welcome to Vehicle tracking system</h1>
			</center>
			<table>
			<tr>
			<td><a href="veh_add_veh.jsp">Add new Vehicle</a></td>
			</tr>
			<tr>
			<td><a href="veh_info.jsp">Vehicle location on Map</a></td>
			</tr>
			<tr>
			<td><a href="veh_update.jsp">Vehicle Updation</a></td>
			</tr>
			
			</table>
			<br><br>
			<br><br>
			      </div>
			<!-- end #page -->
		</div>
	</div>
</div>
<!-- end #bg3 -->
<div id="footer">
	<p>(c) 2008 Sitename.com. Design by <a href="http://www.nodethirtythree.com/">nodeThirtyThree</a> + <a href="http://www.freewpthemes.net/">Free CSS Templates</a></p>
</div>
<!-- end #footer -->
<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>

</body>
</html>
