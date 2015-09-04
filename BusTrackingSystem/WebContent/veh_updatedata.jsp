<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
    </style>
<title>VTS</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<%
String uid=(String)session.getAttribute("uid");
if(uid==null)
	response.sendRedirect("index.html");
else
	out.print("Welcome "+uid);
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
			<ul><li><a href="index.html">Main Home</a></li>
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
			<div id="page"><!-- end #content --><form action="veh_updatecode.jsp">
		<div><center> <strong>Bus Drivers Information Form</strong><table border="1">
	
			 <%@include file="driver.jsp" %>
<%

try{
	String vehno=request.getParameter("vehno");
	PreparedStatement ps=con.prepareStatement("select * from veh_vehicleinfo where vehno=?");
	ps.setString(1,vehno);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		
		%>
		<tr><td >Vehicle No</td><td width="5"><input type="text" required="" name="txtvehno" value="<%=rs.getString(2) %>"></input></td></tr>
		<tr><td>Type</td><td><input type="text" name="txtvehtype" value="<%=rs.getString(3) %>"></input></td></tr>
		<%
	}
}catch(Exception e){out.print(e);}
		%>	<tr><td border="2"></td><td></td></tr>
		<tr><td align="center"><input type="submit" value="Update"></input></td>
		
		</tr>
        </table></center> </div>
         </form>
		</div>
	</div>
</div>
</div>
</body>
</html>