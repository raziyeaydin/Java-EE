<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*, java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>sql tag SELECT OPERATION</title>
	</head>
	<body>
		<sql:setDataSource var="snapshot" 
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/test"
		user="root" password="1234samsun"		
		/>
		
		<sql:query dataSource="${snapshot }" var="result">
			select * from Employees;
		</sql:query>
		
		<table border="1" width="100%">
			<tr>
				<th> Emp id</th>
				<th> First Name</th>
				<th> Last Name</th>
				<th> Age</th>
			</tr>
			<c:forEach var="row" items="${result.rows }">
				<tr>
					<td><c:out value="${row.id}"/></td>
   					<td><c:out value="${row.first}"/></td>
   					<td><c:out value="${row.last}"/></td>
   					<td><c:out value="${row.age}"/></td>
   				</tr>
			</c:forEach>
			
		</table>
	</body>
</html>