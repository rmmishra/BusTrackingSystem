<%@page import="java.sql.*" %>

<% int x=0;
String ch="0";
try{
	String id=request.getParameter("txtid");
			String dname=request.getParameter("txtname");
			String fname=request.getParameter("txtfname");
			String address=request.getParameter("txtadd");
			String voterid=request.getParameter("txtvoterid");
			String mobile=request.getParameter("txtmobile");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conup= DriverManager.getConnection("jdbc:mysql://localhost:3306/gpsData","root","admin");
    Statement stup=conup.createStatement();
    x=stup.executeUpdate("update driver_info set dname='"+dname+"',dfname='"+fname+"',address='"+address+"',voteridno='"+voterid+"',mobile='"+mobile+"' where dno='"+id+"'");
	if(x>0)
	{
		ch="1";
		response.sendRedirect("update.jsp?dno="+id+"&ch="+ch);
	}
	else
		response.sendRedirect("update.jsp?dno="+id+"&ch="+ch);
}catch(Exception e){e.printStackTrace();}

%>