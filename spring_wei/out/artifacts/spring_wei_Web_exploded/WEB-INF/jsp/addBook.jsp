<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Global styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            color: #a37547;
            background-color: #282c34;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url("${pageContext.request.contextPath}/日照金山.jpg") no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0 0.9rem 1.7rem rgba(0, 0, 0, 0.25),
            0 0.7rem 0.7rem rgba(0, 0, 0, 0.22);
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
            border: none;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }
        .btn-primary:hover {
            background-color: #89633e; /* Darker brown background color on hover */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #a37547;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #3a3f47;
        }
        a {
            color: #a37547;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }

        /* Form container styles */
        .form-container {
            width: 100%;
            max-width: 500px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0.9rem 1.7rem rgba(0, 0, 0, 0.25),
            0 0.7rem 0.7rem rgba(0, 0, 0, 0.22);
            margin: 20px auto; /* Center the form container */
        }
        .form-control {
            width: 100%;
            background-color: #fff;
            color: #333;
            border: 1px solid #a37547; /* Brown border color */
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .form-control::placeholder {
            color: #a37547; /* Placeholder color */
        }
        .form-control:focus {
            outline: none;
            border-color: #89633e; /* Darker brown border color on focus */
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>新增书籍</h1>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <label for="id">书籍id：</label>
        <input type="text" id="id" name="id" class="form-control" required><br>
        <label for="title">书籍名称：</label>
        <input type="text" id="title" name="title" class="form-control" required><br>
        <label for="author">书籍作者：</label>
        <input type="text" id="author" name="author" class="form-control" required><br>
        <input type="submit" class="btn-primary" value="添加">
    </form>
</div>
</body>
</html>

