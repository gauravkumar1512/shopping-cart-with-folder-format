<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
      <form:form method="POST" commandName="supplier" action="supplier/add" class="form-inline">
     ID:
    <form:input type="text" name="id" path="id" class="form-control"/><br>
   NAME:
    <form:input type="text" name="name" path="name" class="form-control"/><br>
   DESCRIOPTION:
    <form:input type="text" name="desc" path="desc" class="form-control"/><br>
    
    <input type="submit" value="ADD supplier" class="btn btn-primary"/><br>
    </form:form>
</body>
</html>