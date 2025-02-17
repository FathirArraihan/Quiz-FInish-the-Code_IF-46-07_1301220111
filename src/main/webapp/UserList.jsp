<%-- 
    Document   : UserList
    Created on : Dec 3, 2024, 7:09:32 AM
    Author     : helmy
--%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.latihanwebmvc.Model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User List</title>
</head>
<body>
    <h2>User List</h2>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Full Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <% List<User>users = (List<User>) request.getSession().getAttribute("users");%>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.getFullName()}</td>
                    
                    <td>
                        <a href="editUser?id=${user.id}">edit</a>
                        <a href="deleteUser?id=${user.id}">delete</a>
                    </td>

                <tr></tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="adduser.jsp">Tambah User Baru</a>
    <a href="/logout">logout</a>
</body>
</html>
