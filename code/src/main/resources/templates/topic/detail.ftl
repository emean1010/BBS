<!DOCTYPE HTML>
<html>
<head>
    <title>${topic.title}</title>
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
                        <a class="user_avatar" href="/user/index/${user.username}">
                            <img src="${user.avatar}">
                        </a>
                        <span class="user_name">
                            <a class="dark" href="/user/index/${user.username}">${user.username}</a>
                        </span>
                        <div class="space clearfix"></div>
                        <span class="signature">${user.signature}</span>
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
                <ul class="breadcrumb">
                    <li><a href="/">主页</a><span class="divider">/</span></li>
                </ul>
            </div>
            <div class="inner userinfo">
                <div class="user_big_avatar">
                    <img src="${user.avatar}">
                </div>
                <a class="dark">${user.username}</a>
                <p class="col_fade">注册时间：${user.getCreatedTimeFormat()}</p>
            </div>
        </div>

        <div class="panel">
            <div class="header topic_header">
                <span class="topic_full_title">
                    ${topic.title}
                </span>
                <div class="changes">
                    <span>${topic.getCreatedTimeFormat()}</span>
                    <span>
                        作者 <a href="/user/index/${user.username}">${user.username}</a>
                    </span>
                    <#if topic.userId == current.id>
                        <div>
                            <a href="/topic/delete?id=${topic.id}" class="span-success pull-right collect_btn">
                                <span class="span-success">删除</span>
                            </a>
                            <a href="/topic/edit?id=${topic.id}" class="span-success pull-right collect_btn">
                                <span class="span-success">编辑</span>
                            </a>
                        </div>
                    </#if>
                </div>
            </div>
            <div class="inner topic">
                <div class="topic_content">
                    <div class="markdown-text">
                        <p>${topic.content}</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">${topic.comments?size} 回复</span>
            </div>

            <#list topic.comments as c>
                <div class="cell reply_area reply_item reply_highlight">
                    <div class="author_content">
                        <a href="/" class="user_avatar">
                            <img src="${c.user.avatar}">
                        </a>
                        <div class="user_info">
                            <a class="dark reply_author" href="/user/index/${c.user.username}">${c.user.username}</a>
                            <a class="dark">${c.getCreatedTimeFormat()}</a>
                        </div>
                        <#if c.userId == current.id>
                        <div class="user_action">
                            <a href="/topic/comment/edit?id=${c.id}" class="glyphicon glyphicon-pencil">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 编辑
                            </a>
                            <a href="/topic/comment/delete?id=${c.id}" class="glyphicon glyphicon-trash">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> 删除
                            </a>
                        </div>
                        </#if>
                    </div>
                    <div class="reply_content from-zhennann">
                        <div class="markdown-text">
                            <p>${c.content}</p>
                        </div>
                    </div>
                </div>
            </#list>

        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">添加评论</span>
            </div>
            <div class="inner reply">
                <form action="/topic/comment/add" method="POST">
                    <input type="hidden" name="topicId" value="${topic.id}">
                    <input type="text" name="content" placeholder="请输入 content">
                    <br>
                    <button type="submit">添加评论</button>
                </form>
            </div>
        </div>

    </div>

</div>

</body>
</html>