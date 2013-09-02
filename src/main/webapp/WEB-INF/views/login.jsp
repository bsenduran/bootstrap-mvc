<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <link href="resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="resources/css/custom.css" rel="stylesheet" media="screen">
</head>

<body>

<div class="container">

    <c:if test="${not empty error}">
        <div class="align-center">
            <div class="alert alert-warning">
                <a class="close" data-dismiss="alert">x</a>
                Use admin, password to login
            </div>
        </div>
    </c:if>

    <c:if test="${not empty logoutSuccess}">
        <div class="align-center">
            <div class="alert alert-info ">
                <a class="close" data-dismiss="alert">x</a>
                Logged out successfully
            </div>
        </div>
    </c:if>

    <form class="form-signin" action="<c:url value='j_spring_security_check' />" method="POST">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="form-control" placeholder="User name" autofocus="" name="j_username">
        <input type="password" class="form-control" placeholder="Password" name="j_password">
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>

</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="//code.jquery.com/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
