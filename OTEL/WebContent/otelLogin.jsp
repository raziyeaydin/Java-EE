<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>loginOtel</title>
	
	</head>
	
	<body>
		<form action="loginSorgu.jsp" method="post">
			<table border='1' align="center">
				<tr><td colspan=2 align="center">
					<b>Login</b>
				</td></tr>
				<tr>
					<td>Kullanıcı Ad: </td>
					<td>
						<input type="text" name="userName">
					</td>
				</tr>
				<tr>
					<td>Parola: </td>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
					<td colspan=2 align="center">
						<input type="submit" value="Giriş Yap">
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>