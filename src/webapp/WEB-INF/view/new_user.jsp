<%@ page language="java" contentType="text/html;"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New User</title>
</head>
<body>
<div align="center">
    <h1>New User</h1>

<form:form action="saveNewUser" method="put" modelAttribute="user">
    <table border="1" cellpadding="5">
        <tr>
            <td>FirstName: </td>
            <td><form:input path="firstName"/></td>
        </tr>
        <tr>
            <td>LastName: </td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td>E-mail: </td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Save New User"></td>
        </tr>
    </table>
</form:form>
</div>
</body>
</html>