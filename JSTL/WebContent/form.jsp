<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>FORM</title>
	</head>

	<body bgcolor="#E5E5E5">
		<h2 align="center">Ön Rezervasyon Formu</h2>
		<form method="get">
			<center>
				<table bgcolor= #FF6666 border = 1 >
					
					<tr><td>
						Emp id: 
						<input type="text" name="id"><br/>
					</td></tr>
					
					<tr><td>
						First Name	
						<input type="text" name="first"><br/>
					</td></tr>
					
					<tr><td>
						Last Name 
						<input type="text" name="last"><br>
					</td></tr>
					
					<tr><td>
						Age 
						<input type="text" name="age"><br>
					</td></tr>
					
					<tr><td>
						<center>
							<button type="submit">KAYDET</button>
						</center>
					</td></tr>
					
				</table>
			</center>
		</form>
		
		<%--RequestDispatcher dispatcher = request.getRequestDispatcher("kayit.jsp");
		dispatcher.forward(request, response);--%>
		
		<%--<jsp:forward page="kayit.jsp"></jsp:forward> --%>
		
		
		
	</body>
</html>