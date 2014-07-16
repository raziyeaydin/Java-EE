<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.util.*,java.io.*, java.sql.*" %>
<%@ page import="javax.servlet.*, javax.servlet.http.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean_mvc.User_mvc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	
		<%
				User_mvc user=(User_mvc)request.getAttribute("user");
			%>
		<% int no= user.getFirstName();
		String soyad= user.getLastName();
		%>
		
		<c:catch var="error">
		
		<sql:setDataSource
		driver="com.mysql.jdbc.Driver"
		scope="application"
		password="1234samsun"
		url="jdbc:mysql://localhost/deneme"
		user="root"
		var="snapshot"
		/>
		
    	</c:catch>
    	
    	<c:out value="${error}" />
		
		<c:catch var="error">
    	<sql:update dataSource="${snapshot}" var="result">
			INSERT INTO tdeneme VALUES ('" + no+"','" + soyad+"' );
		</sql:update>
		
		</c:catch>
		<c:out value="${error}" />
		
		<c:catch var="error">
		
		<sql:query dataSource="${snapshot }" var="result">
			select * from tdeneme;
		</sql:query>
		
		<table border="1" width="100%">
			<tr>
				<th> NO</th>
				<th> AD</th>
			</tr>
			<c:forEach var="row" items="${result.rows }">
				<tr>
					<td><c:out value="${row.ad}"/></td>
   					<td><c:out value="${row.soyad}"/></td>
   				</tr>
			</c:forEach>
		</c:catch>
		</table>
		
		<c:out value="${error}" />
	</body>
</html>