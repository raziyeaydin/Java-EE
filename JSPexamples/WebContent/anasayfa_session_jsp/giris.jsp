<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%! String sonuc ;
String kullanici_giris ;
HttpSession anasayfa;
%>  <%-- declaration --%>

<% String kullaniciAdi = request.getParameter("adi"); 
String sifre = request.getParameter("sifre");

if(kullaniciAdi.equals("bynMhnds") && sifre.equals("8930")){
	HttpSession anasayfa = request.getSession(true);
	// anasayfa.putValue(kullanici_giris, "gecerli");
	response.sendRedirect("./anasayfa.jsp");
	
}
else{
	
}

%>   <%--scriplets --%>

<%= sonuc %>   <%-- expression --%>
</body>
</html>