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
    <form action="/reset/update" method="post">
        <input type="text" name="userId" value="${userId}" hidden>
        <input type="text" name="token" value="${token}" hidden>
        <input type="password" name="password" placeholder="密码">
        <button type="submit">重置密码</button>
    </form>
</div>
</body>
</html>