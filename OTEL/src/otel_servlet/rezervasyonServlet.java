package otel_servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import otel_bean.rezervasyonBEAN;


@WebServlet("/rezervasyonServlet")
public class rezervasyonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public rezervasyonServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		rezervasyonBEAN user2 = new rezervasyonBEAN();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel","root","1234samsun");
			Statement st = con.createStatement();
			
            String ad = (request.getParameter("ad")).toString();
			String soyad = (request.getParameter("soyad")).toString();
			String telNo = (request.getParameter("telNo")).toString();
			String ePosta = (request.getParameter("ePosta")).toString();
			String gTarih = (request.getParameter("gTarih")).toString();
			String cTarih = (request.getParameter("cTarih")).toString();
			String odaTipi = (request.getParameter("odaTipi")).toString();
			String odaSayisi = (request.getParameter("odaSayisi")).toString();
			
			user2.setAd(ad);
			user2.setSoyad(soyad);
			user2.setTelNo(telNo);
			user2.setePosta(ePosta);
			user2.setgTarih(gTarih);
			user2.setcTarih(cTarih);
			user2.setOdaTipi(odaTipi);
			user2.setOdaSayisi(odaSayisi);
			
			
			 request.setAttribute("user", user2);
			 
			
			String query = "INSERT INTO trezervasyon(ad,soyad,telefon,eMail,girisTarih,cikisTarih,odaTipi,odaSayisi) VALUES('" + ad + "','" + soyad + "','" + telNo + "','" + ePosta + "','" + gTarih + "','"+ cTarih +"', '" + odaTipi + "', '" + odaSayisi + "')";
			
			st.executeUpdate(query);
			
			
			con.close();
		}
		

		
		
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Kaydýnýz Veritabanýmýza yapýlmadý");
		}
		
		finally{
			RequestDispatcher dispatcher = request.getRequestDispatcher("rezervasyonJSTL.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
