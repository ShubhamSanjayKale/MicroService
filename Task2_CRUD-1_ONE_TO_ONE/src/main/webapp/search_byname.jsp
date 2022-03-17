<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<h1 align="center">All Information</h1>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<body>

	<form name="fn">
		<center>
			Enter Name :- 	<input type="text" name="name" placeholder="Enter Full Name">&nbsp;&nbsp;	
							<input type="submit" Value="Search" formaction="searchByName">&nbsp;&nbsp;
							<input type="submit" Value="Back" formaction="login.jsp">
		</center>
		<table border="1" align="center">
			<tr>
				<th>User Id</th>
				<th>Full Name</th>
				<th>User Name</th>
				<th>Password</th>
				<th>Mobile Number</th>
			</tr>
			
			<c:forEach items="${data}" var="user">
				<br>
				<tr>
					<td>${user.uid}</td>
					<td>${user.name}</td>
					<td>${user.uname}</td>
					<td>${user.pass}</td>
					<td>${user.mobile}</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>