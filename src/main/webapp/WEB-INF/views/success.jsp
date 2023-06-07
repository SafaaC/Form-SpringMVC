<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	margin: auto;
	padding: 20px;
	font-size: 15px;
}
 img{
	display: block;
  margin-left: auto;
  margin-right: auto;
  width: 150px;
  height:150px;
}
</style>
</head>
<body>

	<h1 style="text-align: center;margin-top: 15px;">Registration
		Successful</h1>
	<div class="container">
	<img alt="Profile Picture" src="<c:url value="/resource/image/${filename }"/>" />
		<h2>
			Welcome <i>${user.userName}</i>
		</h2>
		<h2>
			Your Email id is <i>${user.userEmail }</i>
		</h2>
		<h2>
			Your Address is <i>${user.address.district }</i>  <i>${user.address.state }</i>
		</h2>
		
		<h2>
			Secure your password <i>${user.userPassword }</i>
		</h2>
	</div>
</body>
</html>