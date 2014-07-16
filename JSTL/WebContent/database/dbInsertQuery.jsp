<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@ page import="java.util.*,java.io.*, java.sql.*" %>
<%@ page import="javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>INSERT OPERATION</title>
	</head>
	<body>

		
		
		<sql:setDataSource var="snapshot"
		driver="com.mysql.jdbc.Driver"
    	url="jdbc:mysql://localhost/test"
    	user="root"  password="1234samsun"
    	/>
  
		
    	<sql:update dataSource="${snapshot}" var="result">
			INSERT INTO Employees VALUES ( 6 , 10, 'Samet', 'Furkan');
		</sql:update>
		

    
	</body>
</html>