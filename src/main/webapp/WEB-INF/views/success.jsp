<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<style>
.container {
	width: 45%;
	border: 1px solid black;
	margin: 5% auto;
	padding: 20px;
	font-size: 15px;
}
</style>
</head>
<body>

	<h1 style="text-align: center; margin: 5%">Registration
		Successful</h1>
	<div class="container">
		<h2>
			Welcome <i>${user.userName}</i>
		</h2>
		<h2>
			Your Email id is <i>${user.userEmail }</i>
		</h2>
		
		<h2>
			Secure your password <i>${user.userPassword }</i>
		</h2>
	</div>
</body>
</html>