<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header" class="ceil">
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	<div id="content" class="ceil">
		<div id="menu" class="ceil">
			<tiles:insertAttribute name="menu"></tiles:insertAttribute>
		</div>
		<div id="body" class="ceil">
			<tiles:insertAttribute name="body"></tiles:insertAttribute>
		</div>
	</div>
	<div id="footer" class="ceil">
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
</body>
</html>