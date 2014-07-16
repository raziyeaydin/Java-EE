package servlet_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean_mvc.User_mvc;

@WebServlet("/process_mvc")
public class process_mvc extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public process_mvc() {
        super();
        // TODO Auto-generated constructor stub
    }

   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		int firstName = Integer.valueOf(request.getParameter("FIRSTNAME"));
		 String lastName = request.getParameter("LASTNAME");
		 
		 User_mvc user = new User_mvc();
		 
		 user.setFirstName(firstName);
		 user.setLastName(lastName);
		 
		 request.setAttribute("user", user);
		 
		 RequestDispatcher dispatcher = request.getRequestDispatcher("result_mvc.jsp");
		 dispatcher.forward(request, response);
	}

}
