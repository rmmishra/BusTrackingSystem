
			 <%@page import="java.sql.* ,java.io.*" %>
<%
String ch="0";
String id=request.getParameter("txtid");
String name=request.getParameter("txtname");
String fname=request.getParameter("txtfname");
String address=request.getParameter("txtadd");
String voterid=request.getParameter("txtvoterid");
String mobile=request.getParameter("txtmobile");
if(!(id==null))
try{
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
    PreparedStatement ps=con.prepareStatement("insert into driver_info values(?,?,?,?,?,?)");
    ps.setString(1,id);
    ps.setString(2,name);
    ps.setString(3,fname);
    ps.setString(4,address);
    ps.setString(5,voterid);
    ps.setString(6,mobile);
    int x=ps.executeUpdate();
	if(x>0){
		
		response.sendRedirect("add_driver.jsp?ch=1");
			}
	con.close();
	
}catch(Exception e){out.print(e);}
		%>	