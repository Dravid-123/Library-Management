package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentLogin
 */
@WebServlet("/studlogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		RequestDispatcher rd=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","Sanjay@12");
			PreparedStatement ps=con.prepareStatement("select * from stureg where email = ? and pass = ?");
			ps.setString(1, email);
			ps.setString(2, pass);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				rd=request.getRequestDispatcher("studenthome.jsp");
			}
			else {
				request.setAttribute("status", "error");
				rd=request.getRequestDispatcher("StudentLogin.jsp");
			}	
			rd.forward(request, response);
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
