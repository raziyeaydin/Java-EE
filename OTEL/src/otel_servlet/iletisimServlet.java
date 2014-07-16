package otel_servlet;
import otel_bean.iletisimBEAN;

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

@WebServlet("/iletisimServlet")
public class iletisimServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public iletisimServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		
		iletisimBEAN user= new iletisimBEAN();
		
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel","root","1234samsun");
			Statement st = con.createStatement();
			
            String ad = (request.getParameter("ad")).toString();
			String soyad = (request.getParameter("soyad")).toString();
			String adres = (request.getParameter("adres")).toString();
			String telNo = (request.getParameter("telNo")).toString();
			String ePosta = (request.getParameter("ePosta")).toString();
			String fax = (request.getParameter("fax")).toString();
			String konu = (request.getParameter("konu")).toString();
			String mesaj = (request.getParameter("mesaj")).toString();
			String cevapSekli = (request.getParameter("cevap")).toString();
			
			
			user.setFirstName(ad);
			user.setLastName(soyad);
			user.setTelNo(telNo);
			user.setEposta(ePosta);
			user.setFax(fax);
			user.setAdres(adres);
			user.setKonu(konu);
			user.setMesaj(mesaj);
			user.setCevap(cevapSekli);
			
			 request.setAttribute("user", user);
			
		
		  String query = "INSERT INTO tiletisim(ad,soyad,adres,telefon,eMail,fax,konu,mesaj,cevapSekli) VALUES('" + ad + "','" + soyad + "','" + adres + "','" + telNo + "','" + ePosta + "','"+ fax +"', '" + konu + "', '" + mesaj + "', '" + cevapSekli + "')";
			
			st.executeUpdate(query);
			
			
			
		
		con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Kaydýnýz Veritabanýmýza yapýlmadý");
		}
		
		finally{
			RequestDispatcher dispatcher = request.getRequestDispatcher("iletisimJSTL.jsp");
			 dispatcher.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
