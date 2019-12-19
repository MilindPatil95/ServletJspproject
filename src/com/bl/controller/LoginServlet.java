package com.bl.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bl.repository.DBConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			DBConnection db = new DBConnection();
			Connection con = db.getConnection();
			Statement st;
			ResultSet rs;
			String email = request.getParameter("email");
			String pass = request.getParameter("password");
			String name=request.getParameter("name");
			st = con.createStatement();
			rs = st.executeQuery("select * from  Registration where email_ID='"+email +"'");
			if (rs.next())
			{
				String password = rs.getString("user_password");
				if (password.equals(pass)) 
				{				 
					  HttpSession session =request.getSession();
					  session.setAttribute("user",name);
					  response.sendRedirect("Welcome.jsp");
				}
				else
				{ 
					response.sendRedirect("Login.jsp");
				}
			}
			else
			{
				response.sendRedirect("Registration.jsp");
			}
		} catch (Exception e) 
		{
			System.out.println("");
		}

	}

}
