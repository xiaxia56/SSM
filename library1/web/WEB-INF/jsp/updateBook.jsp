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
        html, body {
            height: 100%;
            background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
            font-family: Arial, sans-serif;
            color: #333;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
            font-size: 38px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }
        .form-control {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 15px;
            outline: none;
        }
        .form-control::placeholder {
            color: #888;
        }
        .form-control:focus {
            border-color: #61dafb;
        }
        .btn-primary {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #61dafb;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
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
        <input type="text" name="title" class="form-control" placeholder="书籍名称" value="${book.title}" required>
        <input type="text" name="author" class="form-control" placeholder="书籍作者" value="${book.author}" required>
        <button type="submit" class="btn-primary">修改</button>
    </form>
</div>
</body>
</html>
