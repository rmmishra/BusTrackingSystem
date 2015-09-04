
			 <%@include file="driver.jsp" %>
<%

String id=request.getParameter("txtuid");
String pass=request.getParameter("txtpass");
try{
PreparedStatement ps=con.prepareStatement("SELECT * FROM veh_registration WHERE uid=? AND pass=?");
ps.setString(1, id);
ps.setString(2, pass);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	
	session.setAttribute("uid", id);

	RequestDispatcher rd=request.getRequestDispatcher("veh_home.jsp");
	rd.forward(request, response);
}
else
{
	out.println("Login failed");
	RequestDispatcher rd=request.getRequestDispatcher("veh_login.jsp");
	
	rd.include(request, response);
}
}catch(Exception e){out.print(e);}
%>