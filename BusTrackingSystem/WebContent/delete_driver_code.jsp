<%@include file="driver.jsp" %>
<%
String dno=request.getParameter("txtid");
String status="Y";
try{
	PreparedStatement ps=con.prepareStatement("update driver_info set resign=? where dno=?");
    ps.setString(1,status);
    ps.setString(2,dno);
    int x=ps.executeUpdate();
	if(x>0){
		
		response.sendRedirect("driver_info.jsp?ch=1");
			}
	con.close();
	
}catch(Exception e){out.print(e);}
		%>	