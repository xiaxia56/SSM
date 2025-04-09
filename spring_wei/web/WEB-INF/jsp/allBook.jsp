<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Existing book list styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background-color: #282c34;
            background: url("${pageContext.request.contextPath}/日照金山.jpg") no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #a37547; /* Brownish text color */
        }
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            border-radius: 10px;
        }
        h1 {
            text-align: center;
            font-size: 38px;
            font-weight: bold;
            color: #282c34;
            margin-bottom: 20px;
        }
        .btn-primary {
            display: inline-block;
            padding: 10px 20px;
            background-color: #a37547; /* Brown background color */
            color: #fff; /* White text color */
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #89633e; /* Darker brown on hover */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #a37547; /* Brown border color */
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #66462f; /* Darker brown for table header */
            color: #fff; /* White text color */
        }
        a {
            color: #a37547; /* Brown link color */
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }

        /* New styles for the login/signup form */
        :root {
            /* COLORS */
            --white: #e9e9e9;
            --gray: #333;
            --blue: #0367a6;
            --lightblue: #008997;
            --brown: #a37547; /* Brown color */

            /* RADII */
            --button-radius: 0.7rem;

            /* SIZES */
            --max-width: 758px;
            --max-height: 420px;

            font-size: 16px;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
            Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
        }

        .form__title {
            font-weight: 300;
            margin: 0;
            margin-bottom: 1.25rem;
            color: var(--brown); /* Use brown color for form title */
        }

        .link {
            color: var(--gray);
            font-size: 0.9rem;
            margin: 1.5rem 0;
            text-decoration: none;
        }

        .container__form {
            height: 100%;
            position: absolute;
            top: 0;
            transition: all 0.6s ease-in-out;
        }

        .container--signin {
            left: 0;
            width: 50%;
            z-index: 2;
        }

        .container.right-panel-active .container--signin {
            transform: translateX(100%);
        }

        .container--signup {
            left: 0;
            opacity: 0;
            width: 50%;
            z-index: 1;
        }

        .container.right-panel-active .container--signup {
            animation: show 0.6s;
            opacity: 1;
            transform: translateX(100%);
            z-index: 5;
        }

        .container__overlay {
            height: 100%;
            left: 50%;
            overflow: hidden;
            position: absolute;
            top: 0;
            transition: transform 0.6s ease-in-out;
            width: 50%;
            z-index: 100;
        }

        .container.right-panel-active .container__overlay {
            transform: translateX(-100%);
        }

        .overlay {
            background-color: var(--lightblue);
            background: url("${pageContext.request.contextPath}/日照金山.jpg") no-repeat center center fixed;
            background-size: cover;
            height: 100%;
            left: -100%;
            position: relative;
            transform: translateX(0);
            transition: transform 0.6s ease-in-out;
            width: 200%;
        }

        .container.right-panel-active .overlay {
            transform: translateX(50%);
        }

        .overlay__panel {
            align-items: center;
            display: flex;
            flex-direction: column;
            height: 100%;
            justify-content: center;
            position: absolute;
            text-align: center;
            top: 0;
            transform: translateX(0);
            transition: transform 0.6s ease-in-out;
            width: 50%;
        }

        .overlay--left {
            transform: translateX(-20%);
        }

        .container.right-panel-active .overlay--left {
            transform: translateX(0);
        }

        .overlay--right {
            right: 0;
            transform: translateX(0);
        }

        .container.right-panel-active .overlay--right {
            transform: translateX(20%);
        }

        .btn {
            background-color: #a37547; /* Brown background color */
            border-radius: 20px;
            border: 1px solid #a37547; /* Brown border color */
            color: #fff; /* White text color */
            cursor: pointer;
            font-size: 0.8rem;
            font-weight: bold;
            letter-spacing: 0.1rem;
            padding: 0.9rem 4rem;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
        }

        .form > .btn {
            margin-top: 1.5rem;
        }

        .btn:active {
            transform: scale(0.95);
        }

        .btn:focus {
            outline: none;
        }

        .form {
            background-color: var(--white);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 3rem;
            height: 100%;
            text-align: center;
        }

        .input {
            background-color: #fff;
            border: none;
            padding: 0.9rem 0.9rem;
            margin: 0.5rem 0;
            width: 100%;
        }

        @keyframes show {

            0%,
            49.99% {
                opacity: 0;
                z-index: 1;
            }

            50%,
            100% {
                opacity: 1;
                z-index: 5;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>
        <small>书籍列表 —— 显示所有书籍</small>
    </h1>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
    <table>
        <thead>
        <tr>
            <th>书籍编号</th>
            <th>书籍名字</th>
            <th>书籍作者</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="book" items="${requestScope.get('list')}">
            <tr>
                <td>${book.getId()}</td>
                <td>${book.getTitle()}</td>
                <td>${book.getAuthor()}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getId()}">更改</a> |
                    <a href="${pageContext.request.contextPath}/book/delete/${book.getId()}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>




