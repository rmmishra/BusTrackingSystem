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
				<li><a href="veh_varify.jsp">Verify</a></li>
			  <li><a href="bus_stop_info.jsp">Bus stop</a></li>
				<li><a href="logout.jsp">logout</a></li>
			</ul></div>
		<!-- end #menu -->
	
	</div>
	<!-- end #header2 -->
</div>
<!-- end #bg2 -->
<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page"><!-- end #content --><form action="add_bus_code.jsp">
		<div><center> <strong>New Bus Information Form</strong><table border="1">
	<%@include file="driver.jsp" %>
			<!-- Generating uid -->
			<%!String tempuid;int temp; %>
			<%
			try{
				PreparedStatement ps=con.prepareStatement("select max(busno) from bus_data");
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					temp=Integer.parseInt(rs.getString(1).substring(1,5));
					temp++;
					tempuid="B"+temp;
					
				}		}catch(Exception e){}
			%>
		<%!String tempuid1;int temp1; %>
			<%
			try{
				PreparedStatement ps=con.prepareStatement("select max(gpsid) from bus_data");
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					temp1=Integer.parseInt(rs.getString(1).substring(1,5));
					temp1++;
					tempuid1="G"+temp1;
					
				}		}catch(Exception e){}
			%>
		<tr><td >Bus No</td><td width="5"><input type="text" name="txtbusno" readonly="readonly" value="<%=tempuid %>"></input></td></tr>
		<tr><td>Gpsid   </td><td><input type="text" name="txtname" readonly="readonly" value="<%=tempuid1 %>"></input></td></tr>
		<tr><td></td><td></td></tr>
		<tr><td></td><td align="center"><input type="submit" value="Save"></input></td>
		
		</tr>
		
        </table></center> </div>
         </form>
		</div><br></br><br></br><br></br><br></br>
	</div>
</div>
</div>

<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>

</body>
</html>