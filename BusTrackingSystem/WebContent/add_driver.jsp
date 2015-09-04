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
<script>
         function validate()
         {
              var cont=document.forms["reg"]["txtmobile"].value;
              var filte = /^([0-9])+$/;
              if (!filte.test(cont)) 
             {
                alert('Please provide a valid Phone No !');
                
                return false;
             }
             if (cont.length<10 || cont.length>10)
             {
                alert("Please fill correct length !");
                return false;
             }
         }
</script>
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
				<li><a href="veh_varify.jsp">Varify</a></li>
			  <li><a href="bus_stop_info.jsp">Bus stop.</a></li>
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
		<%@include file="driver.jsp" %>
			<!-- Generating uid -->
			<%!String tempuid;int temp; %>
			<%
			try{
				
				PreparedStatement ps=con.prepareStatement("select max(dno) from driver_info");
				
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					temp=Integer.parseInt(rs.getString(1).substring(1,5));
					temp++;
					tempuid="D"+temp;
					
				}		}catch(Exception e){}
			%>
		
			<div id="page"><!-- end #content --><form action="add_driver_code.jsp">
		<div><center> <strong>Bus Drivers Information Form</strong><table border="1">
	
		<tr><td >Driver Id</td><td width="5"><input type="text" name="txtid" readonly="" value=<%=tempuid %>></input></td></tr>
		<tr><td>Name   </td><td><input type="text" name="txtname" required="required"></input></td></tr>
		
		<tr><td>Father's Name    </td><td><input type="text" name="txtfname "></input></td></tr>
		<tr><td>Address</td><td><textarea name="txtadd"></textarea></td></tr>
		<tr><td>Voter Id</td><td><input type="text" name="txtvoterid" required="required"/></td></tr>
		<tr><td>Mobile</td><td><input type="text" name="txtmobile"></input></td>
		</tr>
		<tr><td border="2"></td><td></td></tr>
		<tr><td align="center"><input type="submit" value="Save"></input></td>
		
		</tr>
		<tr><td bgcolor="#54125"><%String ch=request.getParameter("ch");
		if(ch.equals("1"))
			out.print("Record Saved.");
		else if(ch.equals("0"))
			out.print("Ooops Sorryyy!!!");
		else 
			;
		%></td></tr>
        </table></center> </div>
         </form>
		</div>
	
			  <p>&nbsp; </p>
			  <div style="clear: both; height: 40px;">&nbsp;</div>
    </div>
			<!-- end #page -->
		</div>
	</div>

<!-- end #bg3 -->
</div>
<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>
</body>
</html>
