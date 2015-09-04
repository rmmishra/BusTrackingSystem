<!-- This page will work as a gps device--->
<%@include file="driver.jsp"%>
<form action=""></form>
<%
String text=request.getParameter("gpsid");
int i=1;
try{
	
	{
	
  PreparedStatement ps=con.prepareStatement("insert into gpslocation values(?,?,?)");
  ps.setString(1, "1001");
  ps.setString(2, "22.12453");
  ps.setString(3, "55.23565");
  ps.executeUpdate();
  out.println("location saved");
}
}catch(Exception e){System.out.print(e);}
%>
