<%@include file="driver.jsp"%>
<%
String vehno=request.getParameter("vehno");

try{
	PreparedStatement ps=con.prepareStatement("delete from veh_vehicleinfo where vehno=?");
    ps.setString(1,vehno);
    int x=ps.executeUpdate();
	if(x>0){
		out.print("Record deleted");
		RequestDispatcher rd=request.getRequestDispatcher("veh_update.jsp");
		rd.include(request,response);
			}
	else{out.print("Sorry....!");
	RequestDispatcher rd=request.getRequestDispatcher("veh_update.jsp");
	rd.include(request,response);
	}
	con.close();
	
}catch(Exception e){out.print(e);}
		%>	