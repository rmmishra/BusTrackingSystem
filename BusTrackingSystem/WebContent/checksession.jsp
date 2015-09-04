<%
String uid=""+session.getAttribute("uid");
if(uid==null)
	response.sendRedirect("index.html");

%>