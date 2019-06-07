<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 04.06.19
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista użytkowników</title>

    <script>
        function confirmDelete(id, fullName) {
            if (confirm("Czy na pewno chcesz skasować używkownika '" + fullName + "'?")) {
                window.location.href = "/users/delete/" + id;
            }
        }
    </script>

</head>
<body>

<table border="1">
    <tr align="center">
        <th>Imię i nazwisko</th>
        <th>E-mail</th>
        <th>Aktywny</th>
        <th>Zmiana</th>
    </tr>

    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.fullName}</td>
            <td>${user.email}</td>
            <td>${user.active}</td>
            <td>
                <a href="/users/update/${user.id}">edytuj</a>
            </td>
            <td>
                <a href="#" onclick="confirmDelete(${user.id}, '${user.fullName}')">skasuj</a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
