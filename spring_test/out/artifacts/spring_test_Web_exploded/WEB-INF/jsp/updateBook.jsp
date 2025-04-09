<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            width: 400px;
            padding: 20px;
            background-color: #282c34;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5);
            text-align: center;
        }
        h1 {
            font-size: 38px;
            font-weight: bold;
            color: #61dafb;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
            color: #61dafb;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            background-color: #282c34;
            color: #61dafb;
            border: 1px solid #61dafb;
            border-radius: 5px;
            margin-bottom: 20px;
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
    <h1>修改信息</h1>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="id" value="${book.id}"/>
        <label for="title">书籍名称：</label>
        <input type="text" id="title" name="title" class="form-control" value="${book.title}" required>
        <label for="author">书籍作者：</label>
        <input type="text" id="author" name="author" class="form-control" value="${book.author}" required>
        <input type="submit" class="btn-primary" value="修改">
    </form>
</div>
</body>
</html>
