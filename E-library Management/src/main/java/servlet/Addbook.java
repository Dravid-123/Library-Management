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
 * Servlet implementation class AddBook
 */

@WebServlet("/AddBook")
public class Addbook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bookid=request.getParameter("bookid");
		String name=request.getParameter("name");
		String author=request.getParameter("author");
		String category=request.getParameter("category");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","Sanjay@12");
			PreparedStatement ps=con.prepareStatement("insert into books values(?,?,?,?)");
			ps.setString(1, bookid);
			ps.setString(2, name);
			ps.setString(3, author);
			ps.setString(4, category);
			
			int count=ps.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("/addbookform.jsp");
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
