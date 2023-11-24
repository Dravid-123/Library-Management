package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Librarianlogin
 */
@WebServlet("/liblogin")
public class Librarianlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		HttpSession session = request.getSession();
		if(email.equals("admin12@librarian.com")&&pass.equals("admin@12")){
			session.setAttribute("admin","true");
			request.getRequestDispatcher("librariandash.jsp").include(request, response);
		}else {
			request.setAttribute("status", "error");
			request.getRequestDispatcher("LibrarianLogin.jsp").include(request, response);
		}
	}
}
