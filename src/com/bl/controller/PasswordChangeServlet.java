package com.bl.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bl.repository.DBConnection;


@WebServlet("/PasswordChangeServlet")
public class PasswordChangeServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{     Statement st=null;
	      ResultSet rs=null;
	       DBConnection db=new DBConnection();
	          Connection con =db.getConnection();
	          String email= request.getParameter("email");
	          System.out.println(email);
	           String pass= request.getParameter("pass");
	          try 
	          {
	        	     st =con.createStatement();
	                 rs= st.executeQuery("select * from  Registration where email_ID='"+email+"'");
	        	if(rs.next())
	        	{
	        		System.out.println(rs.getString("user_password"));
	        		st.executeQuery("update Registration set user_password="+pass+"where email_ID="+email);
	        		response.sendRedirect("Home.jsp");
	        	}
	        	else
	        	{
	        		response.sendRedirect("Registration.jsp");
	        	}       	  
	          }
	          catch(Exception e)
	          {
	        	  System.out.println("");
	          }
	}

}
