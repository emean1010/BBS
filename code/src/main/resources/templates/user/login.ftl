<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JAVA 社区</title>
    <link rel="icon" href="/static/images/Q.png" type="image/x-icon">
    <link rel="bookmark" href="/static/images/Q.png" />
    <link rel="stylesheet" href="/static/css/index-min.css">
    <link rel="stylesheet" href="/static/css/style-index.css">
</head>
<body>
<h2>JAVA 社区</h2>
<div class="container" id="container">
    <div class="form-container sign-in-container">
        <form action="/user/login" method="post">
            <input type="text" name="username" placeholder="用户名">
            <input type="password" name="password" placeholder="密码">
            <button type="submit">登录</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-right">
                没有账号？<a href="/register">注册</a>
                忘记密码？<a href="/reset">重置密码</a>
                测试帐号
                <br>
                用户名：abc
                <br>
                密码：123
            </div>
        </div>
    </div>
</div>

</body>
</html>