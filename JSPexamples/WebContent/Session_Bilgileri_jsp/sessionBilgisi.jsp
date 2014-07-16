<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session</title>
</head>

<body>

<%-- bazı sayfaları import ettik  --%>

<%@ page import="java.util.Date, javax.servlet.http.*" %>

<%--önce değişkenlerimizi tanımlayalım (declaration ile)--%>

<%! Integer accessCount=0;
	String id;
	Integer maxInactiveInternal;
	HttpSession session;
	Date creationTime;
	Date lastAccessTime;
	
	
%>

<%--daha sonra döngümüzü yazalım (scriptlets ile)--%>

<%
session = request.getSession();
id = session.getId();
accessCount = (Integer) session.getAttribute("accessCount");
if(accessCount == null){
	System.err.print("hata");
	accessCount =0 ;
}
else{
	accessCount ++ ;
}
session.setAttribute("accessCount", accessCount);
maxInactiveInternal = session.getMaxInactiveInterval();

creationTime = new Date(session.getCreationTime());
lastAccessTime = new Date(session.getLastAccessedTime());

%>

<%-- son olarakta ekrana yazdırma kısmımızı yapıyoruz (expression ile) --%>

<%= " Access Count: " + accessCount+ "<br>" %>
<%= "Session ID: " + id+ "<br>" %>
<%= "Session Creation Time: " + creationTime+ "<br>" %>
<%= "Session LastAccessed Time:" + lastAccessTime+ "<br>" %>
<%= "Session maxInactiveInterval: " + maxInactiveInternal+ "<br>" %>


</body>
</html>