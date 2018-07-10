<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
    <script type="text/javascript" src="js/app.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="nav">
				<h1>Java Assignment: The Code</h1>
			</div>
		</div>

		<div class="main_content">
			<h3>Hello There, Welkommen!</h3>
			<p><c:out value="${error}"></c:out></p>
	    <form class="form-group" action="/process" method="post">
  		  <h3>Enter the Keyword to enter</h3>
  		  <input type="text" name="keyword" value="">
  		  <input type="submit" name="submit" value="Submit" class="btn btn-success">
	    </form>
			<a href="/secret" class="btn btn-primary">To Secret</a>
		</div>

	</div>
</body>
</html>
