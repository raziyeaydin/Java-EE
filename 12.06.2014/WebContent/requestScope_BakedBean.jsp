<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request Scope Kullanimi </title>
</head>
<body>
<jsp:include page="/BakedBeanDisplay.jsp"></jsp:include>
<jsp:useBean id="requestBean" class="coreservlets.BakedBean" scope="request" />
<jsp:setProperty name="requestBean" property="*" />
Bean level:
<jsp:getProperty name="requestBean" property="level" /><br>
Dish bean goes with:
<jsp:getProperty name="requestBean" property="goesWith" />

</body>
</html>