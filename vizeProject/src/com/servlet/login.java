package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login() {
        super();
        
    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title ="Baslangic";
		
		response.setContentType("text/html");
		String kullaniciAd = request.getParameter("kullaniciAd");
		String sifre = request.getParameter("sifre");
		/*
		PrintWriter out = response.getWriter();
		out.println("<!docType html>" +
				"<HTML>\n" +
				"<HEAD><TITLE>"+title + "</TITLE>"+
				"<meta charset=\"UTF-8\"></HEAD>\n" +
				"<BODY BGCOLOR=\"#FDF5E6\">\n" +
				"<H1 ALIGN=\"CENTER\">" + title + "</H1>\n" +
				"<UL>\n" +
				" <LI><B>Kullanici Ad</B>: "+ kullaniciAd + "\n" +
				" <LI><B>Sifre</B>: "+ sifre + "\n" +
				"</UL>\n"+
				"<input type=\"submit\">"+
				"</BODY></HTML>"
				);
				
				tuser tablosuna gidecek 
				
				baðlantý yapýlmalý burada
		*/
		if(kullaniciAd.length()<=5){
			String go  ="ogrenci";        
	        response.sendRedirect(response.encodeRedirectURL(go));
		}
		else{
			String go  ="ogretmen";        
	        response.sendRedirect(response.encodeRedirectURL(go));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
