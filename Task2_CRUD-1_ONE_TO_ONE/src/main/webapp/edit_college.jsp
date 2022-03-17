<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<center>
	<h1 align="center">EDIT DATA</h1>
</center>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<body>

	<form action="update_college">

		<table border="1">
		
		<input type="hidden" name="cid" value="${data.cid}" >
		
			<tr>
			<td>College Name :-</td>
			<td><input type="text" name="cname" value="${data.cname}"></td>
			</tr>
			<tr>
			<td>College Address :-</td>
			<td><input type="text" name="caddress" value="${data.caddress}"></td>
			</tr>
			<tr>
			<td><input type="submit" value="UPDATE"></td>
			</tr>
		</table>
	</form>
</body>
</html>