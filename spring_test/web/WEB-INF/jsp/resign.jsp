<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        html, body {
            height: 100%;
            background-color: #282c34; /* 修改背景颜色 */
        }
        .login {
            width: 358px;
            height: 588px; /* 增加高度 */
            border-radius: 15px;
            padding: 0 50px;
            position: relative;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color: #282c34;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5); /* 添加阴影 */
        }
        .header {
            font-size: 38px;
            font-weight: bold;
            text-align: center;
            line-height: 200px;
            color: #61dafb;
        }
        .container {
            height: 30px;
            width: 250px;
            position: absolute;
            left: 50%;
            top: 40%;
            transform: translate(-50%, -50%);
        }
        input {
            width: 100%;
            height: 100%;
            position: relative;
            outline: none;
            border: none;
            box-sizing: border-box;
            padding-left: 5px;
            background-color: #282c34;
            color: #61dafb;
            caret-color: #61dafb;
        }
        input::placeholder {
            color: #61dafb;
        }
        span {
            position: absolute;
            content: "";
            display: block;
            background-color: #61dafb;
            transition: transform .1s ease-in-out;
        }
        .top,
        .bottom {
            left: 0px;
            right: 0px;
            height: 2px;
        }
        .left,
        .right {
            top: 0px;
            bottom: 0px;
            width: 2px;
            transform: scaleY(0);
        }
        .top {
            top: 0px;
            transform: scaleX(0);
            transform-origin: left center;
            transition-delay: .2s;
        }
        .left {
            left: 0px;
            transform-origin: bottom center;
            transition-delay: .3s;
        }
        .bottom {
            bottom: 0px;
        }
        .right {
            right: 0px;
            transform-origin: top center;
            transition-delay: .1s;
        }
        input:focus ~ .right {
            transform: scaleY(1);
            transform-origin: bottom center;
        }
        input:focus ~ .left {
            transform: scaleY(1);
            transform-origin: top center;
        }
        input:focus ~ .top {
            transform: scaleX(1);
            transform-origin: right center;
        }
        .container1 {
            height: 30px;
            width: 250px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }
        .btn {
            position: absolute;
            left: 50%;
            top: 60%; /* 调整位置 */
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 5px;
            width: 52%;
            margin-top: 40px;
            background-color: #61dafb;
            color: #fff;
            border: none;
        }
        .register {
            position: absolute;
            left: 50%;
            top: 72%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 5px;
            width: 52%;
            margin-top: 10px;
            background-color: #61dafb;
            color: #fff;
            border: none;
            text-decoration: none;
            display: block;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<div class="login">
    <div class="header">注册</div>
    <form action="${pageContext.request.contextPath}/book/resign" method="post">
        <div class="container">
            <input type="text" name="username" placeholder="请输入用户名" required>
            <span class="left"></span>
            <span class="right"></span>
            <span class="top"></span>
            <span class="bottom"></span>
        </div>
        <div class="container1">
            <input type="password" name="password" placeholder="请输入密码" required>
            <span class="left"></span>
            <span class="right"></span>
            <span class="top"></span>
            <span class="bottom"></span>
        </div>
        <button type="submit" class="btn">注册</button>
        <c:if test="${not empty error}">
            <div style="text-align: center;color: red;">${error}</div>
        </c:if>
    </form>
    <form action="${pageContext.request.contextPath}/book/login">
        <button type="submit" class="register">返回</button>
    </form>
</div>
</body>
</html>
