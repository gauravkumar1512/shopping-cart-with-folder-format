<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form:form method="POST" commandName="user" action="register/add" class="form-inline">
     Name:
    <form:input type="text" name="name" path="name" class="form-control"/><br>
    Password:
    <form:input type="password" name="password" path="password" class="form-control"/><br>
    Address:
    <form:input type="text" name="address" path="address" class="form-control"/><br>
    E-mail:
    <form:input type="text" name="email" path="email" class="form-control"/><br>
     Phone:
    <form:input type="text" name="phone" path="phone" class="form-control"/><br>
    <input type="submit" value="submit" class="btn btn-primary"/><br>
</form:form>
</body>
</html>