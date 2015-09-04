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
				<li><a href="veh_home.html">Home</a></li>
				
				
				<li><a href="about.html">About us</a></li>
				<li><a href="contact.html">Contact us</a></li>
				<li><a href="veh_login.jsp">login</a></li>
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
			<div id="page"><!-- end #content -->
			<%@include file="driver.jsp" %>
			<!-- Generating uid -->
			<%!String tempuid;int temp; %>
			<%
			try{
				
				PreparedStatement ps=con.prepareStatement("select max(uid) from veh_registration");
				
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					temp=Integer.parseInt(rs.getString(1).substring(1,5));
					temp++;
					tempuid="U"+temp;
					
				}		}catch(Exception e){}
			%>
			<center>
			<h1 >Registration Form</h1>
			<form action="veh_registercode.jsp">
			<table bgcolor="light" border="solid" >
			
			<tr><td>User Id</td><td><input type="text" readonly="" name="txtuid" value=<%=tempuid %>></input></td></tr>
			
			<tr><td>Name</td><td><input type="text" name="txtname" required=""></input></td></tr>
			<tr><td>Address</td><td><textarea name="txtadd" required=""></textarea>></td></tr>
			
			<tr><td>Contact No</td><td><input type="text" name="txtmobile" required=""></input></td></tr>
			<tr><td>email</td><td><input type="email" required="" name="txtemail"></input></td></tr>
			<tr><td>Password</td><td><input type="text" name="txtpass" required=""></input></td></tr>
			
			<tr><td></td><td align="center"><input type="submit" value="Register"></input>
			<input type="reset" value="Reset"></input></td></tr>
			
</table>		</form>
			</center>
			<br><br>
			<br><br>
			      </div>
			<!-- end #page -->
		</div>
	</div>
</div>
<!-- end #footer -->
<div id="footer">
	<p>(c) 2014 brotherstech.com. Designed by Sunil Patel</p>
</div>

</body>
</html>
