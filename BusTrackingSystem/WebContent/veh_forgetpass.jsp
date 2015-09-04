<%@ include file="driver.jsp"%>
<%@page import="
java.util.Properties,
javax.mail.MessagingException,
javax.mail.Session,
javax.mail.Transport,
javax.mail.Message.RecipientType,
javax.mail.internet.AddressException,
javax.mail.internet.InternetAddress,
javax.mail.internet.MimeMessage" %>
<%!String pass; %>
<%
try{
	PreparedStatement ps=con.prepareStatement("SELECT pass FROM veh_registration WHERE email =?");
	ps.setString(1,request.getParameter("txtemail"));
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{	
		pass=rs.getString(1);
		System.out.print(pass);
String from="sunilp94@gmail.com";//write here sender mail id
String to=request.getParameter("txtemail");
String subject="Password Recovery";
String text="Your password is:- "+pass;
String host = "smtp.gmail.com";
String userid = "sunilp94@gmail.com";//write here sender mail id
String password = "99938315";//write here sender mail id password
 
Properties props = System.getProperties();
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host",host);
props.setProperty("mail.transport.protocol", "smtps");
props.put("mail.smtp.user", userid);
props.put("mail.smtp.password", password);
props.put("mail.smtp.port", "465");
props.put("mail.smtp.starttls.enable","true");
props.put("mail.smtps.auth", "true");
props.put("mail.smtp.port", "587");//port is 587 for TLS  if you use SSL then port is 465
props.put("mail.debug", "true");
props.put("mail.smtp.socketFactory.port","465");
props.put("mail.smtp.socketFactory.fallback","false");
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");

Session se = Session.getDefaultInstance(props, null);
MimeMessage mess = new MimeMessage(se);
InternetAddress fromAddress = null;
InternetAddress toAddress = null;

try {
fromAddress = new InternetAddress(from);
toAddress = new InternetAddress(to);
} catch (AddressException e) {

e.printStackTrace();
}
mess.setFrom(fromAddress);
mess.setRecipient(RecipientType.TO, toAddress);
mess.setSubject(subject);
mess.setText(text);

Transport transport = se.getTransport("smtps");
transport.connect(host, userid, password);
transport.sendMessage(mess, mess.getAllRecipients());
transport.close();
            
out.println("Mail Sent Successfully");
RequestDispatcher rd=request.getRequestDispatcher("veh_forget.jsp");
rd.include(request,response);

	}
	else
	{
		out.print("Sorry");
		RequestDispatcher rd=request.getRequestDispatcher("veh_forget.jsp");
		rd.include(request,response);
	}
}catch(Exception e){}
%>
