<%@page import="java.sql.* ,java.io.*" %>
<%
String id=request.getParameter("txtid");
String pass=request.getParameter("txtpass");
if(!(id==null))
try{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from login where uid='"+id+"' and pass='"+pass+"'");
	if(rs.next()){
	response.sendRedirect("admin.jsp");
	session.setAttribute("uid", id);
	}
else{
	RequestDispatcher rdd=request.getRequestDispatcher("login.jsp");
	rdd.forward(request, response);
	
}
}catch(Exception e){}
%>