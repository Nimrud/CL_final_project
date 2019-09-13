<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 06.06.19
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj/edytuj płatność</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <!-- skrypt do dodawania customowego, polskiego kalendarza -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $(".datepicker").datepicker({

                // opis w project.jsp

                closeText: "Zamknij",
                prevText: "&#x3C;Poprzedni",
                nextText: "Następny&#x3E;",
                currentText: "Dziś",
                monthNames: ["Styczeń", "Luty", "Marzec", "Kwiecień", "Maj", "Czerwiec",
                    "Lipiec", "Sierpień", "Wrzesień", "Październik", "Listopad", "Grudzień"],
                monthNamesShort: ["Sty", "Lu", "Mar", "Kw", "Maj", "Cze",
                    "Lip", "Sie", "Wrz", "Pa", "Lis", "Gru"],
                dayNames: ["Niedziela", "Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek", "Sobota"],
                dayNamesShort: ["Nie", "Pn", "Wt", "Śr", "Czw", "Pt", "So"],
                dayNamesMin: ["N", "Pn", "Wt", "Śr", "Cz", "Pt", "So"],
                weekHeader: "Tydz",
                showMonthAfterYear: true,
                firstDay: 1,
                showOtherMonths: true,
                selectOtherMonths: true,
                changeMonth: true,
                changeYear: true,
                dateFormat: "yy-mm-dd"
            });
        });
    </script>

</head>
<body>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<br><br>
<div class="container">

    <header>Podaj dane płatności</header>
    <br>

    <form:form method="post" modelAttribute="payment">

        <div class="row">
            <div class="form-group col-md-5">
                <label for="projNumberId">Numer projektu: </label>
                <form:select path="project.id">
                    <form:option value="" label="--wybierz--"/>
                    <form:options items="${projects}"
                                  itemLabel="projNumber" itemValue="id"
                                  id="projNumberId"/>
                </form:select>
            </div>

            <div class="form-group col-md-6">
                <p>Tytuł projektu: [do uzupełnienia]</p>
            </div>
        </div>
        <br>

        <label for="amountId">Kwota: </label>
        <form:input path="amount" type="number" step="0.01" id="amountId" class="number"/>
        <form:errors path="amount" element="div"/>
        <br><br>

        <p>Data płatności:
            <form:input type="text" path="paymentDate" class="datepicker"/>
            <form:errors path="paymentDate" element="div"/>
        </p>


        <input type="submit" value="Dodaj">

    </form:form>

</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
