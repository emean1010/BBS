<!doctypehtml><title>核酸检测记录</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,viewport-fit=cover">
<meta name="theme-color" content="#FFFFFF">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<link rel="manifest" href="/static/manifest.json">
<link rel="icon" type="image/jpeg" href="/static/health/ykm/static/yss.jpeg">
<link rel="apple-touch-icon" sizes="246x246" href="/static/health/ykm/static/yss.jpeg">
<link rel="stylesheet" href="/static/health/ykm/detail.css">
<link rel="stylesheet" href="/static/health/common/nav.css">
<script src="/static/health/common/base.js"></script>
<body>
<view class="weui-navigation-bar">
    <view class="weui-navigation-bar__placeholder" style="visibility:hidden"></view>
    <view class="weui-navigation-bar__inner" style="color:#000;background:#fff">
        <view class="weui-navigation-bar__left" style="width:var(--right)">
            <view class="weui-navigation-bar__buttons" onclick="history.back()">
                <view bindtap="back" class="weui-navigation-bar__button weui-navigation-bar__btn_goback"></view>
            </view>
        </view>
        <view class="weui-navigation-bar__center">
            <text>核酸检测记录</text>
        </view>
        <view class="weui-navigation-bar__right"></view>
    </view>
</view>
<div class="capsule" onclick="navigateHome()">
    <svg class="capsule-menu-icon" viewBox="0 0 64 28" xmlns="http://www.w3.org/2000/svg">
        <circle cx="32" cy="14" r="9.5"/>
        <circle cx="54" cy="14" r="6"/>
        <circle cx="10" cy="14" r="6"/>
    </svg>
    <div class="splitter"></div>
    <svg class="capsule-exit-icon" viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg">
        <circle cx="30" cy="30" r="9"/>
        <circle cx="30" cy="30" r="23" stroke-width="6" fill="transparent"/>
    </svg>
</div>
<view class="title">
    <view style="display:flex;flex-direction:row;justify-content:flex-start;align-items:center;flex:1">
        <text class="title__text" onclick='window.location.href="/sz"'>核酸检测记录</text>
    </view>
    <view bind:tap="handleTap" class="reload_box" slot="action">
        <image class="reload" src="/static/health/ykm/static/e5cebec2f715d6d4f4c4e19b5856f836.svg"></image>
        刷新
    </view>
</view>
<view>
    <view class="tabs">
        <view class="tabs__header tabs__header-border tab-header-class" id="tab-header" style="position:relative">
            <view class="tabs__item__wrap">
                <view class="tabs__item tabs__item--active">
                    <view class="tabs__item-inline">检测完成</view>
                </view>
            </view>
            <view class="tabs__item__wrap">
                <view class="tabs__item">
                    <view class="tabs__item-inline">检测中</view>
                </view>
            </view>
            <view class="tabs__slider"></view>
        </view>
        <view class="tabs__content">
            <view class="tab-pane">
                <view class="txt">说明：省内核酸数据来源于广东省新冠病毒检测信息系统，支持查询近一个月记录。我省核酸检测结果信息由省有关部门统一报送国家平台，无需群众自行上报。</view>
                <view class="member-list">
                    <view class="member-item">
                        <view class="member-top">
                            <view class="member-name">周益民</view>
                        </view>
                        <view class="preview g-preview" direction="row">
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>采样时间</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text class="sample-time" data-traceback-hours="11" data-traceback-range="4"></text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>检测时间</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text class="test-time" data-traceback-hours="5" data-traceback-range="4"></text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>检测机构</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text class="test-institution"></text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>数据来源</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text>广东省卫生健康委员会</text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>检测结果</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text style="color:#09bb07">阴性</text>
                                </view>
                            </view>
                        </view>
                    </view>
                    <view class="member-item">
                        <view class="member-top">
                            <view class="member-name">周益民</view>
                        </view>
                        <view class="preview g-preview" direction="row">
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>采样时间</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text class="sample-time" data-traceback-hours="41" data-traceback-range="4"></text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>检测时间</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text class="test-time" data-traceback-hours="32" data-traceback-range="4"></text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>检测机构</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text class="test-institution"></text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>数据来源</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text>广东省卫生健康委员会</text>
                                </view>
                            </view>
                            <view class="preview-item">
                                <view class="preview-item__label">
                                    <text>检测结果</text>
                                </view>
                                <view class="preview-item__content preview-item__content__text-right">
                                    <text style="color:#09bb07">阴性</text>
                                </view>
                            </view>
                        </view>
                    </view>
                </view>
            </view>
        </view>
    </view>
    <view style="height:20vw"></view>
    <view class="province_btn" onclick='window.location.href="/sz"'>查询外省核酸并上传至粤康码</view>
</view>
<script>setStaticTime(".sample-time", 0, 16), setStaticTime(".test-time", 0, 16), addStorageField("_name", ".member-name", "名字", "周益民"), addStorageField("_test_institution", ".test-institution", "检测机构", "深圳海普洛斯医学检验实验室")</script>