<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
		<title>RezervasyonOtel</title>
	</head>

	<body bgcolor="#E5E5E5">
		<h2 align="center">Ön Rezervasyon Formu</h2>
		<form action="rezervasyonServlet" method="get">
			<center>
				<table bgcolor= #FF6666 border = 1 >
					<tr><td>
						Ad: 
						<input type="text" name="ad"><br/>
					</td></tr>
					<tr><td>
						Soyad:
						<input type="text" name="soyad"><br/>
					</td></tr>
					<tr><td>
						Telefon Numarası: 
						<input type="text" name="telNo"><br>
					</td></tr>
					<tr><td>
						e-posta Adresi: 
						<input type="text" name="ePosta"><br>
					</td></tr>
					<tr><td>
						Giriş Tarihi: 
						<input type="text" name="gTarih"><br>
					</td></tr>
					<tr><td>
						Çıkış Tarihi: 
						<input type="text" name="cTarih"><br>
					</td></tr>
					<tr><td>
						Oda Tipi: 
						<select name="odaTipi">
							<option></option>
							<option >Tek Kisilik</option>
							<option >Cift Kisilik</option>
							<option >Uc Kisilik</option>
							<option >Kral Oda</option>
							<option >Suit Oda</option>
						</select><br>
					</td></tr>
					<tr><td>
						Oda Sayısı: 
						<select name="odaSayisi">
							<option></option>
							<option >1 Adet</option>
							<option >2 Adet</option>
							<option >3 Adet</option>
							<option >4 Adet</option>
							<option >5 Adet</option>
							<option >6 Adet</option>
							<option >7 Adet</option>
							<option >8 Adet</option>
							<option >9 Adet</option>
							<option >10 Adet</option>
						</select><br><br>
					</td></tr>
					<tr><td>
						<center>
							<button type="submit">KAYDET</button>
						</center>
					</td></tr>
				</table>
			</center>
		</form>
	</body>
</html>