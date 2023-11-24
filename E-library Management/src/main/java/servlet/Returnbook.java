package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Returnbook
 */
@WebServlet("/Returnbook")
public class Returnbook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bookid=request.getParameter("bookid");
		String returndate = request.getParameter("returndate");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","Sanjay@12");
			PreparedStatement ps=con.prepareStatement("UPDATE issuebook SET returndate = ?,status='Returned' WHERE bookid = ?");
			ps.setString(1, returndate);
			ps.setString(2, bookid);
			ps.executeUpdate();
			request.getRequestDispatcher("/returnbook.jsp").forward(request, response);
    }catch(Exception e) {
		e.printStackTrace();
	}
	}
}