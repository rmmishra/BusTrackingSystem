<!DOCTYPE html >
<%String id=(String)session.getAttribute("uid");
if(id==null)
	response.sendRedirect("veh_contact.html");
else
	out.print("Welcome "+id);
 %>


<html>
<head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
    </style>
     <link rel="stylesheet" type="text/css" href="css/nivo-slider.css"/>
       
<title>VTS</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
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
				<li><a href="veh_info.jsp">Vehicle info</a>
				<li><a href="veh_about.jsp">About Us</a></li>
				<li><a href="veh_contact.jsp">Contact us</a></li>
				<li><a href="logout.jsp">Logout</a></li>
			</ul>
		</div>
		<!-- end #menu -->
	
	</div>
	<!-- end #header2 -->
	<div id="bg3"><div id="bg4"><div id="bg5"><div id="page">
	<center>
	<form action="contactcode.jsp">
	<table border="1" cellspacing="2" cellpadding="2"><tr>
	<td>Name</td><td><input type="text" name="txtname"></td>
	</tr>
	<tr>
	<td>email id</td><td><input type="email" name="txtmail"></td>
	</tr>
	<tr>
	<td>Coments</td><td><textarea name="txtarea"></textarea></td>
	</tr>
	<tr>
	<td align="center"><input type="submit" value="Post"></td>
	</tr>
	</table></form></center>
	<br><br>
	</div></div></div></div>
</div>		<!-- end #page -->
		
	
<!-- end #bg3 -->
<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>

</body>
</html>
