package Servlet;


import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

//import com.connection.crudoperation;

public class Complaint extends HttpServlet {
       @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		try{
		String nm=request.getParameter("nme");
                String l=request.getParameter("loc");
                String c=request.getParameter("numb");
                String ste=request.getParameter("st");
		
                String d=request.getParameter("ud");
                
                String in=request.getParameter("inc");
                String pro=request.getParameter("pr");
                String cm=request.getParameter("cmp");
                
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/helpline","root","root");
		PreparedStatement ps=con.prepareStatement("insert into complaint values(?,?,?,?,?,?,?,?)");
		ps.setString(1,nm);
                ps.setString(2,l);
		
                ps.setString(3,c);
		
                ps.setString(4,ste);
                ps.setString(5,d);
                ps.setString(6,in);
                ps.setString(7,pro);
                ps.setString(8,cm);
              
                 
		int i=ps.executeUpdate();
		if(i>0) //if the query is fired successfully then it will give a positive value
                
                {
                    
                   pw.println("Hello! "+nm);
                response.sendRedirect("police.jsp");

               
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
