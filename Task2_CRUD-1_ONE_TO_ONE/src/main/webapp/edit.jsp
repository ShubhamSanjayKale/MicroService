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

	<form action="update">

		<table border="1">
		
		<input type="hidden" name="uid" value="${data.uid}" >
		
			<tr>
			<td>Full Name :-</td>
			<td><input type="text" name="name" value="${data.name}"></td>
			</tr>
			<tr>
			<td>User Name :-</td>
			<td><input type="text" name="uname" value="${data.uname}"></td>
			</tr>
			<tr>
			<td>User Password :-</td>
			<td><input type="text" name="pass" value="${data.pass}"></td>
			</tr>
			<tr>
			<td>User Mobile Number :-</td>
			<td><input type="text" name="mobile" value="${data.mobile}"></td>
			</tr>
			<tr>
			<td>User College Id    :- </td>
			<td><input type="text" name="college.cid" value="${data.college.cid}"></td>
			</tr>
			<tr>
			<td>User College Name    :- </td>
			<td><input type="text" name="college.cname" value="${data.college.cname}"></td>
			</tr>
			<tr>
			<td>User College Address    :- </td>
			<td><input type="text" name="college.caddress" value="${data.college.caddress}"></td>
			</tr>
			<tr>
			<td><input type="submit" value="UPDATE"></td>
			</tr>
		</table>
	</form>
</body>
</html>