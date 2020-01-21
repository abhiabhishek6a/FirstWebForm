package com.tb.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tb.web.beans.User;

public class LoginServlet extends HttpServlet
{
	List<User> users = new ArrayList<User>();
	
	public LoginServlet() 
	{
		users.add(new User("a@gmail.com", "123"));
		users.add(new User("b@gmail.com", "123"));
		users.add(new User("c@gmail.com", "123"));
		users.add(new User("d@gmail.com", "123"));
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		Map<String, String> headerValues = new HashMap<String, String>();
		
		Enumeration<String> headerNames = req.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String headerName = (String) headerNames.nextElement();
			
			//req.getHeader(headerName);
			
			headerValues.put(headerName, req.getHeader(headerName));
			headerValues.put("IP Address", req.getRemoteUser());
		}
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		req.setAttribute("headers", headerValues);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
		
		for (User user : users) 
		{
			if (user.getEmail().equals(email) && user.getPassword().equals(password))
			{
				req.setAttribute("res", email);
				dispatcher = req.getRequestDispatcher("welcome.jsp");
			}
			else
			{
				req.setAttribute("err", "Not Found");
			}
		}
		dispatcher.forward(req, resp);
	}
}

