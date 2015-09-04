<%

response.addHeader("pragma", "no-cache");
response.addHeader("cache-control", "no-store");
response.addHeader("expire", "0");
session.invalidate();

response.sendRedirect("index.html");

%>