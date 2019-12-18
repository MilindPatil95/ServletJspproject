package com.bl.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bl.repository.DBConnection;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet 
{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
		System.out.println("in servlet");
		String name=null,email=null,password=null;
	    name=request.getParameter("username");
	    email=request.getParameter("emailid");
	    password=request.getParameter("upass");
	  
	      DBConnection db=new DBConnection();
	      Connection connection=db.getConnection();
	      try {
	      PreparedStatement st= connection.prepareStatement("insert into Registration values('0',?,?,?)");
	      st.setString(1, name); 
	      st.setString(2, email);
	      st.setString(3, password);
	      st.execute();
	      System.out.println(" data inserted");
	      response.sendRedirect("Login.jsp");
	      }
	      catch(Exception e)
	      {
	    	  System.out.println(e);
	      }
	      
	    		  
	}
}
