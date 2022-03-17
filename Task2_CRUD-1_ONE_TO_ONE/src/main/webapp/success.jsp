<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<center>
	<h1>All Information</h1>
</center>
<script type="text/javascript">
	function addUser() {
		document.fn.action = "register.jsp";
		document.fn.submit();
	}

	function editUser() {
		document.fn.action = "edit";
		document.fn.submit();
	}

	function deleteUser() {
		document.fn.action = "delete";
		document.fn.submit();
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<body>

	<form name="fn">

		<table border="1" align="center">
			<tr>
				<th>Sr No</th>
				<th>User Id</th>
				<th>Full Name</th>
				<th>User Name</th>
				<th>Password</th>
				<th>Mobile Number</th>
				<th>College Id</th>
				<th>College Name</th>
				<th>College Address</th>
			</tr>
			
			<c:forEach items="${data}" var="user">
				<br>
				<tr>
					<td><input type="radio" name="uid" value="${user.uid}"></td>
					<td>${user.uid}</td>
					<td>${user.name}</td>
					<td>${user.uname}</td>
					<td>${user.pass}</td>
					<td>${user.mobile}</td>
					<td>${user.college.cid}</td>
					<td>${user.college.cname}</td>
					<td>${user.college.caddress}</td>
				</tr>
			</c:forEach>
		</table>

		<table border="2" align="center">
			<tr>
				<td><input type="button" value="EDIT" onclick="editUser()"></td>
				<td><input type="button" value="ADD" onclick="addUser()"></td>
				<td><input type="button" value="DELETE" onclick="deleteUser()"></td>
				<td><input type="submit" value="CollegeData" formaction="viewcollege"></td>
				<td><input type="submit" value="Search" formaction="search"></td>
			</tr>
		</table>
	</form>
</body>
</html>