<%@ page import="java.net.URLEncoder" %>
<%
String username1=request.getParameter("username");
String password1=request.getParameter("password");

if(username1.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("rishitha"))
{
 response.sendRedirect("adminHome.jsp");	
}
else{
	 String errorMessage = "Invalid login credentials. Please try again."; 
	 response.sendRedirect("index.html?error=" + URLEncoder.encode(errorMessage, "UTF-8"));
}
 %>