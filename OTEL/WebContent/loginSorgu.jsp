<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kontrol</title>

<% String kullaniciAd = request.getParameter("userName");
	String sifre = request.getParameter("password");
	
	if(kullaniciAd.trim().equals("user") && sifre.trim().equals("1234samsun")){
		ServletContext context= getServletContext();
		
		RequestDispatcher rd= context.getRequestDispatcher("/otelDuyuru.jsp");
		rd.forward(request, response);
	}
%>

</head>


<body>
	
</body>
</html>
