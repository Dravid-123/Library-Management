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
 * Servlet implementation class Issuebook
 */
@WebServlet("/Issuebook")
public class Issuebook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bookid=request.getParameter("bookid");
		String studentid=request.getParameter("studentid");
		String issuedate = request.getParameter("issuedate");
		String duedate = request.getParameter("duedate");
        String returndate = null;
        
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","Sanjay@12");
			PreparedStatement ps=con.prepareStatement("insert into issuebook values(?,?,?,?,?,?,?)");
			ps.setString(1, bookid);
			ps.setString(2, studentid);
			ps.setString(3, issuedate);
			ps.setString(4, duedate);
			ps.setString(5, returndate);
			ps.setString(6,"Not Returned");
			ps.setString(7,"-");
			
			int count=ps.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("/issuebookform.jsp");
			if(count>0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status", "error");
			}
			rd.include(request, response);
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
