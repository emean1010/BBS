<!DOCTYPE HTML>
<html>
<head>
    <title>ssm topic</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="icon" href="/static/images/Q.png" type="image/x-icon">
    <link rel="stylesheet" href="/static/css/index.min.css" media="all">
    <script src="https://cdn.bootcss.com/marked/0.3.19/marked.min.js"></script>
    <script src="https://cdn.bootcss.com/prism/1.13.0/prism.js"></script>
    <script src="https://cdn.bootcss.com/prism/1.13.0/plugins/autoloader/prism-autoloader.min.js"></script>
</head>
<body>

<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand" href="/">
                <img src="/static/images/logo.svg" style="height: 30px">
            </a>
            <ul class="nav pull-right">
                <li><a href="/">首页</a></li>
                <li><a href="/user/setting">设置</a></li>
                <li><a href="/logout">退出</a></li>
            </ul>
            <a class="btn btn-navbar" id="responsive-sidebar-trigger">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
        </div>
    </div>
</div>

<div id="main">
    <div id="sidebar">
        <div class="panel">
            <div class="header">
                <span class="col_fade">个人信息</span>
            </div>
            <div class="inner">
                <div class="user_card">
                    <div>
                        <a class="user_avatar" href="/user/index/${current.username}">
                            <img src="${current.avatar}" >
                        </a>
                        <span class="user_name">
                            <a class="dark" href="/user/index/${current.username}">${current.username}</a>
                        </span>
                        <div class="space clearfix"></div>
                        <span class="signature">${current.signature}</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel">
            <div class="inner">
                <a href="/topic/new" class="create_topic_btn">
                    <span class="span-success">发布话题</span>
                </a>
            </div>
        </div>
    </div>

    <div id="content">
        <div class="panel">
            <div class="header">
                <ol class="breadcrumb">
                    <li><a href="/">主页</a><span class="divider">/</span></li>
                    <li class="active">发布话题</li>
                </ol>
            </div>
            <div class="inner post">
                <form id="create_topic_form" action="/topic/add" method="post">
                    <fieldset>
                        <input type="hidden" id="boardId" name="boardId" value=${boards[0].id}>
                        <span class="tab-selector">选择版块：</span>
                        <select name="tab" id="board-value" onchange="changeBoardId()">
                            <#list boards as b>
                                <option value=${b.id}>${b.name}</option>
                            </#list>
                        </select>
                        <span id="topic_create_warn"></span>
                        <textarea autofocus="" class="span9" id="title" name="title" rows="1"
                                  placeholder="标题"></textarea>
                        <div class="markdown_editor in_editor">
                            <div class="markdown_in_editor">
                            <textarea autofocus="" class="span9" id="title" name="content" rows="1"
                                      placeholder="正文"></textarea>
                                <div class="editor_buttons">
                                    <input type="submit" class="span-primary submit_btn" data-loading-text="提交中"
                                           value="提交">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>

        </div>
    </div>

</div>

<script>
    changeBoardId = function() {
        let boardValueElement = document.getElementById("board-value");
        let boardIdElement = document.getElementById("boardId");
        boardIdElement.value = boardValueElement.value;
        console.log(boardIdElement.value, boardValueElement.value);
    }
</script>
</body>
</html>