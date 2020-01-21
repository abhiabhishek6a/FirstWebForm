<%@page import="java.util.Set"%>
<%@page import="com.tb.web.beans.User"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script defer
	src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- ADDITIONAL STYLESHEET HERE -->
<title>SITE NAME</title>
</head>
<body>
	<!-- ALL OF YOUR SITE CODE HERE -->
	<div style="margin-left: 30%; margin-right: 30%;">
		<div id="imgDiv" class="row">
			<img
				src="http://icons.iconarchive.com/icons/iconshock/cms/256/user-icon.png"
				style="margin-top: 3px" width="256" height="256" alt="User icon"
				title="User icon">
		</div>
		<form class="form" action = "login" method = "post">
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> 
				<input name = "email" type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email"> 
					<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.
					 </small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> 
			<input name = "password" type="password" class="form-control" id="exampleInputPassword1"
					placeholder="Password">
			</div>
			<div class="form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			
			<a href="Signup.jsp" class="btn btn-primary">Signup</a>
	
		
		
		
		<%
			Object err = request.getAttribute("err");
		if (err!= null)
		{
			%>
			<div style = "background-color: red">
				<span><%= err %></span>
			</div>	<%
		}
		 %>
					<ol>	<%
	
			
		
		Map<String, User> userMap = (Map<String, User>) request.getAttribute("userMap");
		if (userMap!= null)
		{
			Set<String> set = userMap.keySet();
			for(String key : set)
			{
				%>
				<li> <%=key %> | <%= userMap.get(key) %> </li><%
			}
		}
		
		%>
		</ol>	
	</div>

	<!-- ALL OF YOUR SITE CODE HERE -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<!-- ADDITIONAL JS HERE -->
</body>
</html>