<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div style="margin:40px 20%; height:400px; border: 2px solid black; padding: 100px; background-color: rgb(129, 219, 123);">

	<div class="col-3 mx-auto border border-dark">
		<h1 class="m-3">Send an Omikuji!</h1>
		<div>
			<form action="/processData" method="POST">
				<div class="form-group m-3">
					<label for="year">Pick any number from 5 to 25:</label>
					<input type="number" id="year" name="year" class="form-control">
				</div>
				<br>
				<div class="form-group m-3">
					<label for="city">Enter the name of any city:</label>
					<input type="text" id="city" name="city" class="form-control">
				</div>
				<br>
				<div class="form-group m-3">
					<label for="name">Enter the name of any real person:</label>
					<input type="text" id="name" name="name" class="form-control">
				</div>
				<br>
				<div class="form-group m-3">
					<label for="hobby">Enter professional endeavor or hobby:</label>
					<input type="text" id="hobby" name="hobby" class="form-control">
				</div>
				<br>
				<div class="form-group m-3">
					<label for="thing">Enter any type of living thing:</label>
					<input type="text" id="thing" name="thing" class="form-control">
				</div>
				<br>
				<div class="form-group m-3">
					<label for="nice">Say something nice to someone:</label>
					<input type="text" id="nice" name="nice" class="form-control">
				</div>
				<br>
				<div class="color">
				<h3>Send and show a friend</h3>
				</div>
				<input type="submit" value="Submit" class="m-3">
			</form>
		</div>
	</div>
	</div>
</body>
</html>