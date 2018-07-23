<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hustle Planner | Login</title>

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
</head>
<body class="signup-body">
<div class="agile-signup">

    <div class="content2">
        <div class="grids-heading gallery-heading signup-heading">
            <h2>Login</h2>
        </div>
        <form action="/j_spring_security_check" method="post">
            <input type="text" placeholder="Username" name="j_username">
            <input type="password" placeholder="Password" name="j_password">
            <%--<input type="text" name="Username" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
            <input type="password" name="Password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">--%>
            <input type="submit" class="register" value="Sign in">
        </form>
        <div class="signin-text">
            <div class="text-left">
                <p><a href="#"> Forgot Password? </a></p>
            </div>
            <div class="text-right">
                <p><a href="${pageContext.request.contextPath}/signup"> Create New Account</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
        <%--<h5>- OR -</h5>
        <div class="footer-icons">
            <ul>
                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" class="twitter facebook"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" class="twitter chrome"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" class="twitter dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
            </ul>
        </div>--%>
        <a href="index.html">Back To Home</a>

        <c:if test="${param.registration != null && param.registration == 'true'}">
            <div class="alert alert-success"><p>Регистрация прошла успешно</p></div>
        </c:if>

    </div>

    <!-- footer -->
    <div class="copyright">
        <p>© 2018 Hustle Industry</p>
    </div>
    <!-- //footer -->

</div>

</body>
</html>
