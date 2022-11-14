<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>修改 TODO</title>
</head>
<body>
    <h1>修改 TODO</h1>
    <form action="/todo/update" method="post">
        <input name="id" placeholder="id" value="${todo.id}">
        <input name="content" placeholder="content" value="${todo.content}">
        <br>
        <button type="submit">提交修改</button>
    </form>
</body>
</html>
