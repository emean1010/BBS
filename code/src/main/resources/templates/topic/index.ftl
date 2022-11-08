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
                        <a class="user_avatar" href="/user/index/${user.username}">
                            <img src="${user.avatar}" >
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
            <div class="header">
                <span class="col_fade">最近创建的话题</span>
            </div>

            <#list topics as t>
            <div class="cell">
                <a class="user_avatar pull-left" href="/user/index/${t.user.username}">
                    <img src="${t.user.avatar}">${t.user.username}
                </a>

                <span class="reply_count pull-left">
                    <span class="count_of_replie s" title="回复数">
                      ${t.commentCount}
                    </span>
                    <span class="count_seperator">/</span>
                    <span class="count_of_visits" title="点击数">
                      ${t.commentCount}
                    </span>
                </span>

                <#if t.lastComment??>
                    <a class="last_time pull-right" href="/user/index/${t.lastComment.user.username}">
                        <img class="user_small_avatar" src="${t.lastComment.user.avatar}?v=4&amp;s=120">${t.lastComment.user.username}
                        <span class="last_active_time">${t.lastComment.getCreatedTimeFormat()}</span>
                    </a>
                </#if>

                <div class="topic_title_wrapper">
                    <a class="topic_title" href="/topic/detail/${t.id}">
                        ${t.title}
                    </a>
                    <a>(</a>
                    <a class="dark">${t.getCreatedTimeFormat()}</a>
                    <a>)</a>
                </div>
            </div>
            </#list>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">最近回复的话题</span>
            </div>

            <#list topicComments as t>
                <div class="cell">
                    <a class="user_avatar pull-left" href="/user/index/${t.user.username}">
                        <img src="${t.user.avatar}">${t.user.username}
                    </a>

                    <span class="reply_count pull-left">
                    <span class="count_of_replie s" title="回复数">
                      ${t.commentCount}
                    </span>
                    <span class="count_seperator">/</span>
                    <span class="count_of_visits" title="点击数">
                      ${t.commentCount}
                    </span>
                </span>

                    <#if t.lastComment??>
                        <a class="last_time pull-right" href="/user/index/${t.lastComment.user.username}">
                            <img class="user_small_avatar" src="${t.lastComment.user.avatar}?v=4&amp;s=120">${t.lastComment.user.username}
                            <span class="last_active_time">${t.lastComment.getCreatedTimeFormat()}</span>
                        </a>
                    </#if>

                    <div class="topic_title_wrapper">
                        <a class="topic_title" href="/topic/detail/${t.id}">
                            ${t.title}
                        </a>
                        <a>(</a>
                        <a class="dark">${t.getCreatedTimeFormat()}</a>
                        <a>)</a>
                    </div>
                </div>
            </#list>
        </div>

    </div>

</div>

</body>
</html>