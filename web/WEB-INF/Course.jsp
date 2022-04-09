<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/13/2022
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Course Table</title>
</head>
<body>

<h1>All Courses</h1>

<a href="/addCourse">+Add Course</a>

<table style="color: black" border="5">
    <tr>
        <th>Num</th>
        <th>Name</th>
        <th>Info</th>
    </tr>
    <c:forEach items="${getCourse}" var="subjects">
    <tr>
        <td>${subjects.courseNumber}</td>
        <td>${subjects.courseName}</td>
        <td>${subjects.courseInfo}</td>
    </tr>
    </c:forEach>

</body>
</html>
