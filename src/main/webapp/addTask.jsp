<%--
  Created by IntelliJ IDEA.
  User: AttenCHUN
  Date: 18.07.2018
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddTask</title>
</head>
<body>
    <form id="addTask" method="post" action ="${pageContext.request.contextPath}/dashboard/addTask">

        <div class="input-group">
            <label for = "taskDate">Task date</label>
            <input type="date" name="taskDate" id="taskDate">
        </div>

        <%--<div class="input-group">
            <label for = "startTime">Start time</label>
            <input type="time" name = "startTime" id = "startTime">
        </div>--%>

        <label for="taskDescription">Task description</label>
        <input type="text" id="taskDescription" name="taskDescription">

        <button type="submit" class="btn btn-info btn-flat">OK</button>

    </form>
</body>
</html>
