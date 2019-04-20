package Servlet;


import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

//import com.connection.crudoperation;

public class Feedback extends HttpServlet {
       @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		try{
		String q=request.getParameter("query");
            
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/helpline","root","root");
		PreparedStatement ps=con.prepareStatement("insert into feedback values(?)");
		ps.setString(1,q);
               
		
		
		int i=ps.executeUpdate();
		if(i>0) //if the query is fired successfully then it will give a positive value
                
                {
                    
                response.sendRedirect("welcome.jsp");

               
                }
                else
                {
                pw.println("Duplicate user not allowed");
                }
		}catch (Exception e2) 
                {
                    
                    System.out.println(e2);
                }
	
		pw.close();
	}

}
