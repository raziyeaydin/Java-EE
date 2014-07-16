<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
</head>
<body>
	
	<sql:setDataSource var="dbconn" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/deneme"/>
	
	<sql:query var="result" dataSource="${dbconn}">
		select * from tdeneme;
	</sql:query>
	
	
	<table border="1px" width="75%">
		<tr>
			<th>AD</th>
			<th>SOYAD</th>
		</tr>
		<c:forEach var="col" items="${result.rows }"> 
		<tr>
		
			<td><c:out value="${col.ad }"/></td>
			<td><c:out value="${col.soyad }"/></td>
		</tr>
		</c:forEach>
		 
		
	</table>
</body>
</html>