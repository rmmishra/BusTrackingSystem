
			 <%@include file="driver.jsp" %>
<%
String uid=""+session.getAttribute("uid");
String vehno=request.getParameter("txtvehno");
String type=request.getParameter("type");
if(!(vehno==null))
{
try{
	PreparedStatement ps=con.prepareStatement("INSERT INTO veh_vehicleinfo(uid,vehno,vehtype) VALUES(?,?,?)");
    ps.setString(1,uid);
    ps.setString(2,vehno);
    ps.setString(3,type);
    int x=ps.executeUpdate();
	if(x>0){
		out.println("Record saved");
		RequestDispatcher rd=request.getRequestDispatcher("veh_add_veh.jsp");
		rd.include(request,response);
			}
	else
	{

		out.println("Sorry....!!!");
		RequestDispatcher rd=request.getRequestDispatcher("veh_add_veh.jsp");
		rd.include(request,response);
	}
	con.close();
}catch(Exception e){out.print(e);}
}	
		%>	