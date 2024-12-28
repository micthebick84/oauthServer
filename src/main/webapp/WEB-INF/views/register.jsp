<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #f0f2f5;
            font-family: 'Noto Sans KR', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #fff;
            padding: 40px 60px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }

        input[type="text"],
        input[type="password"],
        input[type="url"],
        input[type="email"] {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="url"]:focus,
        input[type="email"]:focus {
            border-color: #007BFF;
            outline: none;
        }

        input::placeholder {
            color: #aaa;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: #007BFF;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .submit-btn:hover {
            background: #0056b3;
        }

        @media (max-width: 500px) {
            .container {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Register</h2>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="clientName">Client Name</label>
            <input type="text" id="clientName" name="clientName" placeholder="Client Name" required>
        </div>
        <div class="form-group">
            <label for="clientSecret">Client Secret</label>
            <input type="password" id="clientSecret" name="clientSecret" placeholder="Client Secret" required>
        </div>
        <div class="form-group">
            <label for="redirectUris">Redirect Uri</label>
            <input type="url" id="redirectUris" name="redirectUris" placeholder="Redirect Uri" required>
        </div>
        <div class="form-group">
            <label for="postLogoutRedirectUris">after logout redirect uri</label>
            <input type="url" id="postLogoutRedirectUris" name="postLogoutRedirectUris" placeholder="after logout redirect uri" required>
        </div>
        <div class="form-group">
            <label for="scopes">Scope</label>
            <input type="text" id="scopes" name="scopes" placeholder="Scope" required>
        </div>
        <input type="submit" value="Register" class="submit-btn">
    </form>
</div>
</body>
</html>
