
			 <%@include file="driver.jsp" %>
<%
String ch="0";
String busno=request.getParameter("txtbusno");
String gpsid=request.getParameter("txtname");
try{
	PreparedStatement ps=con.prepareStatement("insert into bus_data values(?,?)");
    ps.setString(1,busno);
    ps.setString(2,gpsid);
    ps.executeUpdate();
		
	
		//insert values into bus_info table.
		PreparedStatement ps1=con.prepareStatement("insert into bus_info(busno,gpsid) values(?,?)");
    ps1.setString(1,busno);
    ps1.setString(2,gpsid);
    ps1.executeUpdate();
    out.print("Record saved successfully..");
    RequestDispatcher rd=request.getRequestDispatcher("add_bus.jsp");
    rd.include(request, response);
	con.close();
	
}catch(Exception e){out.print(e);}
		%>	