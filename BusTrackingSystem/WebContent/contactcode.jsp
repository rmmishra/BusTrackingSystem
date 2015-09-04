<%@include file="driver.jsp" %>
<%
String name=request.getParameter("txtname");
String email=request.getParameter("txtemail");
String comment=request.getParameter("txtcomment");
try{
    PreparedStatement ps=con.prepareStatement("insert into contact values(?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,comment);
    ps.executeUpdate();
		out.print("Thanks for your comments...");
	RequestDispatcher rd=request.getRequestDispatcher("contact.html");	
	rd.include(request,response);

	con.close();
	
}catch(Exception e){out.print(e);}
		%>	