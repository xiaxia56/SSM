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
            background-color: #282c34;
            font-family: Arial, sans-serif;
            color: #61dafb;
        }
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
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
