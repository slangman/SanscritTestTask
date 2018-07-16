<%--
  Created by IntelliJ IDEA.
  User: AttenCHUN
  Date: 16.07.2018
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hustle Planner | Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="/css/bootstrap.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="/css/style.css" rel='stylesheet' type='text/css'/>
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="/css/font.css" type="text/css"/>
    <link href="/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
</head>
<body>
<body class="signup-body">
<div class="agile-signup">

    <div class="content2">
        <div class="grids-heading gallery-heading signup-heading">
            <h2>Sign Up</h2>
        </div>
        <form action="${pageContext.request.contextPath}/signup" method="post">
            <input type="text" name="login" placeholder="Username">
            <input type="password" name="password" placeholder="Password">
            <input type="password" name="passwordRepeat" placeholder="Repeat Password">
            <input type="text" name="fName" placeholder="First Name">
            <input type="text" name="lName" placeholder="Last Name">
            <input type="submit" class="register" value="Sign Up">
        </form>
        <a href="${pageContext.request.contextPath}/login">Back To Login</a>
    </div>

    <!-- footer -->
    <div class="copyright">
        <p>© 2018 Hustle Industry</p>
    </div>
    <!-- //footer -->

</div>

</body>
</body>
</html>
