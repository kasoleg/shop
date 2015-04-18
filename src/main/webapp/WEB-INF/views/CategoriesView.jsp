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
<div id="formCategory" class="ceil">
	<f:form modelAttribute="category" action="saveCategory" method="post">
		<table>
			<tr>
				<f:input path="id" type="hidden"/>
				<td>Name</td>
				<td><f:input path="name" /></td>
				<td><f:errors path="name" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</f:form>	
</div>
<div class="ceil">
	<table class="tabStyle1">
		<tr>
			<th>ID</th><th>NAME</th><th>RATING</th><th></th><th></th>
		</tr>
		<c:forEach items="${categories}" var="category">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.rating}</td>
				<td><a href="deleteCategory?id=${ category.id }">Delete</a></td>
				<td><a href="editCategory?id=${ category.id }">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>