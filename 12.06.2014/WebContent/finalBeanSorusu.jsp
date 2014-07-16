<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final Sinav Sorusu</title>
</head>
<body>
<jsp:useBean id="ogrenci" class="bean.finalBeanSorusu" />
<jsp:setProperty property="numara" name="ogrenci" value="11060299"/>
<jsp:setProperty property="ad" name="ogrenci" value="Raziye" />
<jsp:setProperty property="soyad" name="ogrenci" value="AYDIN" />
<jsp:setProperty property="dogumTarih" name="ogrenci" value="05/01/1993" />
<jsp:setProperty property="bolum" name="ogrenci" value="Bilgisayar Mühendisligi" />
<%= ogrenci.toString() %>
</body>
</html>