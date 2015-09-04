<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
String id=(String)session.getAttribute("uid");
if(id==null)
	response.sendRedirect("index.html");
else
	out.print("Welcome "+id);
%>
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
				<li><a href="admin.jsp">home</a></li>
				<li><a href="driver_info.jsp">Drivers</a></li>
				<li><a href="bus_info.jsp">buses</a></li>
				<li><a href="#">View</a></li>
				<li><a href="update.jsp">Updation</a></li>
				<li><a href="logout.jsp">logout</a></li>
			</ul>
		</div>
		
	</div>
	<!-- end #header2 -->
</div>
<!-- end #bg2 -->
<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page"><!-- end #content -->
			 <a href="add_driver.jsp">Add new Driver</a><br></br>
			 <a href="driver_info.jsp">View Drivers</a>
            <p>&nbsp;</p>
			  <p>&nbsp;</p>
			  <p>&nbsp;</p>
			  <p>&nbsp;</p>
			  <p>&nbsp; </p>
			  <div style="clear: both; height: 40px;">&nbsp;</div>
    </div>
			<!-- end #page -->
		</div>
	</div>
</div>
<!-- end #bg3 -->

<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>

</body>
</html>
