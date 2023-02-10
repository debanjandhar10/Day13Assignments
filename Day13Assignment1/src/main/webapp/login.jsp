<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="loginFailed.jsp" %>

<%! 
String username = "debanjand";
String password = "1234";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		if(user ==  null || user.equals(""))
			throw new Exception("Username is empty.");
		if(pass ==  null || pass.equals(""))
			throw new Exception("Password is empty.");
		if(!user.equals(username) || !pass.equals(password))
			throw new Exception("Wrong username or password.");
	%>
	<%= "<h1>Login Succesful</h1><p>Welcome, "+username+"</p>" %>
</body>
</html>