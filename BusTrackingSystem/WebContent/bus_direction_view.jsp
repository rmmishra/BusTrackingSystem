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
				<li><a href="index.html">Home</a></li>
				
				<li><a href="bus_direction.jsp">City bus Direction</a></li>
				<li><a href="veh_login.jsp">Vehicle Tracking</a></li>
				<li><a href="about.html">About us</a></li>
				<li><a href="contact.html">Contact us</a></li>
				<li><a href="login.jsp">Login</a></li>
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
			<center>
<h1>Available Buses</h1>
<%!String lat,lon,from,to,latsearch; int sno1,sno2; %>
<%
from=request.getParameter("from");
to=request.getParameter("to");
%>
<!-- These codes will find out stop No. -->
<%@include file="driver.jsp" %>
<%
try{
	Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from bus_stop where stop_name='"+from+"'");
	rs.next();
		sno1=Integer.parseInt(rs.getString(1));
		latsearch=rs.getString(3);
	
}catch(Exception e){}
		%>
<%
try{
	Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select stop_no from bus_stop where stop_name='"+to+"'");
	rs.next();
		sno2=Integer.parseInt(rs.getString(1));
	
}catch(Exception e){}
		%>	 
<!-- Here we are going to check direction. -->
<table border="2">
<%

try{
	Statement st=con.createStatement();
    Statement st1=con.createStatement();
    ResultSet rs2;
    if(sno1<sno2){
    ResultSet rs=st.executeQuery("select * from gpslocation where lat<='"+latsearch+"'");
    %>
		<tr><td bgcolor="red">Bus no</td><td bgcolor="red">Status</td></tr><tr>
		<%
        while(rs.next()){
    		lat=rs.getString(2);
    		lon=rs.getString(3);
    		   String latlast=rs.getString(5);
    		   if(Integer.parseInt(lat.substring(3,7))>Integer.parseInt(latlast.substring(3,7))){
    			//here we are finding number of a bus.
rs2=st1.executeQuery("select * from bus_data where gpsid='"+rs.getString(1)+"'");
    			rs2.next();
    	%>
    	<td>
    	<%		
    			out.print(rs2.getString(1));%></td>
    		
    			<td>
    			<%			   out.println(rs.getString(4));%></td><td><a href="map_and_location.jsp?busno=<%=rs2.getString(1) %>&lat=<%=lat %>&lon=<%=lon %>">View On Map</a></td></tr><%
    			}}}
    else if(sno1>sno2){
        ResultSet rs=st.executeQuery("select * from gpslocation where lat>='"+latsearch+"'");
        %>
		<tr><td bgcolor="red">Bus no</td><td bgcolor="red">Status</td></tr><tr>
		<%
        while(rs.next()){
    		lat=rs.getString(2);
    		lon=rs.getString(3);
    		   String latlast=rs.getString(5);
    		   if(Integer.parseInt(lat.substring(3,7))<Integer.parseInt(latlast.substring(3,7))){
    			//here we are finding number of a bus.
rs2=st1.executeQuery("select * from bus_data where gpsid='"+rs.getString(1)+"'");
    			rs2.next();
    	%>
    	<td>
    	<%		
    			out.print(rs2.getString(1));%></td>
    		
    			<td>
    			<%out.println(rs.getString(4));%></td><td><a href="map_and_location.jsp?busno=<%=rs2.getString(1) %>&lat=<%=lat %>&lon=<%=lon %>">View On Map</a></td></tr><%
    			}}}
    else
    	out.println("Plz Choose a valid option..");
}catch(Exception e){}

%>
</table>
</center>			  <div style="clear: both; height: 40px;">&nbsp;</div>
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
