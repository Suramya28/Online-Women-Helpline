

package Servlet;

import java.io.IOException;


import static java.lang.System.out;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import samrt.db.CrudOperation;


@WebServlet("/Login_police")
public class Login_police extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_police() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpSenrvletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String n=request.getParameter("nm");
		String p=request.getParameter("pass");
		
		//con=CrudOperation.createConnection();
                
		String strsql="select * from police_register where n=? and p=?";
		try{
                    
                    Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/helpline","root","root");
			ps=con.prepareStatement(strsql);
			ps.setString(1, n);
			ps.setString(2, p);
			rs=ps.executeQuery();
			if(rs.next())
			{
				response.sendRedirect("police.jsp");
			}
                        else
                        {
                            response.sendRedirect("police.jsp");
                            
                        }
		}
		catch(SQLException se)
		{
			System.out.println(se);
		} catch (ClassNotFoundException ex) {
                Logger.getLogger(Login_police.class.getName()).log(Level.SEVERE, null, ex);
            }
		finally
		{
			try
			{
				if(ps!=null)
				{
					ps.close();
				}
			}
			catch(SQLException se1)
			{
				System.out.println(se1);
			}
		}
	}
}
