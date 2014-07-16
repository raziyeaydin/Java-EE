<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>DELETE Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/test"
     user="root"  password="1234samsun"/>
 
<c:set var="empId" value="102"/>
 
<sql:update dataSource="${snapshot}" var="count">
  UPDATE Employees SET last = 'Ali'
  <sql:param value="${empId}" />
</sql:update>
 

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