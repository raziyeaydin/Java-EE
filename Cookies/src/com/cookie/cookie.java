package com.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class cookie
 */
@WebServlet("/cookie")
public class cookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cookie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		boolean newbie = true ;
	    Cookie[] cookies = request.getCookies();
	    if(cookies != null){
	    	for(Cookie cook: cookies){
	    		if((cook.getName().equals("repeatVisitor")) && (cook.getValue().equals("yes"))) {
	    			newbie = false;
	    			break;
	    		}
	    	}
	    }
	
	
	String title ;
	if(newbie){
		Cookie returnVisitorCookie = new Cookie("repeatVisitor","yes");
		returnVisitorCookie.setMaxAge(60*60*24*7);
		response.addCookie(returnVisitorCookie);
		
		title="welcome abroad";
	}
	else{
		title="welcome back";
	}
	
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
