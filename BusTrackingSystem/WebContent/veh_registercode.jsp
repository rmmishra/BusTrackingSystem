
			 <%@include file="driver.jsp" %>
<%
String ch="0";
String id=request.getParameter("txtuid");
String name=request.getParameter("txtname");

String address=request.getParameter("txtadd");
String email=request.getParameter("txtemail");
String mobile=request.getParameter("txtmobile");
String pass=request.getParameter("txtpass");

if(!(id==null))
try{
	PreparedStatement ps=con.prepareStatement("insert into veh_registration(uid,name,address,mobile,email,pass) values(?,?,?,?,?,?)");
    ps.setString(1,id);
    ps.setString(2,name);
    ps.setString(3,address);
    ps.setString(4,mobile);
    ps.setString(5,email);
    ps.setString(6,pass);
    int x=ps.executeUpdate();
	if(x>0){
		
		response.sendRedirect("login.jsp");
			}
	else
	{
		out.println("Sorry");
		RequestDispatcher rs=request.getRequestDispatcher("veh_registration.jsp");
		rs.include(request,response);
	}
	con.close();
	
}catch(Exception e){out.print(e);}
		%>	