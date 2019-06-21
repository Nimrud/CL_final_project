<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 04.06.19
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj/edytuj beneficjenta</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<br><br>

<div class="container">

    <header>Podaj dane beneficjenta</header>
    <br>

    <form:form method="post" modelAttribute="beneficiary">

        <div class="row">
            <div class="form-group col-md-8">
                <label for="NameId">Pełna nazwa: </label>
                <form:input type="text" path="name" id="NameId" size="63%"/>
                <form:errors path="name" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="emailId">E-mail: </label>
                <form:input type="text" path="email" id="emailId"/>
                <form:errors path="email" element="div"/>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-4">
                <label for="cityId">Miasto: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</label>
                <form:input type="text" path="city" id="cityId"/>
                <form:errors path="city" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="codeId">Kod pocztowy: </label>
                <form:input type="text" path="code" id="codeId"/>
                <form:errors path="code" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="streetId">Adres: &nbsp</label>
                <form:input type="text" path="street" id="streetId"/>
                <form:errors path="street" element="div"/>
            </div>
        </div>
        <br>

        <p><b>Dane koordynatora beneficjenta nr 1:</b></p>

        <div class="row">
            <div class="form-group col-md-4">
                <label for="benCoord1Id">Imię i nazwisko: </label>
                <form:input type="text" path="benCoord1" id="benCoord1Id" />
                <form:errors path="benCoord1" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="benCoord1JobPositionId">Stanowisko: </label>
                <form:input type="text" path="benCoord1JobPosition" id="benCoord1JobPositionId"/>
                <form:errors path="benCoord1JobPosition" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="benCoord1EmailId">E-mail: </label>
                <form:input type="text" path="benCoord1Email" id="benCoord1EmailId"/>
                <form:errors path="benCoord1Email" element="div"/>
            </div>
        </div>

        <div class="row">

            <div class="form-group col-md-4">
                <label for="benCoord1phone1Id">Telefon 1: &nbsp &nbsp &nbsp &nbsp &nbsp</label>
                <form:input type="text" path="benCoord1phone1" id="benCoord1phone1Id"/>
                <form:errors path="benCoord1phone1" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="benCoord1phone2Id">Telefon 2: &nbsp &nbsp</label>
                <form:input type="text" path="benCoord1phone2" id="benCoord1phone2Id"/>
                <form:errors path="benCoord1phone2" element="div"/>
            </div>
        </div>
        <br>

        <p><b>Dane koordynatora beneficjenta nr 2:</b></p>

        <div class="row">
            <div class="form-group col-md-4">
                <label for="benCoord2Id">Imię i nazwisko: </label>
                <form:input type="text" path="benCoord2" id="benCoord2Id"/>
                <form:errors path="benCoord2" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="benCoord2JobPositionId">Stanowisko: </label>
                <form:input type="text" path="benCoord2JobPosition" id="benCoord2JobPositionId"/>
                <form:errors path="benCoord2JobPosition" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="benCoord2EmailId">E-mail: </label>
                <form:input type="text" path="benCoord2Email" id="benCoord2EmailId"/>
                <form:errors path="benCoord2Email" element="div"/>
            </div>
        </div>

        <div class="row">

            <div class="form-group col-md-4">
                <label for="benCoord2phone1Id">Telefon 1: &nbsp &nbsp &nbsp &nbsp &nbsp</label>
                <form:input type="text" path="benCoord2phone1" id="benCoord2phone1Id"/>
                <form:errors path="benCoord2phone1" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="benCoord2phone2Id">Telefon 2: &nbsp &nbsp</label>
                <form:input type="text" path="benCoord2phone2" id="benCoord2phone2Id"/>
                <form:errors path="benCoord2phone2" element="div"/>
            </div>
        </div>
        <br>

        <input type="submit" value="Dodaj">
    </form:form>

</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
