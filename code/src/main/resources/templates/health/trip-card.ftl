<!doctypehtml><title>通信大数据行程卡</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport"
      content="width=device-width,height=device-height,viewport-fit=cover,initial-scale=1,maximum-scale=1,user-scalable=0">
<meta name="theme-color" content="#FFFFFF">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<link rel="manifest" href="/static/manifest.json">
<link rel="icon" type="image/png" href="/static/health/trip-card/static/img_arrow@2x.png">
<link rel="apple-touch-icon" sizes="360x360" href="/static/health/trip-card/static/img_arrow@2x.png">
<link rel="stylesheet" href="/static/health/trip-card/app.css">
<link rel="stylesheet" href="/static/health/common/nav.css">
<script src="/static/health/common/base.js"></script>
<view class="weui-navigation-bar">
    <view class="weui-navigation-bar__placeholder"></view>
    <view class="weui-navigation-bar__inner" style="color:#000;background:#fff">
        <view class="weui-navigation-bar__left">
            <view class="weui-navigation-bar__buttons" onclick="history.back()">
                <view class="weui-navigation-bar__button weui-navigation-bar__btn_goback"></view>
            </view>
        </view>
        <view class="weui-navigation-bar__center">
            <text>通信行程卡</text>
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
<view class="container">
    <image class="home" mode="widthFix" src="/static/health/trip-card/static/g2.png"></image>
    <view class="main">
        <view class="tel1">
            <image class="tel1_phone" src="/static/health/trip-card/static/withtext@2x.png"></image>
        </view>
        <view class="text1">
            <text class="text_text1"><span id="phone"></span>的动态行程卡</text>
        </view>
        <view class="text2">
            <text class="text_text2">更新于：<span id="datetime"></span></text>
        </view>
        <view class="tel2">
            <image class="tel2_phone" src="/static/health/trip-card/static/gif_green.gif"></image>
        </view>
        <view class="tel3"></view>
        <view class="tel4_end">
            <view><span class="tel4_phone_text">您于前7天内到达或途经：</span><span class="tel4_phone1_text"></span></view>
        </view>
    </view>
    <view class="text2_text">
        <text class="text2_text1">结果包含您在前7天内到访的国家（地区）与停留4小时以上的国内城市</text>
    </view>
    <view class="text2_text">
        <text class="text2_text1">色卡仅对到访地作提醒，不关联健康状况</text>
    </view>
    <view class="section">
        <view class="section1"></view>
        <view class="section2">
            <text class="text" style="white-space:nowrap">本服务联合提供</text>
        </view>
        <view class="section3"></view>
    </view>
    <view class="imag_section">
        <image class="caict" mode="widthFix" src="/static/health/trip-card/static/xty0.png"></image>
        <image class="imag_section1" mode="widthFix" src="/static/health/trip-card/static/dianxin0.png"></image>
        <image class="imag_section2" mode="widthFix" src="/static/health/trip-card/static/yidong0.png"></image>
        <image class="imag_section3" mode="widthFix" src="/static/health/trip-card/static/liant0.png"></image>
        <image class="imag_section4" mode="widthFix" src="/static/health/trip-card/static/guangdian0.png"></image>
    </view>
    <view class="service_tel">
        <text class="service_text" decode="true">客服热线：</text>
        <text bindtap="callNum" class="service_text" data-num="10000" decode="true">10000&ensp;</text>
        <text class="service_text" decode="true">/</text>
        <text bindtap="callNum" class="service_text" data-num="10086" decode="true">&ensp;10086&ensp;</text>
        <text class="service_text" decode="true">/</text>
        <text bindtap="callNum" class="service_text" data-num="10010" decode="true">&ensp;10010&ensp;</text>
        <text class="service_text" decode="true">/</text>
        <text bindtap="callNum" class="service_text" data-num="10099" decode="true">&ensp;10099&ensp;</text>
    </view>
    <view>
        <div class="imag_section6">
            <image class="imag_ucload" mode="heightFix" src="/static/health/trip-card/static/ucload.png"></image>
            <text class="text-unit" style="white-space:nowrap">提供云服务技术支持</text>
        </div>
    </view>
    <view class="bottom_nothing"></view>
    <view bindtap="yztcClick" class="app_bottom">
        <text class="text1_bottom">一证通查来了！</text>
        <text class="text2_bottom">立即点击进入</text>
        <view class="app_bottom_button">
            <text class="text1_bottom_button">全国移动电话卡"一证通查"</text>
            <text class="text2_bottom_button">防范诈骗，保护你我</text>
        </view>
    </view>
</view>
<script>
    addStorageField("_phone", "#phone", "手机号码", "18954091544", presetFilters.phone())
    addStorageField("_trip_card_places", ".tel4_phone1_text", "途经地点（以逗号分隔）", "广东省深圳市", e => e.replace(/，/g, ","))
    document.getElementById("datetime").innerText = new Date((new Date).getTime() + 288e5).toISOString().replace("T", " ").replace(/-/g, ".").slice(0, 19)
</script>