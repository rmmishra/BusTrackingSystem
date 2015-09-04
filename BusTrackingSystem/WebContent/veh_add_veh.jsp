<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }1
      #map-canvas { height: 100% }
    </style>
<title>GPS</title>
<script>
function validate()
{
	var type=document.form["vehadd"]["type"].selectedIndex;
	if(type==0)
		{
		   alert("Please Select Type");
		   return false;
		}
}
</script>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<%!String id; %>
<%
id=(String)session.getAttribute("uid");
if(id==null)
	response.sendRedirect("veh_login.jsp");
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
			<div id="page"><!-- end #content --><form action="veh_add_veh_code.jsp" name="vehadd" onsubmit="return= validate();">
		<div><center> <strong>Bus Information Form</strong><table border="1">
	
		<tr><td >Vehicle No</td><td width="5"><input type="text" name="txtvehno" required=""></input></td></tr>
		<tr><td>Vehicle Type</td><td>
		<select name="type">
		<option>--select--</option>
		<option>Bus</option>
		<option>Car</option>
		<option>Truck</option>
		</select>
		</td></tr>
		<tr><td></td>
		<td align="center"><input type="submit" value="Save" ></input></td>
		
		</tr>
	
        </table></center><br><br></br></br> <br><br></br></br> </div>
         </form>
		</div>
	</div>
</div>
</div>
<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>
</body>
</html>