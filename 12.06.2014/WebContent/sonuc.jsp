<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sonuc sayfası</title>
</head>
<body>
<h2>Vize-Final Hesapla</h2>
<jsp:useBean id="hesapla" class="bean.hesapla" scope="request"/>
<jsp:setProperty name="hesapla" property="*"/>
Sayın: <jsp:getProperty name="hesapla" property="ad"/><br>
Vizen: <jsp:getProperty name="hesapla" property="vize"/><br>
Finalin: <jsp:getProperty name="hesapla" property="finalNotu"/><br>
Sonucun: <jsp:getProperty property="hesapla" name="sonuc"/>
<%= hesapla.toString() %>
</body>
</html>