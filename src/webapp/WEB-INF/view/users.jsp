<%@ page contentType="text/html;" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Users list</title>
</head>
<body>
<div align="center">
    <h2>Users List</h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>FirstName</th>
            <th>SecondName</th>
            <th>E-mail</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${users}" var="user">

            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td>
                    <input type="button" value="Edit User"
                           onclick="window.location.href = 'editUser?id=${user.id}'"/>

                    <input type="button" value="Delete User"
                            onclick="window.location.href = 'deleteUser?id=${user.id}'"/>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br><br>
    <input type="button" value="Add New User"
           onclick="window.location.href = 'addNewUser'"/>
</div>
</body>
</html>