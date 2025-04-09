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
        }
        html, body {
            height: 100%;
            background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
            font-family: Arial, sans-serif;
            color: #333;
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
            color: #fff;
            margin-bottom: 20px;
        }
        .btn-primary {
            display: inline-block;
            padding: 10px 20px;
            background-color: #61dafb;
            color: #fff;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #52a8d8;
        }
        .btn-edit {
            padding: 5px 10px;
            background-color: #28a745;
            color: #fff;
            text-align: center;
            border-radius: 3px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .btn-edit:hover {
            background-color: #218838;
        }
        .btn-delete {
            padding: 5px 10px;
            background-color: #dc3545;
            color: #fff;
            text-align: center;
            border-radius: 3px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .btn-delete:hover {
            background-color: #c82333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #61dafb;
            color: #fff;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
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
                            <a class="btn-edit" href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getId()}">更改</a>
                            <a class="btn-delete" href="${pageContext.request.contextPath}/book/delete/${book.getId()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
