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
            max-width: 600px;
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
        .form-control {
            background-color: #282c34;
            color: #61dafb;
            border: 1px solid #61dafb;
            padding: 10px;
            margin-bottom: 10px;
            width: calc(100% - 22px); /* To account for padding and border */
            border-radius: 5px;
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
            width: 100%; /* Make the button take full width */
            margin-top: 10px; /* Add some space on top */
        }
        .btn-primary:hover {
            background-color: #52a8d8;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>修改信息</h1>
    <form action="${pageContext.request.contextPath}/dormitory/updateDormitory" method="post">
        <input type="hidden" name="id" value="${dormitory.id}"/>
        学生id：<input type="text" name="id" class="form-control" value="${dormitory.id}" required><br>
        学生姓名：<input type="text" name="name" class="form-control" value="${dormitory.name}" required><br>
        <input type="submit" class="btn-primary" value="修改">
    </form>
</div>
</body>
</html>
