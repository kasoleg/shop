<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Categories</title>
</head>
<body>
<div id="formCategory">
	<f:form modelAttribute="category" action="saveCategory" method="post">
		<table>
			<tr>
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
<div>
	<table>
		<tr>
			<th>ID</th><th>NAME</th><th>RATING</th>
		</tr>
		<c:forEach items="${categories}" var="category">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.rating}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>