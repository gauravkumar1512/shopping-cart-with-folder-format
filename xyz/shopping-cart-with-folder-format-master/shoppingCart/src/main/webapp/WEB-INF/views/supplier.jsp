	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
    <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <style>
  body
  {
  	background-image: url("resources/images/jkl.jpg");
  }
  
  </style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    

</head>
<body>


 
    


   

<h2><center>ADD SUPPLIER</center></h2>
<c:url var="addAction"  value="/supplier/add"></c:url>

<form:form action="${addAction }" commandName="supplier">
<table class="table table-condensed">
	<tr bgcolor=#F0F8FF>
		<td><form:label style="color:#000000" path="id"><spring:message text="id"/></form:label></td>
		
		
		<c:choose>
			<c:when test="${!empty supplier.id}">
				<td><form:input class="form-control" style="background-color:#F5F5DC;border:0.25px solid black" path="id" disabled="true" readonly="true"/></td>
			</c:when>
			<c:otherwise>
				<td><form:input class="form-control" style="background-color:#F5F5DC;border:0.25px solid black" path="id"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/></td>
				</c:otherwise>
				</c:choose>
				</tr>
				
				<tr bgcolor="#F0F8FF"> 
				<form:input path="id" hidden="true"/>
				
				<td><form:label style="color:#000000" path="name"> <spring:message text="name"/></form:label></td>
        		<td><form:input class="form-control" style="background-color:#F5F5DC;border:0.25px solid black" path="name" required="true" /></td> 
				</tr>
				
				<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="desc" ><spring:message text="desc"/></form:label></td>
				<td><form:input class="form-control" style="background-color:#F5F5DC;border:0.25px solid black" path="desc" required="true"/></td>
				</tr>
				
				<tr bgcolor="#F0F8FF">
				<td align="right" colspan="2"><c:if test="${!empty supplier.name }">
									<input style= "align:middle" class="btn btn-primary btn-md" type="submit" value="<spring:message text="Edit Supplier"/>"/>
								</c:if>
								<c:if test="${empty supplier.name }">
									<input style= "align:middle"  class="btn btn-primary btn-md" type="submit" value="<spring:message text="Add Supplier"/>"/>
								</c:if>
				</td>
				</tr>
</table>
</form:form>

<br>
<div class="container">

<h3><center>SUPPLIER LIST</center></h3>
<br>
<c:if test="${!empty supplierList}">
	<table  class="table" align="center" bordercolor="#800080" BORDER=10>
			<tr bgcolor="#F0F8FF">
				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">SUPPLIER ID</th>
				<th style="color:black" width="125" align="center">SUPPLIER NAME</th>
				<th style="color:black" width="190" align="center">SUPPLIER DESCRIPTION</th>
				<th style="color:black" width="100" align="center">EDIT</th>
				<th style="color:black" width="100" align="center">DELETE</th>
			</tr>
					<c:forEach items="${supplierList}" var="supplier">
				<tr bgcolor="#FFFFFF">
					<td  style="color:#000000;font-size:120%" align="center">${supplier.id}</td>
					<td  style="color:#000000;font-size:120%" align="center">${supplier.name}</td>
					<td style="color:#000000;font-size:120%" align="center">${supplier.desc}</td>
					<td style="color:#f44336;font-size:120%" align="center"><a href="<c:url value='supplieredit${supplier.id}' />"><button type="button">Edit</button></a></td>
					<td style="color:#f44336;font-size:120%" align="center"><a href="<c:url value='supplier/remove/${supplier.id}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>





</body>
</html>