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
				<li><a href="admin_veh_info.jsp">registered user</a></li>
				<li><a href="driver_home.jsp">Drivers</a></li>
				<li><a href="bus_home.jsp">buses</a></li>
				<li><a href="veh_varify.jsp">Verify</a></li>
			  <li><a href="bus_stop_info.jsp">Bus stop</a></li>
				<li><a href="comments.jsp">comments</a></li>
				
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
			 <h1>Welcome to City Bus Tracking System</h1>
			 <marquee><img src="images/bus/1.jpg" height=300 width="300"/>
            <img src="images/bus/6.jpg" height=300 width="300"/>
            <img src="images/bus/3.jpg" height=300 width="300"/>
            <img src="images/bus/4.jpg" height=300 width="300"/>
            <img src="images/bus/5.jpg" height=300 width="300"/>
    </marquee> 
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
