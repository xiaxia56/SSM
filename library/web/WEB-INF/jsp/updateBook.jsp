<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
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
        .form-control {
            background-color: #282c34;
            color: #61dafb;
            border: 1px solid #61dafb;
            padding: 10px;
            margin-bottom: 10px;
        }
        .form-control::placeholder {
            color: #61dafb;
        }
        .form-control:focus {
            outline: none;
            border-color: #52a8d8;
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
            border: none;
            cursor: pointer;
        }
        .btn-primary:hover {
            background-color: #52a8d8;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>
        <small>修改信息</small>
    </h1>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="id" value="${book.id}"/>
        书籍名称：<input type="text" name="title" class="form-control" value="${book.title}" required><br>
        书籍作者：<input type="text" name="author" class="form-control" value="${book.author}" required><br>
        <input type="submit" class="btn-primary" value="修改">
    </form>
</div>
</body>
</html>
