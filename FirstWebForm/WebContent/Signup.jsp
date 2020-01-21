<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.*"%>
	<%@page import="com.tb.web.beans.User"%>
<!DOCTYPE html>
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
		<form class="form" action="Signup" method="post">
			<div class="form-group">
				<label for="exampleInputPassword1">Name</label> <input
					name="name" type="Text" class="form-control"
					id="form-text text-muted"" placeholder="Name">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					name="email" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email"> <small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else. </small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					name="password" type="password" class="form-control"
					id="exampleInputPassword1" placeholder="Password">
			</div>

			<div class="form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div>
			<button type="submit" class="btn btn-primary">Signup</button>
			</form>

		</div></body></html>	