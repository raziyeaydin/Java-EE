package com.proje;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.ParseConversionEvent;

import com.sun.org.apache.xml.internal.serializer.utils.StringToIntTable;


@WebServlet("/kayit")
public class kayit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public kayit() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id =Integer.valueOf(request.getParameter("id"));
		 String first = (request.getParameter("first"));
		 String last = (request.getParameter("last"));
		int age = Integer.valueOf(request.getParameter("age"));
		
		System.out.println(id+first+last+age);
		 
		/*
		    RequestDispatcher dispatcher = request.getRequestDispatcher("kayit.jsp");
			dispatcher.forward(request, response);
		*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
	    
	
	}

}
