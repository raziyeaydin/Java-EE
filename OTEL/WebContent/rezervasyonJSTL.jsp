<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*, java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="otel_bean.rezervasyonBEAN" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Otel Oda Kayıtlarımız</title>
</head>
<body>

	<% rezervasyonBEAN user=(rezervasyonBEAN)request.getAttribute("user2"); %>

	<sql:setDataSource var="snapshot" 
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/hotel"
		user="root" password="1234samsun"		
	/>
	
	<sql:query dataSource="${snapshot }" var="result">
			select * from trezervasyon;
	</sql:query>
	<br>
	<table border="1" width="100%" bgColor=#EEFFEE >
		<tr bgColor=#FFFFEE >
			<th> Ad </th>
			<th> Soyad </th>
			<th> Telefon </th>
			<th> e-posta </th>
			<th> Giriş Tarihi </th>
			<th> Çıkış Tarihi </th>
			<th> Oda Tipi </th>
			<th> Oda Sayısı </th>
		</tr>

		<c:forEach var="row" items="${result.rows }">
			<tr>
				<td><c:out value="${row.ad}"/></td>
				<td><c:out value="${row.soyad}"/></td>
  				<td><c:out value="${row.telefon}"/></td>
   				<td><c:out value="${row.eMail}"/></td>
   				<td><c:out value="${row.gTarih}"/></td>
   				<td><c:out value="${row.cTarih}"/></td>
   				<td><c:out value="${row.odaTipi}"/></td>
   				<td><c:out value="${row.odaSayisi}"/></td>
   			</tr>
		</c:forEach>
			
			<tr>
				<a href="otelAnasayfa.jsp">
					<input type="submit" value="Anasayfa'ya dön" >
				</a>
			</tr><br>
			
	</table>
</body>
</html>