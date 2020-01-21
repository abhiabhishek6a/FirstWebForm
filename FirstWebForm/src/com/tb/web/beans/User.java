package com.tb.web.beans;

public class User 
{
	static int tempId = 0;
	int id;
	private String email;
	private String password;
	private String name;
	
	public User() 
	{
		this.id = tempId++;
	}
	
	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}
	
	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}

	public User(String email, String password) 
	{
		this.email = email;
		this.password = password;
	}
}
