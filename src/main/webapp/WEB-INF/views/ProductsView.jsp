<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/admin.css" />
<title>Categories</title>
</head>
<body>
<div id="formProduct" class="ceil">
	<f:form modelAttribute="product" action="saveProduct" method="post">
		<table>
			<tr>
				<f:input path="id" type="hidden"/>
				<td>Name</td>
				<td><f:input path="name" /></td>
				<td><f:errors path="name" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><f:textarea path="description" /></td>
				<td><f:errors path="description" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><f:input path="price" /></td>
				<td><f:errors path="price" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><f:select path="category.id" items="${categories}" itemValue="id" itemLabel="name" /></td>
				<td><f:errors path="category" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Brand</td>
				<td><f:select path="brand.id" items="${brands}" itemValue="id" itemLabel="name" /></td>
				<td><f:errors path="brand" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><f:input path="quantity" /></td>
				<td><f:errors path="quantity" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</f:form>	
</div>
<div id="products" class="ceil">
	<table class="tabStyle1">
		<tr>
			<th>ID</th><th>NAME</th><th>DESCRIPTION</th><th>PRICE</th><th>CATEGORY</th><th>BRAND</th><th>QOUNTITY</th><th></th><th></th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td>${product.price}</td>
				<td>${product.category.name}</td>
				<td>${product.brand.name}</td>
				<td>${product.quantity}</td>
				<td><a href="deleteProduct?id=${ product.id }">Delete</a></td>
				<td><a href="editProduct?id=${ product.id }">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>