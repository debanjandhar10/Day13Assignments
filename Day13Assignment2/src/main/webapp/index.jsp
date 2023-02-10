<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table from DBMS using JSTL</title>
</head>
<body>
	<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver"  
	     url="jdbc:oracle:thin:@localhost:49161/xe"  
	     user="system"  password="oracle"/>  
	<sql:query dataSource="${db}" var="result">Select * from Student</sql:query>
	<table width="200px" border="1">
		<tr>
		<td>ID</td><td>Name</td>
		</tr>
		<c:forEach var="row" items="${result.rows}">
		    <tr>
		    	<td>${row.id}</td>
				<td>${row.name}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>