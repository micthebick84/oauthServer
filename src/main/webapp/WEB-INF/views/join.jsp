<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Join</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <style>
        /* 기본 스타일 설정 */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Noto Sans KR', sans-serif;
            background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
            font-size: 28px;
        }

        hr {
            border: none;
            border-top: 1px solid #eeeeee;
            margin-bottom: 30px;
        }

        .message {
            margin-bottom: 20px;
            padding: 10px;
            border-radius: 5px;
            font-size: 14px;
        }

        .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #555555;
            font-weight: 500;
        }

        .form-group i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #cccccc;
        }

        .form-group input {
            width: 100%;
            padding: 12px 15px;
            padding-left: 10px; /* 아이콘 공간 확보 */
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-group input:focus {
            border-color: #ff7f50;
            box-shadow: 0 0 5px rgba(255, 127, 80, 0.5);
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #ff7f50;
            border: none;
            border-radius: 5px;
            color: #ffffff;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        .submit-btn:hover {
            background-color: #ff5722;
            transform: translateY(-2px);
        }

        .submit-btn:active {
            background-color: #e65100;
            transform: translateY(0);
        }

        /* 반응형 디자인 */
        @media (max-width: 500px) {
            .container {
                padding: 30px 20px;
            }

            .container h1 {
                font-size: 24px;
            }

            .submit-btn {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Join</h1>
    <hr>

    <!-- 성공 메시지 표시 -->
    <c:if test="${not empty successMessage}">
        <div class="message success">${successMessage}</div>
    </c:if>

    <!-- 오류 메시지 표시 -->
    <c:if test="${not empty errorMessage}">
        <div class="message error">${errorMessage}</div>
    </c:if>

    <form action="/join" method="post" name="joinForm">
<%--        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>

        <div class="form-group">
            <label for="username">Id</label>
            <i class="fas fa-user"></i>
            <input type="text" id="username" name="username" placeholder="Id" required/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <i class="fas fa-lock"></i>
            <input type="password" id="password" name="password" placeholder="Password" required/>
        </div>
        <div class="form-group">
            <label for="nickname">Nick Name</label>
            <i class="fas fa-user-tag"></i>
            <input type="text" id="nickname" name="nickname" placeholder="Nick Name" required/>
        </div>
        <div class="form-group">
            <label for="phone">Phone</label>
            <i class="fas fa-phone"></i>
            <input type="tel" id="phone" name="phone" placeholder="Phone (ex: 010-1234-5678)"
                   pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" required/>
        </div>
        <input type="submit" value="Join" class="submit-btn"/>
    </form>
</div>
</body>
</html>
