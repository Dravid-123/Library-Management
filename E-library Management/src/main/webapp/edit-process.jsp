<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,jakarta.servlet.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/library";%>
<%!String user = "root";%>
<%!String psw = "Sanjay@12";%>
<%
String bookid = request.getParameter("bookid");
String name=request.getParameter("name");
String author=request.getParameter("author");
String category=request.getParameter("category");
if(bookid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(bookid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update books set bookid=?,name=?,author=?,category=? where bookid="+bookid;
ps = con.prepareStatement(sql);
ps.setString(1,bookid);
ps.setString(2, name);
ps.setString(3, author);
ps.setString(4, category);
int i = ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("/viewbook.jsp");
if(i > 0)
{
	request.setAttribute("status", "success");
}
else
{
	request.setAttribute("status", "error");
} 
rd.include(request, response);
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>