<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/13/2022
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Course</title>
</head>
<body>
<form action="/addCourse" method="post">
    <label>
        <input type="number" placeholder="Enter course number" name="number">
    </label><br>
    <label>
        <input type="text" placeholder="Enter course name" name="name">
    </label><br>
    <label>
        <input type="text" placeholder="Enter course info" name="info">
    </label><br>
    <button>add</button>
</form>
</body>
</html>
