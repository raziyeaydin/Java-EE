package com.servlet;

import com.servlet.Uyekayitservlet;

public class Control {

	public boolean epostaControl(String email)
	 { 
		 if(email.matches(
	  "(([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4}))(((;|,|; | ;| ; | , | ,){1}"
	  +"([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4}))*)")) {
			 return true; 
			 } 
		 else
		 { 
			 return false; 
		 } 
	}
	
	public static void main(String[] args) {
		// eposta(request.getParameter(ePosta));

	}

}
