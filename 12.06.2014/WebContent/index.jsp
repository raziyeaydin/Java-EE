<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Burak Kutbay Calismasi </title>
</head>
<body>
<h2>Vize Final Hesapla</h2>
<form name="Form1" method="post" action="sonuc.jsp">
<table>
	<tr>
		<td>Ad: </td>
		<td><input type="text" name="ad"></td>
	</tr>
	
	<tr>
		<td>VizeNotu: </td>
		<td><input type="text" name="vize"></td>
	</tr>
	
	<tr>
		<td>FinalNotu: </td>
		<td><input type="text" name="finalNotu"></td>
	</tr>
	
	<tr><input type="submit" value="hesapla" name="gonder"></tr>
	
</table>
</form>
</body>
</html>