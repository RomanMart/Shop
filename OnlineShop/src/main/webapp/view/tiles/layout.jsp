<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href='<c:url value="/res/bootstrap-3.3.5-dist/css/bootstrap.min.css"></c:url>'>
	</head>
	<body>
		<tiles:insertAttribute name="head"></tiles:insertAttribute>
		<tiles:insertAttribute name="body"></tiles:insertAttribute>
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</body>
</html>