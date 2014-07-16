package com.stringpool.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletSendRedirectDemo")
public class ServletSendRedirectDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletSendRedirectDemo() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String go  ="hello";        
        response.sendRedirect(response.encodeRedirectURL(go));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
