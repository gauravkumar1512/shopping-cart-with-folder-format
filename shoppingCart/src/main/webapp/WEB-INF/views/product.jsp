

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
     <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product..</title>
</head>
<body>

<c:url var="addAction"  value="/product/add"></c:url>
<form:form method="POST" commandName="product" action="${addAction}" >
<form:label style="color:#000000" path="id"><spring:message text="ID"/></form:label>
		<c:choose>
			<c:when test="${!empty product.id }">
				<form:input style="background-color:#F5F5DC;border:0.25px solid black" path="id" disabled="true" readonly="true"/>
			</c:when>
			<c:otherwise>
				<form:input style="background-color:#F5F5DC;border:0.25px solid black" path="id"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/>
				</c:otherwise>
				</c:choose>
				 <br><br>
    
      <div class="navbar-header">
      <h2 class="navbar-brand" style="color:#0000FF;margin:5px 0px 0px 0px">Shoes</h2>
    </div>
    
    <ul class="nav navbar-nav" style="text-align:center">   
       <li><h1 style="color:#F5F5DC;margin:5px 0px 0px 400px" ><center>CATEGORIES</center></h1></li>
           		
	 </ul>
     <form:input path="id" hidden="true"/>
    
    <form:label style="color:#000000" path="name"><spring:message text="NAME"/></form:label>
    <form:input type="text" name="name" path="name"/><br>
     <br><br>
    
    <form:label style="color:#000000" path="desc"><spring:message text="DESCRIPTION"/></form:label>
    <form:input type="text" name="desc" path="desc"/><br>
    
     <br><br>
      
     <form:label style="color:#000000" path="price"><spring:message text="PRICE"/></form:label>
    <form:input type="text" name="price" path="price"/><br>
    
     <br><br>
    
   <c:if test="${!empty product.name }">
								<input style= "align:middle" class="btn btn-warning btn-md" type="submit" value="<spring:message text="Edit Product"/>"/> 
								</c:if> 
								<c:if test="${empty product.name }"> 
 									<input style= "align:middle"  class="btn btn-info btn-md" type="submit" value="<spring:message text="Add Product"/>"/> 
 								</c:if> 
</form:form>
 
    


   

<%-- <h2><center>ADD CATEGORY</center></h2> --%>
<%-- <c:url var="addAction"  value="/category/add"></c:url> --%>

<%-- <form:form action="${addAction }" commandName="category"> --%>
<!-- <table class="table table-condensed"> -->
<!-- 	<tr bgcolor=#F0F8FF> -->
<%-- 		<td><form:label style="color:#000000" path="id"><spring:message text="ID"/></form:label></td> --%>
		
		
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${!empty category.id }"> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="id" disabled="true" readonly="true"/></td> --%>
<%-- 			</c:when> --%>
<%-- 			<c:otherwise> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="id"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/></td> --%>
<%-- 				</c:otherwise> --%>
<%-- 				</c:choose> --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF">  -->
<%-- 				<form:input path="id" hidden="true"/> --%>
				
<%-- 				<td><form:label style="color:#000000" path="name"> <spring:message text="name"/></form:label></td> --%>
<%--         		<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="name" required="true" /></td>  --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td><form:label style="color:#000000" path="description" ><spring:message text="description"/></form:label></td> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="description" required="true"/></td> --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td align="right" colspan="2"><c:if test="${!empty category.name }"> --%>
<%-- 									<input style= "align:middle" class="btn btn-primary btn-md" type="submit" value="<spring:message text="Edit Category"/>"/> --%>
<%-- 								</c:if> --%>
<%-- 								<c:if test="${empty category.name }"> --%>
<%-- 									<input style= "align:middle"  class="btn btn-primary btn-md" type="submit" value="<spring:message text="Add Category"/>"/> --%>
<%-- 								</c:if> --%>
<!-- 				</td> -->
<!-- 				</tr> -->
<!-- </table> -->
<%-- </form:form> --%>

<br>
<div class="container">

<h3><center>PRODUCT LIST</center></h3>
<br>
<c:if test="${!empty productList}">
	<table  class="table" align="center" bordercolor="#800080" BORDER=10>
			<tr bgcolor="#F0F8FF">
				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">PRODUCT ID</th>
				<th style="color:black" width="125" align="center">PRODUCT NAME</th>
				<th style="color:black" width="190" align="center">PRODUCT DESCRIPTION</th>
				<th style="color:black" width="190" align="center">PRODUCT PRICE</th>
<!-- 				<th style="color:black" width="190" align="center">PRODUCT CATEGORY</th> -->
<!-- 				<th style="color:black" width="190" align="center">PRODUCT SUPPLIER</th> -->
<!-- 				<th style="color:black" width="190" align="center">PRODUCT IMAGE</th> -->
				<th style="color:black" width="100" align="center">EDIT</th>
				<th style="color:black" width="100" align="center">DELETE</th>
			</tr>
					<c:forEach items="${productList}" var="product">
				<tr bgcolor="#FFFFFF">
					<td  style="color:#000000;font-size:120%" align="center">${product.id}</td>
					<td  style="color:#000000;font-size:120%" align="center">${product.name}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.desc}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.price}</td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/edit/${product.id}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/remove/${product.id}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>





</body>
</html>
