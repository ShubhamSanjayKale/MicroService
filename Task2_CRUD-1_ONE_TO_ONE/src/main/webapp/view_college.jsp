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
		document.fn.action = "register_college.jsp";
		document.fn.submit();
	}

	function editUser() {
		document.fn.action = "edit_college";
		document.fn.submit();
	}

	function deleteUser() {
		document.fn.action = "delete_college";
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
				<th>College Id</th>
				<th>College Name</th>
				<th>College Address</th>
			</tr>
			<tr>
				<c:forEach items="${data}" var="college">
					<br>
					<td><input type="radio" name="cid" value=${college.cid} }></td>
					<td>${college.cid}</td>
					<td>${college.cname}</td>
					<td>${college.caddress}</td>
			</tr>
			</c:forEach>
		</table>

		<table border="2" align="center">

			<tr>
				<td><input type="button" value="EDIT" onclick="editUser()"></td>
				<td><input type="button" value="ADD" onclick="addUser()"></td>
				<td><input type="button" value="DELETE" onclick="deleteUser()"></td>
			</tr>
		</table>
	</form>
</body>
</html>