package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Studentreg
 */
@WebServlet("/StudReg")
public class Studentreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String studentid=request.getParameter("studentid");
		String studentname=request.getParameter("studentname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String mobile=request.getParameter("mobile");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","Sanjay@12");
			PreparedStatement ps=con.prepareStatement("insert into stureg values(?,?,?,?,?)");
			ps.setString(1, studentid);
			ps.setString(2, studentname);
			ps.setString(3, email);
			ps.setString(4, pass);
			ps.setString(5, mobile);
			
			int count=ps.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("/StudentReg.jsp");
			con.close();
			if(count>0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "error");
			}
			rd.include(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
