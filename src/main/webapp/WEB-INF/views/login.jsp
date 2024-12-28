<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
          integrity="sha512-Fo3rlrZj/k7ujTTXRNc4htM82K0yA3iJ3eLJ6YgWlgKZ/1R4Br8FfGJQbY60cOABK+U4dw3THTIC2UGs9mJ1Eg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* 기본 스타일 설정 */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Noto Sans KR', sans-serif;
            background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
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
            text-align: center;
        }

        .container h1 {
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

        .login-form {
            /* 로그인 폼 스타일링 추가 */
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            color: #ffffff;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        .submit-btn:hover {
            background-color: #45a049;
            transform: translateY(-2px);
        }

        .submit-btn:active {
            background-color: #39843c;
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
    <h1>Login</h1>
    <hr>

    <!-- 성공 메시지 표시 -->
    <c:if test="${not empty successMessage}">
        <div class="message success">${successMessage}</div>
    </c:if>

    <!-- 오류 메시지 표시 (로그인 시 에러가 있을 경우) -->
    <c:if test="${not empty errorMessage}">
        <div class="message error">${errorMessage}</div>
    </c:if>

    <!-- 로그인 폼 -->
    <form action="/login" method="post" class="login-form">
        <!-- CSRF 토큰 추가 (Spring Security 사용 시 필요) -->
<%--        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
        <div class="form-group">
            <label for="username">ID</label>
            <input type="text" id="username" name="username" placeholder="ID" required/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Password" required/>
        </div>
        <input type="submit" value="Login" class="submit-btn"/>
    </form>
</div>
</body>
</html>
