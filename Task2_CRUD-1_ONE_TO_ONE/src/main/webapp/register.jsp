<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
<h3 align="center">Student Register Page</h3><br>
<form action="registerdata">

<table border=1 align="center">
<tr>
<td>Enter User Id   :- </td>
<td><input type="text" name="uid"></td>
</tr>
<tr>
<td>Enter Full Name :- </td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Enter User Name :- </td>
<td><input type="text" name="uname"></td>
</tr>
<tr>
<td>Enter Password  :- </td>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<td>Enter Mobile    :- </td>
<td><input type="text" name="mobile"></td>
</tr>
<tr>
<td>Enter College Id    :- </td>
<td><input type="text" name="college.cid"></td>
</tr>
<tr>
<td>Enter College Name    :- </td>
<td><input type="text" name="college.cname"></td>
</tr>
<tr>
<td>Enter College Address    :- </td>
<td><input type="text" name="college.caddress"></td>
</tr>
<tr>
<td><input type="submit" value="Register"></td>
<td><input type="submit" value="Add College" formaction="addcollege"></td>
</tr>

</table> 
</form>
</body>
</html>