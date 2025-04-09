<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background-color: #141e30;
            font-family: Arial, sans-serif;
            color: #61dafb;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 20px;
            padding: 20px;
            background-color: #0c1622;
            border-radius: 10px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
        }
        h1 {
            text-align: center;
            font-size: 38px;
            font-weight: bold;
            color: #61dafb;
            margin-bottom: 20px;
        }
        .btn-primary {
            display: inline-block;
            padding: 10px 20px;
            background-color: #61dafb;
            color: #282c34;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #52a8d8;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #61dafb;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #3a3f47;
        }
        a {
            color: #61dafb;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .btn {
            padding: 5px 10px;
            color: #03e9f4;
            position: relative;
            overflow: hidden;
            text-transform: uppercase;
            letter-spacing: 2px;
            display: inline-block;
            margin: 0 5px;
        }
        .btn:hover {
            border-radius: 5px;
            color: #fff;
            background: #03e9f4;
            box-shadow: 0 0 5px 0 #03e9f4, 0 0 25px 0 #03e9f4, 0 0 50px 0 #03e9f4, 0 0 100px 0 #03e9f4;
            transition: all 1s linear;
        }
        .btn > span {
            position: absolute;
        }
        .btn > span:nth-child(1) {
            width: 100%;
            height: 2px;
            background: -webkit-linear-gradient(left, transparent, #03e9f4);
            left: -100%;
            top: 0;
            animation: line1 1s linear infinite;
        }
        @keyframes line1 {
            50%, 100% {
                left: 100%;
            }
        }
        .btn > span:nth-child(2) {
            width: 2px;
            height: 100%;
            background: -webkit-linear-gradient(top, transparent, #03e9f4);
            right: 0;
            top: -100%;
            animation: line2 1s 0.25s linear infinite;
        }
        @keyframes line2 {
            50%, 100% {
                top: 100%;
            }
        }
        .btn > span:nth-child(3) {
            width: 100%;
            height: 2px;
            background: -webkit-linear-gradient(left, #03e9f4, transparent);
            left: 100%;
            bottom: 0;
            animation: line3 1s 0.75s linear infinite;
        }
        @keyframes line3 {
            50%, 100% {
                left: -100%;
            }
        }
        .btn > span:nth-child(4) {
            width: 2px;
            height: 100%;
            background: -webkit-linear-gradient(top, transparent, #03e9f4);
            left: 0;
            top: 100%;
            animation: line4 1s 1s linear infinite;
        }
        @keyframes line4 {
            50%, 100% {
                top: -100%;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>宿舍列表 —— 显示所有学生</h1>
    <a class="btn-primary" href="${pageContext.request.contextPath}/dormitory/toAddDormitory">新增</a>
    <table>
        <thead>
        <tr>
            <th>学生编号</th>
            <th>名字</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dormitory" items="${requestScope.get('list')}">
            <tr>
                <td>${dormitory.getId()}</td>
                <td>${dormitory.getName()}</td>
                <td>
                    <a class="btn" href="${pageContext.request.contextPath}/dormitory/toUpdateDormitory?id=${dormitory.getId()}">更改
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                    |
                    <a class="btn" href="${pageContext.request.contextPath}/dormitory/delete/${dormitory.getId()}">删除
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
