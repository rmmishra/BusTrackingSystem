<%@include file="driver.jsp" %>
<%int temp;
String gpsid;
out.println(request.getParameter("uid"));
out.println(request.getParameter("vehno"));
	try{
		Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("SELECT max(gpsid) FROM veh_vehicleinfo WHERE gpsid!='NA'");
        if(rs.next()){
    	out.println(rs.getString(1));
    	temp=Integer.parseInt(rs.getString(1).substring(2,6));
    	temp++;
    	gpsid="UG"+temp;
    	PreparedStatement ps=con.prepareStatement("update veh_vehicleinfo set gpsid=? where uid=? and vehno=?");
    	ps.setString(1, gpsid);
    	ps.setString(2, request.getParameter("uid"));
    	ps.setString(3, request.getParameter("vehno"));
    	ps.executeUpdate();
    	out.println("Vehicle Varified.");
    	RequestDispatcher rd=request.getRequestDispatcher("veh_varify.jsp");
    	rd.include(request,response);
    	}
    	}
    	catch(Exception e){out.print(e);}%>
    