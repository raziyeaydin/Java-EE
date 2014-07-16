<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Duyurularımız</title>

		<% 
		String baslik = "Duyuru Ekleme Sayfası...";
		%>
		
	</head>

	<body>
		<form action="otelAnasayfa.jsp" method="post"><%= baslik %><br><br>

			<input type="text" name="duyuru" value="duyuru">
			
			<input type="submit" value="Ekle">
		
		</form>

	</body>
</html>