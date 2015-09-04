<%@include file="driver.jsp"%>

<% int x=0;
try{
	String vehno=request.getParameter("txtvehno");
			String vehtype=request.getParameter("txtvehtype");
			PreparedStatement ps=con.prepareStatement("UPDATE veh_vehicleinfo SET vehno=?,vehtype=? WHERE vehno=?");
    ps.setString(1,vehno);
    ps.setString(2,vehtype);
    ps.setString(3,vehno);
    x=ps.executeUpdate();
	if(x>0)
	{
		out.println("Record updated");
		RequestDispatcher rd=request.getRequestDispatcher("veh_update.jsp");
		rd.include(request, response);
	}
	else
		{

		out.println("Sorry...");
		RequestDispatcher rd=request.getRequestDispatcher("veh_update.jsp");
		rd.include(request, response);
		}
}catch(Exception e){e.printStackTrace();}

%>