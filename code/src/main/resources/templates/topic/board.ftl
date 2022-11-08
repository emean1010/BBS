<!DOCTYPE HTML>
<html>
<head>
    <title>板块管理</title>
    <link rel="icon" href="/static/images/Q.png" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/index.min.css" media="all">
    <script src="https://cdn.bootcss.com/marked/0.3.19/marked.min.js"></script>
    <script src="https://cdn.bootcss.com/prism/1.13.0/prism.js"></script>
    <script src="https://cdn.bootcss.com/prism/1.13.0/plugins/autoloader/prism-autoloader.min.js"></script>
</head>
<body>
<form action="/board/add" method="POST">
    <input type="text" name="name" placeholder="请输入板块名称">
    <br>
    <button type="submit">添加</button>
</form>

<div>

    <#list boards as t>
    <h3>${t.id} : ${t.name}</h3>
    </#list>
</div>
</body>
</html>