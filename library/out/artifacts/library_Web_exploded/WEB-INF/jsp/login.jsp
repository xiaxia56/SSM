<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录界面</title>
    <link rel="stylesheet" href="styleLogin.css">
</head>
<body>
<div class="container">
    <div class="panel">
        <div class="content">
            <div class="switch">
                <h1 id="login">图书管理登录</h1>
            </div>

            <form action="${pageContext.request.contextPath}/book/authenticate" method="post">

                <div id="userName" class="input" aria-placeholder="账号">
                    <input type="text" name="username"  required>
                </div>
                <div id="password" class="input" aria-placeholder="密码">
                    <input type="password" name="password"  required>
                </div>

                <p>
                    <a id="signUp" href="${pageContext.request.contextPath}/book/toresign" class="input">注册</a>
                </p>
                <button type="submit" class="button">登录</button>

                <c:if test="${not empty error}">
                    <div style="text-align: center; color: red;">${error}</div>
                </c:if>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.slim.js"></script>
<script>
    $('.input input').on('focus', function () {
        $(this).parent().addClass('focus');
    });

    $('.input input').on('blur', function () {
        if ($(this).val() === '')
            $(this).parent().removeClass('focus');
    });
</script>
</body>
</html>
