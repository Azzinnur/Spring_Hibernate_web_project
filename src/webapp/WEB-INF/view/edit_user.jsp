<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit User</title>
</head>
<body>
<div align="center">
    <h1>Edit User</h1>
    <br><br>

    <form:form action="saveUser" modelAttribute="user">
        <table border="1" cellpadding="5">
            <tr>
            <td>ID: </td>
            <td>${user.id}
                <form:hidden path="id"/>
            </td>
            </tr>
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
                <td colspan="2"><input type="submit" value="Save User"></td>>
            </tr>
        </table>
    </form:form>>
</div>
</body>
</html>
