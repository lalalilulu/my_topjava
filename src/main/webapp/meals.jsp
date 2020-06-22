<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Meals</title>
    <style>
        .normal {color:green;}
        .exceeded {color:red;}
    </style>
</head>
<body>
<section>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>
<hr>
    <table border="1" cellpadding="8" cellspacing="0">
        <thead>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
        </thead>
        <c:forEach items="${meals}" var="meal">
            <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr class="${meal.exceed ? 'exceeded' : 'normal'}">
<%--                <fmt:parseDate value="${meal.dateTime}" pattern="y-M-dd'H:m" var="parsedDate"/>
                <fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd HH:mm"/>--%>
                <td><%=TimeUtil.toString(meal.getDateTime())%></td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>