<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 05.06.19
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Dodaj/edytuj projekt</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <!-- skrypt do dodawania kalendarza -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $(".datepicker").datepicker({

                // opis funkcji: https://jqueryui.com/datepicker/


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
                // rozpoczęcie dnai tygodnia od poniedziałku:
                firstDay: 1,
                showOtherMonths: true,
                selectOtherMonths: true,
                changeMonth: true,
                changeYear: true,
                dateFormat: "yy-mm-dd"


                /* dodawanie ikonki z funkcją kalendarza:
                showOn: "button",
                buttonImage: "../../resources/img/calendar.gif",
                buttonImageOnly: true,
                buttonText: "Select date",
                */
            });
        });
    </script>


</head>
<body>

<form:form method="post" modelAttribute="project">

    <Label for="programmeId">Program operacyjny: </Label>
    <form:select path="programme">
        <form:option value="" label="--wybierz--"/>
        <form:options items="${programmes}" id="programmeId"/>
    </form:select>
    <br><br>

    <label for="projNumberId">Numer projektu: </label>
    <form:input type="text" path="projNumber" id="projNumberId"/>
    <form:errors path="projNumber" element="div"/>
    <br><br>

    <label for="dorisNumberId">Numer DoRIS: </label>
    <form:input type="text" path="dorisNumber" id="dorisNumberId"/>
    <form:errors path="dorisNumber" element="div"/>
    <br><br>

    <Label for="outcomeId">Rezultat: </Label>
    <form:select path="outcome">
        <form:option value="" label="--wybierz--"/>
        <form:options items="${outcome}" id="outcomeId"/>
    </form:select>
    <br><br>

    <label for="beneficiaryId">Beneficjent: </label>
    <form:select path="beneficiary.id">
        <form:option value="" label="--wybierz--"/>
        <form:options items="${beneficiaries}"
                      itemLabel="name" itemValue="id"
                      id="beneficiaryId"/>
    </form:select>
    <br><br>

    <label for="nameId">Nazwa projektu: </label>
    <form:input type="text" path="name" id="nameId"/>
    <form:errors path="name" element="div"/>
    <br><br>

    <p>Projekt predefiniowany:
        <label for="predefYesId">tak: </label>
        <form:radiobutton path="predefined" value="tak" id="predefYesId"/>
        <label for="predefNoId">nie: </label>
        <form:radiobutton path="predefined" value="nie" id="predefNoId"/>
        <br></p>

    <Label for="regionId">Region: </Label>
    <form:select path="region">
        <form:option value="" label="--wybierz--"/>
        <form:options items="${region}" id="regionId"/>
    </form:select>
    <br><br>

    <p>Data podpisania umowy: <form:input type="text" path="signedDate" class="datepicker"/></p>
    <br>

    <p>Kwalifikowalność od: <form:input type="text" path="qualifiedFrom" class="datepicker"/></p>
    <br>

    <p>Data rozpoczęcia projektu: <form:input type="text" path="startDate" class="datepicker"/></p>
    <br>

    <p>Planowana data zakończenia projektu: <form:input type="text" path="finishDate" class="datepicker"/></p>
    <br>

    <label for="projectValueId">Koszt całkowity projektu: </label>
    <form:input path="projectValue" type="number" step="0.01" min="1" id="projectValueId"/>
    <form:errors path="projectValue" element="div"/>
    <br><br>

    <label for="qualifiedCostId">Koszty kwalifikowalne: </label>
    <form:input path="qualifiedCost" type="number" step="0.01" min="1" id="qualifiedCostId"/>
    <form:errors path="qualifiedCost" element="div"/>
    <br><br>

    <label for="dotationId">Dofinansowanie: </label>
    <form:input path="dotation" type="number" step="0.01" min="1" id="dotationId"/>
    <form:errors path="dotation" element="div"/>
    <br><br>

    <label for="dotationAdjustedId">Dofinansowanie po zmianach: </label>
    <form:input path="dotationAdjusted" type="number" step="0.01" min="1" id="dotationAdjustedId"/>
    <form:errors path="dotationAdjusted" element="div"/>
    <br><br>

    <label for="currencyrateEURId">Kurs EUR/PLN: </label>
    <form:input path="currencyrateEUR" id="currencyrateEURId" type="number" step="0.0001" min="1" max="10"/>
    <form:errors path="currencyrateEUR" element="div"/>
    <br><br>

    <label for="coordinatorId">Koordynator z NFOŚiGW: </label>
    <form:select path="coordinator.id">
        <form:option value="" label="--wybierz--"/>
        <form:options items="${coordinators}"
                      itemLabel="fullName" itemValue="id"
                      id="coordinatorId"/>
    </form:select>
    <br><br>

    <label for="websiteId">Strona internetowa projektu: </label>
    <form:input type="text" path="website" id="websiteId"/>
    <form:errors path="website" element="div"/>
    <br><br>


    <input type="submit" value="Dodaj">
</form:form>

</body>
</html>
