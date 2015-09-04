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
<script>
function validate()
{
	var from=document.forms["loc"]["from"].selectedIndex;
	var to=document.forms["loc"]["to"].selectedIndex;
	if(from==0)
		{
		   alert("Plese Select Stop");
		   return  false;
		}
	if(to==0)
	{
	   alert("Plese Select Stop");
	   return  false;
	}
	if(from==to)
	{
	   alert("Plese Select right Stop");
	   return  false;
	}
}
</script>
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
				
				<li><a href="user_select_direction.jsp">City bus Direction</a></li>
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
		<form action="bus_direction_view.jsp" name="loc" onsubmit="return validate();">
<h1>Select location</h1><font size="2"><b>From&nbsp:&nbsp</b></font><select name="from">
<option selected="selected">--Select Stop--</option>
<%@include file="driver.jsp"%>
<%try{
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from bus_stop");
	while(rs.next()){
		//out.println(rs.getString(2));
		%>
		<option ><%=rs.getString(2)%></option>
		
		<%
	}
}catch(Exception e){out.print(e);}

	%>
</select><font size="2"><b>&nbsp&nbspTo&nbsp:&nbsp</b></font><select name="to">
<option selected="selected">--Select Stop--</option>
	<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con2= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
	Statement st2=con2.createStatement();
	ResultSet rs2=st2.executeQuery("select * from bus_stop");
	while(rs2.next()){
		
		%>
		<option><%=rs2.getString(2)%></option>
		
		<%
	}
	}catch(Exception e){out.print(e);}

%>
	</select>
	<input type="submit" value="  Find  "></input>
	</form>	</center>
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
