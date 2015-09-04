<%@page import="java.sql.*" %>
<%
String dno=request.getParameter("txtid");

try{
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
    PreparedStatement ps=con.prepareStatement("delete from driver_info where dno=?");
    ps.setString(1,dno);
    int x=ps.executeUpdate();
	if(x>0){
		
		response.sendRedirect("driver_info.jsp?ch=1");
			}
	con.close();
	
}catch(Exception e){out.print(e);}
		%>	