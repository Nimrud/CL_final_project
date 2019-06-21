<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 06.06.19
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista wszystkich płatności</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <script>
        function confirmDelete(id, amount) {
            if (confirm("Czy na pewno chcesz skasować płatność w wysokości: '" + amount + "'?")) {
                window.location.href = "/payments/delete/" + id;
            }
        }
    </script>

</head>
<body>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<br><br>

<div class="container">
    <header>Lista wszystkich płatności</header>

    <table class="table-hover table-bordered">
        <thead class="table-secondary">
        <tr align="center">
            <th>Numer projektu</th>
            <th>Nazwa projektu</th>
            <th>Płatność</th>
            <th>Data płatności</th>
            <th colspan="2">Edycja</th>
        </tr>
        </thead>

        <c:forEach items="${payments}" var="payment">
            <tr>
                <td>${payment.project.projNumber}</td>
                <td>${payment.project.name}</td>
                <td align="right" width="80">${payment.amount}</td>
                <td align="right">${payment.paymentDate}</td>
                <td>
                    <a href="/payments/update/${payment.id}" class="btn btn-outline-warning">edytuj</a>
                </td>
                <td>
                    <a href="#" onclick="confirmDelete(${payment.id}, '${payment.amount}')"
                       class="btn btn-outline-danger">skasuj</a>
                </td>
            </tr>
        </c:forEach>

    </table>

    <br>

    <table class="table-hover table-bordered">
        <thead class="table-secondary">
        <tr>
            <th>Suma płatności we wszystkich projektach</th>
        </tr>
        </thead>

        <tr>
            <td align="right">${allPayments}</td>
        </tr>
    </table>
</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
