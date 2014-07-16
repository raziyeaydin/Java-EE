<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BeanKullanimi</title>
</head>
<body>
<jsp:useBean id="urun" class="beans.urun_Bean" scope="application"></jsp:useBean>
<jsp:setProperty property="marka" name="urun" value="Orfe"/>
<jsp:setProperty property="adet" name="urun" value="12"/>
<jsp:setProperty property="fiyat" name="urun" value="1252"/>
 <%= urun.ToString() %>
</body>
</html>