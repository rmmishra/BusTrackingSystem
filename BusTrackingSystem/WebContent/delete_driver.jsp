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
			<div id="page"><!-- end #content --><form action="delete_driver_code.jsp">
		<div><center> <h1>Bus Drivers Deletion Form</h1><table border="1">
	
			 <%@page import="java.sql.* ,java.io.*" %>
<%

try{
	String id=request.getParameter("dno");
	Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from driver_info where dno='"+id+"'");
	if(rs.next()){
		
		%>
		<tr><td >Driver Id</td><td width="15"><%=rs.getString(1) %></td></tr>
		<tr><td>Name   </td><td><%=rs.getString(2) %></td></tr>
		
		<tr><td>Father's Name    </td><td><%=rs.getString(3) %></td></tr>
		<tr><td>Address</td><td><%=rs.getString(4) %></td></tr>
		<tr><td>Voter Id</td><td><%=rs.getString(5) %></td></tr>
		<tr><td>Mobile</td><td><%=rs.getString(6) %></td>
		</tr>
		
		<%
	}
	
	
}catch(Exception e){out.print(e);}
		%>	<tr><td border="2"></td><td></td></tr>
		<tr><td align="center"><input type="submit" value="Delete"></input></td>
		
		</tr>
		<tr><td bgcolor="#54125"><%String ch=request.getParameter("ch");
		if(ch.equals("1"))
			out.print("Record deleted.");
		else if(ch.equals("0"))
			out.print("Ooops Sorryyy!!!");
		else 
			;
		%></td></tr>
        </table></center> </div>
         </form>
         <br><br></br></br>
		</div>
	</div>
</div>
</div><div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>

</body>
</html>