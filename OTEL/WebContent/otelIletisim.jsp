<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta charset="UTF-8">
		<title>İLETİŞİM</title>
	
	</head>

	<body bgcolor="#AFC7C7">
		
		<p><b>Adres : </b>Körfez Mahalesi  No:5 SAMSUN</p>
		<p><b>Telefon :</b> 0(362) 475 13 33 </p>
		<p><b>Fax :</b> 0(362) 433 41 55</p>
		<p><b>E-mail :</b> ondokuzmayis@hotel.com</p>
		<h2 align="center">Ön İletişim Formu</h2>
		<form action="iletisimServlet" method="get">
			<center>
				<table bgcolor= #306754 border = 1 >
					<tr><td>
						Ad: 
						<input type="text" name="ad"><br/>
					</td></tr>
					<tr><td>
						Soyad:
						<input type="text" name="soyad"><br/>
					</td></tr>
					<tr><td>
						Adres:
						<input type="text" name="adres"><br/>
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
						Fax: 
						<input type="text" name="fax"><br>
					</td></tr>
					<tr><td>
						Konu: 
						<select name="konu">
							<option ></option>
							<option >Bilgi Alma</option>
							<option >Oneri</option>
							<option >Sikayet</option>
						</select><br>
					</td></tr>
					<tr><td>
						Mesaj: 
						<input type="text" name="mesaj"><br>
					</td></tr>
					<tr><td>
						Cevaplama Şekli: 
						<select name="cevap">
							<option></option>
							<option >telefona mesaj gonder</option>
							<option >eMail gonder</option>
							<option >fax cek</option>
						</select><br><br>
					</td></tr>
					<tr><td>
						<center><button type="submit">KAYDET</button></center>
					</td></tr>
				</table>
			</center>
		</form>		
	</body>
</html>