<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ondokuz Mayıs Hotel</title>

<% String duyuru= request.getParameter("duyuru");
	if ((duyuru==null)){
	duyuru=" ";
}
%>
</head>
<body>
<CENTER>
<table align="center" bgColor="#F6F6F6" border="1" width = "870" height = "570">
	<tr>
		<td bgColor="#660000" colspan = 5>
			<center>
				<H1>
					<font color="#E5E5E5" >ONDOKUZ MAYIS HOTEL</font>
				</H1>
			</center>
		</td>
	</tr>

	<tr bgColor="#880000">
		<td >
			<center>
				<a href = "otelAnasayfa.jsp">
					<font color="#E5E5E5" >
						<b>Ana Sayfa</b>
					</font>
				</a>
			</center>
		</td>
		
		<td width = "150">
			<center>
				<a href = "otelOdalar.jsp">
					<font color="#E5E5E5" >
						<b>Odalarımız</b>
					</font>
				</a>
			</center>
		</td>

		<td width = "150">
			<center>
				<a href = "otelRezervasyon.jsp">
					<font color="#E5E5E5" >
						<b>Rezervasyon</b>
					</font>
				</a>
			</center>
		</td>
		
		<td width = "150">
			<center>
				<a href="otelMenu.jsp">
					<font color="#E5E5E5" >
						<b>Menü</b>
					</font>
				</a>
			</center>
		</td>

		<td width = "100">
			<center>
				<a href="otelHakkimizda.jsp">
					<font color="#E5E5E5" >
						<b>Hakkımızda</b>
					</font>
				</a>
			</center>
		</td>
	
	</tr>

	<tr>
		<td bgColor="#AA0000">
			<center>
				<a href="otelIletisim.jsp">
					<font color="#E5E5E5" >
						<b>İletişim</b>
					</font>
				</a>
			</center>
		</td>

		<td rowspan = 2 colspan = 3 width = "450" height = "400" align="center">
			<img src= C:\Users\Handan\final\OTEL\build/otel1.gif width=540 height=450 >
		</td>

		<td bgColor="#CCFFCC" rowspan = 2 colspan = 3 width = "200">
			<MARQUEE align="middle" scrolldelay="3" scrollamount="3" height="450" width="100%" direction="up">
				<CENTER>
				
					<img src= C:\Users\Handan\final\OTEL\build/otel1.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel2.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel3.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel4.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel5.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel6.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel7.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel8.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel9.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel10.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel11.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel12.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel13.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel14.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel15.gif width=200 height=200 ><br><br>
					<img src= C:\Users\Handan\final\OTEL\build/otel16.gif width=200 height=200 ><br><br>
				</CENTER>
			</MARQUEE>
		</td>
	</tr>

	<tr>
		<td  width = "150" height = "200">
			<marquee align="middle" scrollamount="1" height="400" width="100%" direction="down"scrolldelay="10">
				<font size="4" face="Comic Sans" color="red">Duyuru</font>
				<p>Açılışımızın 10. yılına özel Sıla konseri...</p>
				<font size="4" face="Comic Sans" color="red">Duyuru</font>
				<p>15.06.2014 tarihinden itibaren açık büfe hizmete açılacaktır...</p>
				
				<%= duyuru %>
			</marquee>
		</td>
	</tr>
	<tr>
		<td>
			<a href="otelLogin.jsp">Duyuru Ekle</a>
		</td>
	</tr>
	

</table>
</CENTER>
</body>
</html>