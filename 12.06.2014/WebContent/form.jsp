<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lutfen formu doldurunuz...</title>
</head>

<body>
<form id="form2" name="form2" method="post" action="kontrol.jsp">
<table width="200" border="1">
<tr>
<th><label for="AD">ADINIZ </label></th>
<th><input type="text" name="AD" id="AD" /></th>
</tr>
<tr>
<th> <label for="SOYAD">SOYADINIZ</label></th>
<th><input type="text" name="SOYAD" id="SOYAD" /></th>
</tr>
<tr>
<th><label for="il">iliniz</label></th>
<th> <input type="text" name="il" id="il" /></th>
</tr>
<tr><th></th><th><input type="submit" name="gonder" id="gonder" value="KAYIT OL" /></th></tr>
</table>
</form>

</body>
</html>