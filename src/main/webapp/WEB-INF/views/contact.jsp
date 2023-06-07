<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Registration Form</title>
</head>
<body style="background-image: url('resource/image/bg.jpg');">


	<div class="container mt-5 w-50">

		<h3 class="text-center">Registration Form</h3>
		<form action="processform" method="post" enctype= multipart/form-data>
			<div class="form-group">
				<label for="userEmail">Email address</label> <input type="email"
					class="form-control" id="userEmail" placeholder="Enter email"
					name="userEmail">
			</div>
			<div class="form-group">
				<label for="userName">User Name</label> <input type="text"
					class="form-control" id="userName" placeholder="Enter user name"
					name="userName">
			</div>
			<div class="form-group">
				<label for="UserPassword">Password</label> <input type="password"
					class="form-control" id="UserPassword" placeholder="Password"
					name="userPassword">
			</div>
			<div class="form-group">
				<label for="UserGender">Gender :&nbsp;</label> <input type="radio"
					id="UserGender" value="Male" name="userGender">Male &nbsp;
				<input type="radio" id="UserGender" value="Female" name="userGender">Female
			</div>
			<div class="form-group">
				<label for="DOB">DOB</label> <input type="text" class="form-control"
					id="UserDOB" placeholder="dd/mm/yyyy" name="userDOB">
			</div>
			<p>Your Address</p>

			<div class="card-body">
				<div class="form-group">
					<input type="text" class="form-control" name="address.street"
						placeholder="Enter street">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="address.city"
						placeholder="Enter city">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="address.district"
						placeholder="Enter district">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="address.state"
						placeholder="Enter state">
				</div>
			</div>
			<div class="form-group">
				<label for="profile">Profile Image</label> <input
					type="file" class="form-control-file" id="profile" name="profile">
			</div>

			<div class="container text-center  mb-5">
				<button type="submit" class="btn btn-success">Sign up</button>
			</div>

		</form>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>