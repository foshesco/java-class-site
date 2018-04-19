<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
</head>
<body style="background-color: gray;">
	<div align="center">
		<h1 style="border: 2px solid Tomato;">Chicago's Java Class
			Database</h1>
			<br>
			<br>
		<table width="800" border="2.5">
			<tr height="50">
			
				<th><b><font size="4">First Name</font></b></th>
				<th><b><font size="4">Last Name</font></b></th>
				<th><b><font size="4">Age</font></b></th>
				<th><b><font size="4">Branch</font></b></th>
			</tr>
		
			<c:forEach items="${alusers}" var="alusers">
				<tr>

					<td>${alusers.firstname}</td>
					<td>${alusers.lastname}</td>
					<td>${alusers.age}</td>
					<td>${alusers.branch}</td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>