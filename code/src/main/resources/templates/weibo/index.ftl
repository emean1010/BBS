<!DOCTYPE HTML>
<html>
<head>
    <title>ssm weibo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<form action="/weibo/add" method="POST">
    <input type="text" name="content" placeholder="请输入 weibo">
    <br>
    <button type="submit">添加</button>
</form>

<div>

    <#list weibos as t>
    <h3>${t.id} : ${t.content}</h3>
    <a href="/weibo/edit?id=${t.id}">编辑</a>
    <a href="/weibo/delete?id=${t.id}">删除</a>
</#list>
</div>
</body>
</html>