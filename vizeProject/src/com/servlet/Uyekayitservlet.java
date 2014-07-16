package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Uyekayitservlet")
public class Uyekayitservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Uyekayitservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String title= "Yeni Üye Bilgileri";
		out.println("<!DOCTYPE html>\n"+
				"<html>\n"+
				"<head><title>"+title+"</title></head>\n"+
				"<body bgcolor=\"#fdf5e6\">\n"+
				"<h1 align= center>"+title+"</h1>\n"+
				"<table border=2 align=center>\n"+//border tablonun kenarýnýn kalýnlýðýný belirtiyor.
				"<tr bgcolor=\"#ffad00\">\n"+
				"<th>Parameter Name<th>Parameter Value(s)"//th'ler kendinden sonra gelen tablo baþlýklarýna hücre oluþturuyor.
				);
				
				Enumeration<String> paramNames =request.getParameterNames();  //internet sayfasýndaki kutucuklarýn name'lerine paramNames dedik.
				while(paramNames.hasMoreElements()){  //kutucuklarýn name'leri tanýmlandýysa yani varsa 
					String paramName = (String)paramNames.nextElement();  //teker teker bu deðerleri paramName'e atýyoruz
					out.print("<tr><td>"+paramName+"\n<td>");  //kutunun name'ine ait deðerleri yazdýrýyoruz.name="" dediðimiz kýsým,<tr> olduðu için tabloya yazýyor.
					String[] paramValues = request.getParameterValues(paramName);  //bu name'lerin value'lerini de paramValue'ye atýyoruz. input'ta name="isim" ise biz buna raziye deriz bu paramValue olur oradaki isim de paramName olur
					if(paramValues.length == 1){
						String paramValue = paramValues[0];
						if(paramValue.length()==0){
							out.println("<I>No Value</I>");
						}
						else{
							out.println(paramValue);
						}
					}
					else{
						out.println("<UL>");
						for(int i=0; i<paramValues.length;i++){
							out.println("<LI>"+paramValues[i]);
						}
						out.println("</UL>");
					}
				}
				out.println("</table>\n</body>\n</html>");
				
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
