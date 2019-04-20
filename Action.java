/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;



import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

//import com.connection.crudoperation;

public class Action extends HttpServlet {
       @Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		try{
                    
                    String abc=request.getParameter("gp");
                    if(abc.equals("s"))
                    {
                        response.sendRedirect("stalk.jsp");
                    }
                   if(abc.equals("r"))
                    {
                        response.sendRedirect("rape.jsp");
                    }
                   if(abc.equals("d"))
                    {
                        response.sendRedirect("domestic.jsp");
                    }
                   if(abc.equals("a"))
                    {
                        response.sendRedirect("acid.jsp");
                    }
                   if(abc.equals("se"))
                    {
                        response.sendRedirect("sexual.jsp");
                    }
                   
                  }catch (Exception e2) 
                {
                    
                    System.out.println(e2);
                }
	
		pw.close();
	}

}

 