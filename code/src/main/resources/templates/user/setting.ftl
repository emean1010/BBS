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

<!-- navbar -->
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
                <ul class="breadcrumb">
                    <li><a href="/">主页</a><span class="divider">/</span></li>
                    <li class="active">设置</li>
                </ul>
            </div>
            <div class="inner">
                <form id="setting_form" class="form-horizontal" action="/user/update" method="post">
                    <div class="control-group">
                        <label class="control-label" for="name">用户名</label>
                        <div class="controls">
                            <input class="input-xlarge readonly" id="name" name="username" size="30" type="text" value=${current.username}>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="signature">个性签名</label>
                        <div class="controls">
                            <input class="input-xlarge readonly" id="signature" name="signature" size="30" type="text" value=${current.signature}>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="name">邮箱地址</label>
                        <div class="controls">
                            <#if current.mail??>
                                <input class="input-xlarge readonly" id="mail" name="mail" size="30" type="text" value=${current.mail}>
                            <#else>
                                <input class="input-xlarge readonly" id="mail" name="mail" size="30" type="text">
                            </#if>

                        </div>
                    </div>
                    <div class="form-actions">
                        <input type="submit" class="span-primary submit_btn" data-loading-text="保存中.." value="保存设置">
                    </div>
                </form>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">更改密码</span>
            </div>
            <div class="inner">
                <form id="change_pass_form" class="form-horizontal" action="/user/updatePW" method="post">
                    <div class="control-group">
                        <label class="control-label" for="old_pass">当前密码</label>
                        <div class="controls">
                            <input class="input-xlarge" type="password" id="old_pass" name="old" size="30">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="new_pass">新密码</label>

                        <div class="controls">
                            <input class="input-xlarge" type="password" id="new_pass" name="password" size="30">
                        </div>
                    </div>
                    <#if msgOk??>
                        <div class="alert alert-success" role="alert">${msgOk}</div>
                    <#elseif msgError??>
                        <div class="alert alert-danger" role="alert">${msgError}</div>
                    </#if>
                    <div class="form-actions">
                        <input type="submit" class="span-primary submit_btn" data-loading-text="更改中.." value="更改密码">
                    </div>
                </form>
            </div>
        </div>

        <div class="panel">
            <div class="header">
                <span class="col_fade">上传头像</span>
            </div>
            <div class="inner">
                <img src="${current.avatar}">
                <form method="post"
                      action="/user/avatar/upload"
                      enctype="multipart/form-data"
                >
                    <input type="file" name="file">
                    <button type="submit">上传头像</button>
                </form>
                <#if resultOk??>
                    <div class="alert alert-success" role="alert">${resultOk}</div>
                <#elseif resultError??>
                    <div class="alert alert-danger" role="alert">${resultError}</div>
                </#if>
            </div>
        </div>
    </div>

</div>

</body>
</html>