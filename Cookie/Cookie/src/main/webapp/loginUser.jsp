<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        form {
            margin-top: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="checkbox"] {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="AnaSayfa.jsp" method="post">
            <label for="username">Kullanıcı Adı:</label>
            <input type="text" id="username" name="username">
            
            <label for="password">Şifre:</label>
            <input type="password" id="password" name="password">
            
            <label>
                <input type="checkbox" id="rememberMe" name="rememberMe">
                Sonraki Girişte Tanı
            </label>
            
            <input type="submit" value="Giriş">
        </form>
    </div>
</body>
</html>
