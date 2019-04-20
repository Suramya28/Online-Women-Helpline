package Servlet;


import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

//import com.connection.crudoperation;

public class Police extends HttpServlet {
       @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		try{
		String n=request.getParameter("nm");
              String p=request.getParameter("pass");
              String r=request.getParameter("rank");
              String l=request.getParameter("loc");
              String s=request.getParameter("state");
              
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/helpline","root","root");
		PreparedStatement ps=con.prepareStatement("insert into police_register values(?,?,?,?,?)");
		ps.setString(1,n);
                ps.setString(2,p);
		ps.setString(3,r);
                ps.setString(4,l);
		ps.setString(5,s);
               
                
		int i=ps.executeUpdate();
		if(i>0) //if the query is fired successfully then it will give a positive value
                
                {
                    
              pw.println("Hello!" +n);
                response.sendRedirect("login_police.jsp");

               
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
