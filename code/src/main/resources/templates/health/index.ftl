<!doctypehtml><title>粤康码</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport"
      content="width=device-width,height=device-height,viewport-fit=cover,initial-scale=1,maximum-scale=1,user-scalable=0">
<meta name="theme-color" content="#569AFE">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<link rel="manifest" href="/static/manifest.json">
<link rel="apple-touch-icon" sizes="246x246" href="/static/health/ykm/static/yss.jpeg">
<link rel="icon" type="image/jpeg" href="/static/health/ykm/static/yss.jpeg">
<link rel="stylesheet" href="/static/health/common/nav.css">
<script src="/static/health/common/base.js"></script>
<style>block, view {
        display: block
    }

    body {
        height: 100%;
        margin: 0;
        font-family: "PingFang SC", sans-serif
    }

    .page_normal-temp {
        background-color: #ebf0fc
    }

    .page_yellow-temp {
        background-color: #fff9f4
    }

    .page_red-temp {
        background-color: #fff5f5
    }

    .top-header {
        background: #4293f4;
        box-sizing: border-box;
        height: 16.933vw;
        padding-top: 5.2vw;
        position: relative;
        text-align: center
    }

    .arrow-left {
        left: 2.667vw;
        position: absolute
    }

    .arrow-left, .top-header-title {
        color: #fff;
        font-family: PingFangSC-Medium;
        font-size: 4.933vw;
        letter-spacing: 0;
        margin-top: 2.667vw;
        text-align: center
    }

    .content {
        background: #fff;
        padding: 5.333vw 5.333vw 2.4vw;
        position: relative
    }

    .content.error {
        padding: 5.333vw 5.333vw 0
    }

    .content.red-temp {
        background: #fe3737
    }

    .content.yellow-temp {
        background: #ff8f1f
    }

    .red-temp .select {
        background: #feebeb
    }

    .yellow-temp .select {
        background: #fff3e8
    }

    .yellow-temp .select-operat {
        color: #ff8f1f
    }

    .red-temp .select-operat {
        color: #f0422c
    }

    .content-list {
        background: #fff;
        border-radius: 2.667vw 2.667vw 0 0;
        position: relative
    }

    .content-list_box {
        background-color: #fff;
        border-radius: 2.667vw;
        box-shadow: 0 2px 20px 0 rgba(0, 0, 0, .06);
        margin-bottom: 3.2vw
    }

    .content-list_header {
        box-sizing: border-box;
        display: flex;
        height: 13.333vw;
        margin-bottom: 4.8vw;
        padding: 3.2vw 5.333vw 1.6vw;
        position: relative;
        width: 100%
    }

    .content-list_header .header_faimly {
        justify-content: flex-end;
        min-width: 30%;
        text-align: right;
        width: 30% !important
    }

    .content-list_header .header_faimly, .header_name {
        align-items: center;
        color: #000;
        display: flex;
        font-family: PingFangSC-Regular;
        font-size: 4vw;
        letter-spacing: 0
    }

    .header_name {
        background: rgba(56, 136, 255, .1);
        border-radius: 1.067vw;
        height: 8.533vw;
        justify-content: center;
        text-align: center;
        width: 40%
    }

    .header_name.box_yellow-temp {
        background-color: rgba(255, 143, 31, .1)
    }

    .box_yellow-temp .header_name_box:after {
        background-color: rgba(255, 143, 31, .3)
    }

    .header_name.box_red-temp {
        background-color: rgba(254, 55, 55, .1)
    }

    .box_red-temp .header_name_box:after {
        background-color: rgba(254, 55, 55, .3)
    }

    .header_name_box {
        align-items: center;
        display: inline-flex;
        flex: 1;
        justify-content: center;
        padding-right: 2.4vw;
        position: relative
    }

    .header_name_box:after {
        background-color: rgba(66, 147, 244, .3);
        content: "";
        height: 70%;
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        width: .267vw
    }

    .header_name_action {
        padding-left: 2.4vw
    }

    .header_faimly_icon {
        height: 4.933vw;
        margin-right: 1.333vw;
        width: 4.933vw
    }

    .header_faimly_icon_gif {
        height: 5.6vw;
        margin-right: 1.333vw;
        width: 5.6vw
    }

    .content-list_time {
        align-items: center;
        display: flex;
        justify-content: center
    }

    .header_city .triangle, .header_name .triangle {
        border-color: #000 transparent transparent !important
    }

    .view-select {
        text-align: center
    }

    .select {
        background: #ecf4fd;
        border-radius: 1.067vw;
        display: inline-block;
        margin: 0 auto
    }

    .normal-temp {
        animation: bg-scrolling-reverse 1s infinite;
        animation-timing-function: linear;
        background-color: #569afe;
        background-image: linear-gradient(135deg, #3888ff 33%, transparent 0), linear-gradient(225deg, #3888ff 33%, transparent 0), linear-gradient(45deg, #3888ff 33%, transparent 0), linear-gradient(315deg, #3888ff 33%, #569afe 0);
        background-position: 60px 0, 60px 0, 0 0, 0 0;
        background-repeat: repeat;
        background-size: 120px 120px;
        opacity: 1;
        position: relative
    }

    .normal-temp:before {
        background-image: linear-gradient(135deg, #569afe 25%, transparent 0), linear-gradient(225deg, #569afe 25%, transparent 0), linear-gradient(45deg, #569afe 25%, transparent 0), linear-gradient(315deg, #569afe 25%, transparent 0)
    }

    .normal-temp:after, .normal-temp:before {
        animation: bg-scrolling-reverse 1s infinite;
        animation-timing-function: linear;
        background-color: initial;
        background-position: 60px 0, 60px 0, 0 0, 0 0;
        background-repeat: repeat;
        background-size: 120px 120px;
        bottom: 0;
        content: "";
        left: 0;
        opacity: 1;
        position: absolute;
        right: 0;
        top: 0
    }

    .normal-temp:after {
        background-image: linear-gradient(135deg, #3888ff 17%, transparent 0), linear-gradient(225deg, #3888ff 17%, transparent 0), linear-gradient(45deg, #3888ff 17%, transparent 0), linear-gradient(315deg, #3888ff 17%, transparent 0)
    }

    .normal-temp1 {
        animation: bg-scrolling-reverse 1s infinite;
        animation-timing-function: linear;
        background-color: initial;
        background-image: linear-gradient(135deg, #569afe 8%, transparent 0), linear-gradient(225deg, #569afe 8%, transparent 0), linear-gradient(45deg, #569afe 8%, transparent 0), linear-gradient(315deg, #569afe 8%, transparent 0);
        background-position: 60px 0, 60px 0, 0 0, 0 0;
        background-repeat: repeat;
        background-size: 120px 120px;
        bottom: 0;
        left: 0;
        opacity: 1;
        position: absolute;
        right: 0;
        top: 0;
        z-index: 3
    }

    .hotTemp_wrap {
        position: relative;
        z-index: 6
    }

    @-webkit-keyframes bg-scrolling-reverse {
        0% {
            background-position: 60px 0, 60px 0, 0 0, 0 0
        }
        to {
            background-position: 60px -120px, 60px -120px, 0 -120px, 0 -120px
        }
    }

    @keyframes bg-scrolling-reverse {
        0% {
            background-position: 60px 0, 60px 0, 0 0, 0 0
        }
        to {
            background-position: 60px -120px, 60px -120px, 0 -120px, 0 -120px
        }
    }

    .bg_white {
        background-image: linear-gradient(180deg, hsla(0, 0%, 100%, 0), #fff);
        bottom: 0;
        height: 51%;
        left: 0;
        position: absolute;
        right: 0;
        top: 50%;
        z-index: 5
    }

    .bg_white-normal-temp {
        background-image: linear-gradient(180deg, rgba(235, 240, 252, 0), #ebf0fc 86%)
    }

    .bg_white-yellow-temp {
        background-image: linear-gradient(180deg, rgba(255, 249, 244, 0), #fff9f4 86%)
    }

    .bg_white-red-temp {
        background-image: linear-gradient(180deg, hsla(0, 100%, 98%, 0), #fff5f5 86%)
    }

    .select-name, .select-picker {
        display: inline-block
    }

    .select-name {
        color: #000;
        font-family: PingFangSC-Regular;
        font-size: 4vw;
        letter-spacing: 0;
        line-height: 5.333vw;
        text-align: center
    }

    .select-line {
        background: #4293f4;
        display: inline-block;
        height: 3.733vw;
        margin: 0 3.2vw;
        opacity: .3;
        position: relative;
        top: .533vw;
        width: .267vw
    }

    .select-operat {
        color: #4293f4;
        display: inline-block;
        font-family: PingFangSC-Regular;
        font-size: 4vw;
        letter-spacing: 0;
        line-height: 5.333vw;
        padding-bottom: 2.133vw;
        padding-right: 3.2vw;
        padding-top: 2.133vw;
        text-align: center
    }

    .img-box {
        overflow: hidden;
        padding-bottom: 0;
        text-align: center
    }

    .img, .img-box {
        position: relative
    }

    .img {
        background-color: red;
        border-radius: 1.067vw;
        display: none;
        height: 100%;
        width: 100%;
        z-index: 6
    }

    .img_mask_qrcode {
        height: 40vw;
        left: 50%;
        margin-left: -22.667vw;
        margin-top: 4vw;
        padding: 2.667vw;
        position: absolute;
        top: 3.2vw;
        width: 40vw;
        z-index: 10
    }

    .red-temp .img_border, .yellow-temp .img_border {
        margin-top: .533vw
    }

    .img_border {
        align-items: center;
        border-radius: 1.333vw;
        display: flex;
        height: 53.067vw;
        justify-content: center;
        margin: 4vw auto 1.6vw;
        position: relative;
        width: 53.067vw
    }

    .img_border_one {
        background: linear-gradient(to bottom right, #8fcaff, #55b1ff, #8fcaff)
    }

    .img_border_two {
        background: linear-gradient(to bottom right, #ffe58c, #ffb137, #ffe58c)
    }

    .img_background {
        background: #fff;
        border-radius: .8vw;
        height: 45.067vw;
        left: 1.467vw;
        position: absolute;
        top: 1.467vw;
        width: 45.067vw;
        z-index: 1
    }

    .img_mask {
        background: #fff;
        opacity: .98;
        z-index: 11
    }

    .img_err_tip, .img_mask {
        bottom: 0;
        height: 48vw;
        left: 0;
        line-height: 6.133vw;
        margin: auto;
        position: absolute;
        right: 0;
        top: 0;
        width: 48vw
    }

    .img_err_tip {
        align-items: center;
        color: #333;
        display: flex;
        flex-direction: column;
        font-size: 4.267vw;
        justify-content: center
    }

    .status {
        text-align: center
    }

    .status .result_label {
        font-size: 4.533vw;
        font-weight: 400;
        justify-content: center;
        line-height: 6.4vw;
        padding: 1.067vw 2.533vw 1.067vw 2.4vw
    }

    .status .result_label .result_arrow {
        height: 3.333vw;
        margin-left: 1.6vw;
        width: 3.333vw
    }

    .result_label_hs {
        display: inline-block;
        margin-right: 1.6vw;
        position: relative;
        top: -.267vw
    }

    .status-img {
        display: inline-block;
        height: 8.533vw;
        width: auto
    }

    .status-img image {
        height: 100%;
        width: 100%
    }

    .status-desc {
        color: #999;
        font-family: PingFangSC-Regular;
        font-size: 3.733vw;
        letter-spacing: 0;
        line-height: 5.333vw;
        text-align: center
    }

    .desc-box {
        font-size: 4.267vw;
        line-height: 5.867vw
    }

    .desc-box, .desc-box-2 {
        color: #666;
        font-family: PingFangSC-Regular;
        text-align: center
    }

    .desc-box-2 {
        font-size: 3.733vw;
        line-height: 5.333vw;
        margin-bottom: 4vw;
        padding-top: 2.667vw
    }

    .title {
        align-items: center;
        color: #000;
        display: flex;
        font-family: PingFangSC-Medium;
        font-size: 6.4vw;
        font-weight: 600;
        justify-content: space-between;
        line-height: 8.8vw;
        padding-left: 5.333vw;
        padding-right: 5.333vw;
        padding-top: 5.333vw
    }

    .title_img {
        height: 6.667vw;
        width: 32vw
    }

    .use-address {
        padding: 8.533vw 5.333vw 14.667vw
    }

    .use-address-title {
        text-align: center
    }

    .address-title-desc {
        display: inline-block
    }

    .address-title-desc image {
        height: 100%;
        width: 100%
    }

    .view-line {
        font-size: 0
    }

    .address-list {
        border: 1px solid #ebebeb;
        border-bottom: none;
        border-radius: 1.067vw;
        margin-top: 5.333vw
    }

    .address-list-item {
        display: flex;
        padding: 5.333vw
    }

    .item-left {
        width: 13.333vw
    }

    .item-left image {
        height: 13.333vw;
        width: 13.333vw
    }

    .item-right {
        flex: 1;
        padding-left: 4.267vw
    }

    .address-list-item {
        background: #fff;
        border-bottom: 1px solid #ebebeb;
        margin-bottom: 4vw
    }

    .address-list-item:last-child {
        margin-bottom: 0
    }

    .item-right-title {
        color: #000;
        font-family: PingFangSC-Medium;
        font-size: 4.8vw;
        line-height: 6.4vw
    }

    .item-right-content {
        color: #666;
        font-family: PingFangSC-Regular;
        font-size: 4vw;
        line-height: 5.6vw
    }

    .item-right-to {
        color: #4293f4;
        font-family: PingFangSC-Regular;
        font-size: 3.733vw
    }

    .ykm-entry-cell {
        align-items: center;
        background: #fff;
        color: #4293f4;
        display: flex;
        font-size: 4.8vw;
        justify-content: space-between;
        line-height: 15.733vw;
        padding: 0 5.333vw
    }

    .special-view {
        background: #f2f7fd;
        border-radius: 1.067vw;
        margin: 5.333vw;
        padding: .267vw
    }

    .desc-cell {
        border-radius: .8vw .8vw 0 0;
        color: #6486a0;
        font-size: 3.733vw;
        line-height: 5.333vw;
        margin: 4vw 0 4vw 9.333vw;
        position: relative
    }

    .desc-cell:before {
        background: #4f6f8b;
        content: "";
        height: 2.267vw;
        left: -3.333vw;
        position: absolute;
        top: 1.6vw;
        transform: rotate(45deg);
        width: 2.267vw
    }

    .desc-cell + .desc-cell {
        margin-top: 4vw
    }

    .flex-wrap {
        display: flex
    }

    .flex-box {
        color: #000;
        flex: 1;
        font-size: 3.733vw;
        text-align: center
    }

    .flex-box_desc, .list-icon {
        margin-top: 1.333vw
    }

    .list-icon {
        height: 5.067vw;
        margin-right: 2.667vw;
        width: 5.067vw
    }

    .err_tips {
        color: #999;
        margin-top: 2.667vw;
        text-align: center
    }

    .err_tips, .err_tips view {
        font-family: PingFangSC-Regular;
        font-size: 3.733vw;
        line-height: 5.067vw
    }

    .err_tips view {
        color: #4293f4;
        display: inline;
        margin-left: 2.667vw
    }

    .shadow {
        background: rgba(0, 0, 0, .6);
        position: fixed;
        right: 0;
        top: 0
    }

    .shadow, .shadow__main {
        bottom: 0;
        left: 0;
        z-index: 20000
    }

    .shadow__main {
        background: #fff;
        box-sizing: border-box;
        padding: 4.8vw 0 0 5.333vw;
        position: absolute;
        width: 100%
    }

    .shadow__main-title {
        color: #000;
        font-size: 6.4vw;
        font-weight: 700;
        height: 9.067vw;
        letter-spacing: 0;
        line-height: 9.067vw;
        margin-bottom: 4vw
    }

    .shadow__main-city {
        overflow: hidden
    }

    .shadow__main-city-item {
        border: 1px solid #ebebeb;
        border-radius: 1.067vw;
        box-sizing: border-box;
        color: #000;
        float: left;
        font-size: 4vw;
        height: 10.667vw;
        letter-spacing: 0;
        line-height: 10.667vw;
        margin-bottom: 5.333vw;
        margin-right: 2.267vw;
        text-align: center;
        width: 28.267vw
    }

    .shadow__main-city-item.active {
        border: .267vw solid #4293f4
    }

    .prevent__scroll {
        height: 100%;
        overflow: hidden;
        width: 100%
    }

    .shadow-share {
        background-color: rgba(0, 0, 0, .7);
        border-radius: 1.333vw;
        display: flex;
        height: 9.333vw;
        padding-left: 4vw;
        position: fixed;
        right: 8vw;
        top: 2vw;
        z-index: 999
    }

    .shadow-share:after {
        border: 6px solid transparent;
        border-bottom-color: rgba(0, 0, 0, .7);
        content: "";
        height: 0;
        position: absolute;
        right: 9.333vw;
        top: -12px;
        width: 0
    }

    .shadow-share--android:after {
        right: 13.067vw
    }

    .shadow-share__info {
        color: #fff;
        font-size: 3.467vw;
        line-height: 9.333vw;
        padding-right: 2.667vw;
        position: relative
    }

    .shadow-share__info:after {
        background-color: #fff;
        content: "";
        height: 5.333vw;
        position: absolute;
        right: 0;
        top: 2vw;
        transform: scaleX(.5);
        width: 1px
    }

    .shadow-share__close {
        height: 9.333vw;
        position: relative;
        width: 8vw
    }

    .shadow-share__close:before {
        transform: rotate(45deg)
    }

    .shadow-share__close:after, .shadow-share__close:before {
        background-color: #fff;
        content: "";
        height: 4vw;
        left: 4vw;
        position: absolute;
        top: 2.667vw;
        width: 1px
    }

    .shadow-share__close:after {
        transform: rotate(-45deg)
    }

    .result_box {
        display: flex;
        justify-content: center;
        margin: 0 5.333vw;
        position: relative
    }

    .result_label {
        border-radius: .533vw;
        display: inline-block;
        margin: 0 auto;
        padding: 2.133vw 3.2vw
    }

    .red-temp .result_label {
        background: rgba(240, 66, 44, .1);
        border: .267vw solid #fe3737;
        color: #fe3737
    }

    .yellow-temp .result_label {
        background: rgba(255, 143, 31, .1);
        border: .267vw solid #ff8f1f;
        color: #ff8f1f
    }

    .result_arrow {
        height: 2.667vw;
        margin-left: 2.667vw;
        width: 2.667vw
    }

    .canvas-main {
        align-items: center;
        display: flex;
        flex-direction: column;
        justify-content: center;
        opacity: 0;
        transition: all .6s ease
    }

    #XUESHENGMA {
        left: -2000px;
        opacity: 0;
        position: fixed;
        top: -2000px;
        z-index: 1
    }

    .canvas-img {
        border: 2px solid #000
    }

    .options {
        align-items: center;
        background: #f3f3f3;
        border-radius: 8px 0 0 8px;
        bottom: 0;
        box-sizing: border-box;
        color: #828282;
        display: flex;
        font-size: 3.2vw;
        height: 20.8vw;
        justify-content: center;
        margin-bottom: auto;
        margin-top: auto;
        padding: 0 .8vw;
        position: absolute;
        right: 0;
        top: 0;
        width: 6.4vw
    }

    .err_honglvma_action, .err_qrcode {
        color: #4293f4;
        font-size: 4.533vw;
        letter-spacing: 0;
        line-height: 6.4vw;
        padding-bottom: 4vw;
        text-align: center
    }

    .err_honglvma_box {
        display: flex;
        flex-direction: column;
        justify-content: center;
        margin-bottom: 4vw;
        text-align: center
    }

    .err_honglvma_title {
        color: #999;
        font-family: PingFangSC-Regular;
        font-size: 4.533vw;
        letter-spacing: 0;
        text-align: center
    }

    .no_certified {
        align-items: center;
        display: flex;
        justify-content: center;
        margin-bottom: 2.667vw;
        margin-top: 2.667vw
    }

    .no_certified_text {
        color: #f0422c;
        font-size: 4vw;
        margin-right: 1.333vw
    }

    .no_certified_action {
        color: #4293f4;
        font-size: 4vw;
        margin-right: .267vw
    }

    .sub-list {
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 20px 0 rgba(0, 0, 0, .06);
        color: #000
    }

    .normal-temp .sub-list, .red-temp .sub-list, .yellow-temp .sub-list {
        background: hsla(0, 0%, 100%, .1);
        color: #fff
    }

    .tgpz {
        background: rgba(9, 187, 7, .1);
        border-radius: .933vw;
        color: #09bb07;
        font-family: PingFangSC-Regular;
        font-size: 3.733vw;
        letter-spacing: 0;
        line-height: 5.333vw;
        padding: .133vw 1.333vw;
        text-align: center
    }

    .normal-temp .tgpz, .red-temp .tgpz, .yellow-temp .tgpz {
        background: rgba(0, 0, 0, .2);
        color: #fff
    }

    .ykmxx-line {
        box-shadow: inset 0 -.267vw 0 0 #ebebeb;
        height: .133vw;
        width: 100%
    }

    .sub-cl {
        align-items: center;
        display: flex;
        justify-content: center;
        margin-left: 5.333vw;
        margin-right: 5.333vw;
        padding-bottom: 4.8vw;
        padding-top: 4.8vw;
        position: relative
    }

    .normal-temp .sub-cl, .red-temp .sub-cl, .sub-cl {
        box-shadow: inset 0 -.133vw 0 0 hsla(0, 0%, 100%, .12)
    }

    .normal-temp .sub-cl {
        color: #fff
    }

    .sub-cl:last-child {
        box-shadow: inset 0 0 0 0 hsla(0, 0%, 100%, .12)
    }

    .sub-cl_content {
        flex: 1;
        font-size: 4.8vw;
        line-height: 6.4vw
    }

    .sub-cl_content, .time-box {
        align-items: center;
        display: flex
    }

    .time-box {
        justify-content: center;
        margin-bottom: 5.333vw
    }

    .red-temp .city, .yellow-temp .city {
        color: #fff
    }

    .red-temp .triangle, .yellow-temp .triangle {
        border-color: #fff transparent transparent
    }

    .normal-temp .city {
        color: #fff
    }

    .normal-temp .triangle {
        border-color: #fff transparent transparent
    }

    .city {
        align-items: center;
        color: #000;
        display: flex;
        font-family: PingFangSC-Medium;
        font-size: 5.6vw;
        letter-spacing: 0;
        line-height: 6.4vw;
        width: 20%
    }

    .triangle {
        border-color: #000 transparent transparent;
        border-style: solid;
        border-width: 1.333vw 1.2vw 0;
        height: 0;
        margin-left: 1.6vw;
        width: 0
    }

    .contented .timer_preview {
        color: #000;
        font-family: PingFangSC-Semibold;
        font-size: 8vw;
        font-weight: 500;
        letter-spacing: 0;
        line-height: 8vw;
        text-align: center;
        vertical-align: middle;
        width: 60vw;
        white-space: nowrap
    }

    @keyframes fade {
        0% {
            opacity: .1
        }
        to {
            opacity: 1
        }
    }

    @-webkit-keyframes fade {
        0% {
            opacity: 1
        }
        to {
            opacity: 0
        }
    }

    .dropdown__icon {
        border: 1.733vw solid transparent;
        border-top-color: #000;
        margin-left: 1.333vw;
        margin-top: 1.333vw
    }

    .picker-padding {
        padding-bottom: 2.133vw;
        padding-left: 3.2vw;
        padding-top: 2.133vw
    }

    .picker-tips {
        background-repeat: no-repeat;
        height: 9.467vw;
        position: absolute;
        top: -6.667vw;
        width: 48vw;
        z-index: 10000
    }

    .hesuan-tips_warp, .image-tips, .image-tips_warp {
        height: 100%;
        position: relative;
        width: 100%
    }

    .tips-close {
        height: 5.333vw;
        position: absolute;
        right: 2.213vw;
        top: 1.68vw;
        width: 5.333vw
    }

    .close-image, .user-phone_button {
        height: 100%;
        width: 100%
    }

    .user-phone_button {
        background-color: initial;
        border: 0;
        left: 0;
        opacity: 0;
        padding: 0;
        position: absolute;
        top: 0
    }

    .user_tongguan {
        position: relative
    }

    .tips {
        color: #fff;
        font-family: PingFangSC-Regular, PingFang SC;
        font-size: 4vw;
        font-weight: 400;
        height: 5.333vw;
        line-height: 5.333vw;
        padding: 4.8vw 0;
        text-align: center;
        width: 100%
    }

    .tips--black {
        color: #666
    }

    .result_box .result_label {
        font-size: 4vw;
        font-weight: 400;
        line-height: 6.4vw;
        padding: 1.067vw 2.533vw 1.067vw 2.4vw
    }

    .result_box .result_label .result_arrow {
        height: 3.333vw;
        margin-left: .533vw;
        width: 3.333vw
    }

    .result_label_green {
        background: rgba(56, 176, 107, .1);
        border: .267vw solid #00b462;
        border-radius: .533vw;
        color: #00b462
    }

    .sub-block {
        border-radius: 2.667vw;
        box-shadow: 0 2px 5px #eee
    }

    .entry, .sub-block {
        display: flex;
        height: 30.8vw;
        justify-content: space-between;
        margin: 0 auto;
        width: 89.333vw
    }

    .entry {
        background-color: #fff;
        border-radius: 2.667vw;
        box-sizing: border-box;
        height: 22.533vw;
        padding-bottom: 3.2vw;
        padding-top: 1.333vw;
        position: relative;
        z-index: 40
    }

    .entry-item {
        align-items: center;
        border-radius: 1.067vw;
        display: flex;
        filter: blur(10);
        flex-direction: column;
        justify-content: center;
        position: relative;
        width: 21.067vw
    }

    .entry-item_label {
        height: 4vw;
        left: 0;
        margin-left: auto;
        margin-right: auto;
        position: absolute;
        right: 0;
        top: 0;
        width: 13.867vw
    }

    .entry-item_icon {
        height: 9.6vw;
        margin-bottom: .8vw;
        margin-top: 1.6vw;
        width: 9.6vw
    }

    .entry-item_name {
        color: #000;
        font-family: PingFangSC-Regular;
        font-size: 3.733vw;
        font-weight: 400;
        letter-spacing: 0;
        text-align: center
    }

    .jiechu-tips {
        height: 9.467vw;
        left: 45%;
        margin-left: auto;
        margin-right: auto;
        position: absolute;
        right: 0;
        top: 9.333vw;
        width: 48vw;
        z-index: 10
    }

    .jiechu-tips .image-tips, .jiechu-tips_warp {
        height: 100%;
        width: 100%
    }

    .jiechu-tips .tips-close {
        height: 5.333vw;
        position: absolute;
        right: 2.4vw;
        text-align: center;
        top: 2.667vw;
        width: 5.333vw
    }

    .hesuan-tips {
        height: 10.933vw;
        left: 2.667vw;
        position: absolute;
        top: -8.667vw;
        width: 62.8vw;
        z-index: 10
    }

    .hesuan-tips .image-tips {
        height: 100%;
        width: 100%
    }

    .hesuan-tips .tips-close {
        text-align: center
    }

    .block-item {
        border: .533vw solid #fff;
        border-radius: 1.067vw 0 0 1.067vw;
        height: 29.6vw;
        width: 44.667vw
    }

    .block-item, .sub-block {
        background-color: #fff
    }

    .sub-block_line {
        background: #ebebeb;
        height: 24.267vw;
        position: relative;
        top: 3.467vw;
        width: .133vw
    }

    .block-item:first-child {
        border-radius: 2.667vw 0 0 2.667vw;
        border-right: 0
    }

    .block-item:nth-child(3) {
        border-left: 0;
        border-radius: 0 2.667vw 2.667vw 0
    }

    .hesuan_block {
        background-image: linear-gradient(180deg, #00b93e, #007d00)
    }

    .hesuan_lv {
        background-image: linear-gradient(180deg, #a079eb, #6f3cd0)
    }

    .hesuan_blue {
        background-image: linear-gradient(180deg, #008bff, #003cd0)
    }

    .hesuan_orgereen {
        background-image: linear-gradient(180deg, #15b6b9, #006e70)
    }

    .block-item_icon {
        height: 4vw;
        padding-right: 1.333vw;
        width: 4vw
    }

    .block-item_title {
        align-items: center;
        color: #000;
        display: flex;
        font-family: PingFangSC-Regular;
        font-size: 4vw;
        font-weight: 400;
        height: 5.6vw;
        justify-content: center;
        padding-top: 2.4vw
    }

    .hesuan_block .block-item_desc, .hesuan_block .block-item_tips, .hesuan_block .block-item_title, .hesuan_orgereen .block-item_desc, .hesuan_orgereen .block-item_tips, .hesuan_orgereen .block-item_title {
        color: #fff;
        margin-bottom: .8vw
    }

    .block-item_arrow {
        height: 2.4vw;
        padding-left: 1.6vw;
        width: 1.467vw
    }

    .hesuan-warp .block-item_desc {
        font-family: PingFangSC-Medium;
        font-size: 6.4vw;
        height: auto;
        line-height: 7.467vw;
        padding-top: 3.733vw
    }

    .block-item_desc, .hesuan-warp .block-item_tips {
        padding-top: 3.867vw
    }

    .block-item_desc {
        color: #999;
        font-family: PingFangSC-Medium;
        font-size: 4.8vw;
        height: 5.6vw;
        line-height: 5.6vw;
        text-align: center
    }

    .block-item_desc img {
        display: block;
        height: 12.8vw;
        margin: .8vw auto .533vw;
        width: 25.333vw
    }

    .desc--red {
        color: #fe3737;
        font-weight: 400
    }

    .desc--green {
        color: #009d3e;
        font-weight: 400
    }

    .desc--black {
        color: #000;
        font-weight: 400
    }

    .desc--small {
        font-size: 4.8vw
    }

    .block-item_tips {
        color: #999;
        filter: blur(10);
        font-family: PingFangSC-Regular;
        font-size: 3.2vw;
        height: 4.533vw;
        letter-spacing: 0;
        line-height: 4.533vw;
        padding-top: 5.6vw;
        text-align: center
    }

    .block-item_loading {
        display: block;
        height: 20vw;
        margin: 0 auto;
        width: 20vw
    }

    .cell {
        align-items: center;
        border-bottom: 1px solid #ebebeb;
        box-sizing: border-box;
        display: flex;
        height: 14.4vw;
        justify-content: space-between;
        margin-left: 5.333vw;
        margin-right: 5.333vw
    }

    .cell:last-of-type {
        border-bottom: none
    }

    .cell-content {
        align-items: center;
        display: flex;
        font-size: 4vw;
        height: 14.4vw;
        line-height: 5.333vw
    }

    .cell-icon {
        height: 6.4vw;
        padding-right: 2.4vw;
        width: 6.4vw
    }

    .cell-arrow {
        height: 3.467vw;
        width: 2.133vw
    }

    .no_pt {
        height: auto;
        padding-top: 0
    }

    .colored-person-action-list {
        align-items: center;
        color: #4292f3;
        display: flex;
        font-size: 3.733vw;
        justify-content: center
    }

    .colored-person-action-list_icon {
        height: 4.8vw;
        vertical-align: text-bottom;
        width: 4.8vw
    }

    .colored-person-action-list_divider {
        background: #d8d8d8;
        height: 3.2vw;
        margin: 0 5.333vw;
        width: 1px
    }

    .showVaccinesGuide {
        background-color: rgba(0, 0, 0, .8);
        left: 0;
        position: fixed;
        text-align: center;
        top: 0;
        z-index: 12000
    }

    .showVaccinesGuide_title {
        color: #fff;
        font-family: PingFangSC-Medium;
        font-size: 6.4vw;
        margin-bottom: 2.133vw;
        padding-top: 26.667vw;
        text-align: center
    }

    .showVaccinesGuide_desc {
        font-size: 4.8vw
    }

    .showVaccinesGuide_desc, .showVaccinesGuide_desc_bottom {
        color: #fff;
        font-family: PingFangSC-Regular;
        text-align: center
    }

    .showVaccinesGuide_desc_bottom {
        font-size: 3.467vw;
        margin: 5.333vw 5.333vw 0;
        opacity: .7
    }

    .showVaccinesGuide_oneImg {
        display: block;
        height: 50.667vw;
        margin: 15.467vw auto 22.533vw;
        width: 54vw
    }

    .showVaccinesGuide_twoImg {
        display: block;
        height: 67.333vw;
        margin: 7.2vw auto 14.133vw;
        width: 62vw
    }

    .showVaccinesGuide_btn {
        border: 2px solid #fff;
        border-radius: 1.067vw;
        color: #fff;
        display: inline-block;
        font-family: PingFangSC-Medium;
        font-size: 4.8vw;
        height: 10.133vw;
        line-height: 10.133vw;
        margin: 0 auto;
        padding: 0 8vw;
        text-align: center;
        width: 37.067vw
    }

    .showVaccinesGuide_oneImgicon, .showVaccinesGuide_twoImgicon {
        bottom: 0;
        height: 10.667vw;
        left: 0;
        margin: auto;
        position: absolute;
        right: 0;
        top: 0;
        width: 10.667vw;
        z-index: 20
    }

    .golden-border {
        height: 100%;
        left: 0;
        position: absolute;
        top: 0;
        width: 100%;
        z-index: 1
    }

    .showVaccinesGuide_close {
        height: 5.333vw;
        position: absolute;
        right: 3.333vw;
        top: 3.333vw;
        width: 5.333vw
    }

    .shadow__activity {
        height: 17.333vw;
        position: fixed;
        right: 1.6vw;
        transition: right .5s;
        width: 47.467vw;
        z-index: 80
    }

    @-webkit-keyframes tcdh {
        0% {
            right: -9.333vw
        }
        to {
            right: 0
        }
    }

    @keyframes tcdh {
        0% {
            right: -9.333vw
        }
        to {
            right: 0
        }
    }

    .shadow__activity--hide {
        right: -10.667vw
    }

    .shadow__activity__img {
        bottom: 0;
        height: 17.333vw;
        position: absolute;
        right: 4.533vw;
        width: 16vw
    }

    .shadow__activity__font {
        border-radius: 2.667vw 8.8vw 8.8vw 2.667vw;
        bottom: 0;
        box-shadow: 0 .533vw .533vw 0 rgba(0, 0, 0, .13);
        box-sizing: border-box;
        color: #fff;
        height: 14.933vw;
        left: 0;
        padding: 1.6vw 20.667vw 1.6vw 2.4vw;
        position: absolute;
        transition: left .5s;
        width: 47.467vw
    }

    .shadow__activity__font__close {
        height: 4vw;
        position: absolute;
        right: .667vw;
        top: 5.467vw;
        width: 4vw
    }

    .shadow__activity__font__img {
        height: 100%;
        left: 0;
        position: absolute;
        top: 0;
        width: 100%
    }

    .shadow__activity__font__info {
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        color: #fff;
        display: inline-block;
        display: -webkit-box;
        font-size: 2.933vw;
        line-height: 3.733vw;
        overflow: hidden;
        position: relative
    }

    .shadow__activity__font__jt {
        height: 3.467vw;
        margin-top: .8vw;
        position: relative;
        width: 9.867vw
    }

    .yq-jt {
        height: 3.333vw;
        left: -.267vw;
        position: relative;
        top: .533vw;
        width: 3.333vw;
        z-index: 10
    }

    .shadow__activity__font--hide {
        left: 26.667vw
    }

    .shadow__activity__close {
        bottom: 0;
        height: 17.333vw;
        position: absolute;
        right: 0;
        width: 12.533vw
    }

    .nav {
        align-items: center;
        color: #fff;
        display: flex;
        font-size: 4.533vw;
        justify-content: center;
        position: relative
    }

    .nav_close {
        height: 16vw;
        left: -1.333vw;
        position: absolute;
        width: 16vw
    }

    .content-list_nav {
        font-size: 5.867vw;
        font-weight: 700;
        height: 14.667vw;
        line-height: 14.667vw;
        position: relative;
        width: 100%
    }

    .yellow-temp .content-list_nav {
        background: linear-gradient(180deg, #fff8f1, #ffefde);
        color: #ca925b;
        text-align: center
    }

    .red-temp .content-list_nav {
        background: linear-gradient(180deg, #fff1f1, #ffdede);
        color: #b55f5f;
        text-align: center
    }

    .content-list_nav_img {
        height: 16vw;
        position: absolute;
        top: -1.6vw;
        width: 100%;
        z-index: 1
    }

    .cell-list {
        border-radius: 0 0 2.667vw 2.667vw;
        display: flex;
        overflow: hidden
    }

    .cell-list-icon {
        height: 5.333vw;
        position: relative;
        width: 5.333vw
    }

    .cell-list-item {
        flex: 1;
        font-size: 4vw;
        height: 6.667vw;
        line-height: 6.667vw;
        margin: 3.333vw 0;
        text-align: center
    }

    .cell-list-item_img, .xckcard {
        height: 13.333vw
    }

    .xckcard {
        font-size: 0;
        width: 41.867vw
    }

    .cell-list-font {
        display: inline;
        margin-left: 1.333vw;
        position: relative;
        top: -5px
    }

    .cell-list-item:nth-child(2) {
        border-left: .133vw solid #ebebeb;
        border-right: .133vw solid #ebebeb
    }

    .green-result_label {
        border-radius: .533vw;
        color: #009d3e;
        font-size: 4vw;
        font-weight: 400;
        font-weight: 700;
        line-height: 6.4vw;
        margin-bottom: 2.667vw;
        position: relative;
        text-align: center;
        width: 43.333vw
    }

    .arrow {
        height: 4vw;
        margin-left: .667vw;
        position: relative;
        width: 4vw
    }

    .arrow_img {
        height: 100%;
        width: 100%
    }

    .header_city {
        color: #000;
        font-family: PingFangSC-Regular;
        font-size: 4vw;
        justify-content: flex-start;
        letter-spacing: 0;
        text-align: center;
        width: 30%
    }

    .header_city, .header_text {
        align-items: center;
        display: flex
    }

    .header_text {
        color: #4293f4;
        justify-content: flex-end;
        min-width: 20vw;
        padding-left: .8vw;
        vertical-align: bottom
    }

    .content-list_header_shadow {
        background-image: linear-gradient(180deg, rgba(0, 0, 0, .03), hsla(0, 0%, 100%, 0));
        bottom: -10px;
        height: 2.667vw;
        position: absolute;
        width: 100%
    }

    .flex_center {
        align-items: center;
        display: flex;
        justify-content: space-between
    }

    .color_yellow-temp {
        color: #ff8f1f
    }

    .color_red-temp {
        color: #fe3737
    }

    .color_normal-temp {
        color: #3888ff
    }

    .gg {
        margin-bottom: 3.333vw;
        width: 100%
    }

    .gg, .gg_wrap_img {
        height: 26.667vw;
        position: relative
    }

    .gg_wrap_img {
        border-radius: 2.667vw;
        margin-left: 5.333vw;
        width: 89.333vw;
        z-index: 5
    }

    .gg_close_img {
        height: 2.133vw;
        left: -.667vw;
        padding: 2.667vw;
        position: absolute;
        top: -3.333vw;
        width: 2.133vw;
        z-index: 20
    }

    .fygztbutton {
        background-color: #fff;
        border-radius: 2.667vw;
        margin: 3.067vw 5.333vw 2.667vw;
        padding: 3.2vw 4.8vw;
        position: relative
    }

    .fy_action_title {
        color: #000;
        font-family: PingFangSC-Medium;
        font-size: 4.8vw;
        font-weight: 500;
        letter-spacing: 0;
        line-height: 6.667vw;
        margin-bottom: .533vw
    }

    .fy_action_icon {
        height: 3.733vw;
        margin-left: 1.067vw;
        width: 3.733vw
    }

    .fy_action_desc {
        color: #000;
        font-family: PingFangSC-Regular;
        font-size: 3.467vw;
        font-weight: 400;
        letter-spacing: 0;
        line-height: 5.067vw;
        opacity: .5
    }

    .fy_acyion_img {
        bottom: 0;
        height: 20.4vw;
        position: absolute;
        right: 0;
        width: 26.133vw
    }

    .taro__modal {
        z-index: 9999999999
    }

    .taro-modal__foot {
        border-top: .133vw solid #e7e7e7
    }

    .normalTag {
        background: hsla(0, 0%, 100%, .2);
        color: #fff
    }

    .colorTag, .normalTag {
        border-radius: .267vw;
        font-family: PingFangSC-Regular;
        font-size: 2.933vw;
        font-weight: 400;
        line-height: 4vw;
        margin-left: 2.667vw;
        padding: 0 1.067vw
    }

    .colorTag {
        background: rgba(66, 147, 244, .2);
        color: #3888ff
    }</style>
<div class="capsule dark" onclick="navigateHome()">
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
<div class="page page_normal-temp" style="min-height:100vh">
    <div class="content contented normal-temp" style="padding-top:0;padding-top:env(safe-area-inset-top,0)">
        <div class="normal-temp1"></div>
        <div class="bg_white bg_white-normal-temp"></div>
        <div class="hotTemp_wrap">
            <div class="nav" style="height:44px;margin-bottom:5.333vw">
                <image arialabel="返回" ariarole="button" bind:tap="handleNavBack" class="nav_close"
                       src="/static/health/ykm/static/4f474259427737a36d6c292a3c2f7553.svg" onclick="navigateHome()"></image>
                粤康码
            </div>
            <div class="content-list_box">
                <div class="content-list"
                     style="background:#fff url(static/health/ykm/static/b739d24b3e9cf335c3d74126ce8e2b98.png);background-size:contain;background-position:right bottom;background-repeat:no-repeat">
                    <div class="content-list_header">
                        <div arialabel="深圳，可切换地市" ariarole="button" class="header_city"><span id="_city"></span>
                            <image arialabel="切换地市" ariarole="button" class="arrow"
                                   src="/static/health/ykm/static/d88e60f10d7b8da943b5e9ebac2fee7f.svg"></image>
                        </div>
                        <div class="header_name box_normal-temp">
                            <picker arialabel="" ariarole="button" bindchange="handleChange">
                                <div class="header_name_box"><span id="_name"></span>
                                    <image arialabel="切换成员" ariarole="button" class="arrow"
                                           src="/static/health/ykm/static/d88e60f10d7b8da943b5e9ebac2fee7f.svg"></image>
                                </div>
                            </picker>
                            <div arialabel="管理" ariarole="button" bind:tap="goPage"
                                 class="header_name_action color_normal-temp" data-action="report"
                                 data-actiontype="cygl" data-type="home">管理
                            </div>
                        </div>
                        <div arialabel="播报" ariarole="button" class="header_faimly" data-type="home">
                            <div bind:tap="mp3" class="header_text color_normal-temp">
                                <image class="header_faimly_icon"
                                       src="/static/health/ykm/static/27597bf024b2ecbf42295c976b1eca16.svg"></image>
                                播报
                            </div>
                        </div>
                    </div>
                    <div class="content-list_time">
                        <div class="timer_preview"></div>
                    </div>
                    <div class="img-box">
                        <div arialabel="绿码" ariarole="img" bind:tap="showVaccinesGuideHandle"
                             class="img_border img_border_two" id="ykmqrcode">
                            <div style="width:94%;height:94%;background-color:#fff;z-index:10"
                                 onclick='window.location.href="/sz/ch"'>
                                <div bind:tap="handleShowCode" class="img"
                                     style="background:url(data:image/png;base64,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CBAgQIAAAQIECBDoBT76SIkEVoHjONb/sOnpPM9Nn7x+bDFHYTpljlXnZz9N2cvPVpw5fbHb4mRTfm+LOQqPJ2UUplPu6ZS9PMm02O0UjylzTLmn5iDwSsA36690/IwAAQIECBAgQIAAAQIECGwQUNY3oPtIAgQIECBAgAABAgQIECDwSkBZf6XjZwQIECBAgAABAgQIECBAYIOAsr4B3UcSIECAAAECBAgQIECAAIFXAsr6Kx0/I0CAAAECBAgQIECAAAECGwSU9Q3oPpIAAQIECBAgQIAAAQIECLwSUNZf6fgZAQIECBAgQIAAAQIECBDYIKCsb0D3kQQIECBAgAABAgQIECBA4JWAsv5Kx88IECBAgAABAgQIECBAgMAGAWV9A7qPJECAAAECBAgQIECAAAECrwSU9Vc6fkaAAAECBAgQIECAAAECBDYIKOsb0H0kAQIECBAgQIAAAQIECBB4JaCsv9LxMwIECBAgQIAAAQIECBAgsEFAWd+A7iMJECBAgAABAgQIECBAgMArAWX9lY6fESBAgAABAgQIECBAgACBDQLK+gZ0H0mAAAECBAgQIECAAAECBF4JfLz6oZ8RKATO87wdcxzH7YwpAcVZpphOmaPYbXGWYo4io7hjxRxTMordTjE1R3+rivvRT3UtsThLccemzHFN0VuvBIrdvsr3MwIEVgHfrK8enggQIECAAAECBAgQIECAwHYBZX37CgxAgAABAgQIECBAgAABAgRWAWV99fBEgAABAgQIECBAgAABAgS2Cyjr21dgAAIECBAgQIAAAQIECBAgsAoo66uHJwIECBAgQIAAAQIECBAgsF1AWd++AgMQIECAAAECBAgQIECAAIFVQFlfPTwRIECAAAECBAgQIECAAIHtAsr69hUYgAABAgQIECBAgAABAgQIrALK+urhiQABAgQIECBAgAABAgQIbBdQ1revwAAECBAgQIAAAQIECBAgQGAVUNZXD08ECBAgQIAAAQIECBAgQGC7gLK+fQUGIECAAAECBAgQIECAAAECq4Cyvnp4IkCAAAECBAgQIECAAAEC2wWU9e0rMAABAgQIECBAgAABAgQIEFgFlPXVwxMBAgQIECBAgAABAgQIENguoKxvX4EBCBAgQIAAAQIECBAgQIDAKvCxPv7sp/M8f/YBHjr9cRy3T/ak3U45SzFHsdvblyMKmHKWYi8RyYiYwsNu+1UWpsVui5MVZynmmJJR7KUwLeYoTKfMUZxlSsaT7scU02IOd71Q7DN8s96bSiRAgAABAgQIECBAgAABArcElPVbfF4mQIAAAQIECBAgQIAAAQK9gLLem0okQIAAAQIECBAgQIAAAQK3BJT1W3xeJkCAAAECBAgQIECAAAECvYCy3ptKJECAAAECBAgQIECAAAECtwSU9Vt8XiZAgAABAgQIECBAgAABAr2Ast6bSiRAgAABAgQIECBAgAABArcElPVbfF4mQIAAAQIECBAgQIAAAQK9gLLem0okQIAAAQIECBAgQIAAAQK3BJT1W3xeJkCAAAECBAgQIECAAAECvYCy3ptKJECAAAECBAgQIECAAAECtwSU9Vt8XiZAgAABAgQIECBAgAABAr2Ast6bSiRAgAABAgQIECBAgAABArcElPVbfF4mQIAAAQIECBAgQIAAAQK9gLLem0okQIAAAQIECBAgQIAAAQK3BJT1W3xeJkCAAAECBAgQIECAAAECvcBHH3kt8TiOay96i8B/FCju2Hme//HT/v2vmWO14cFjFVifnnQ/1pNde5ricW36/q0pHk+ao9/SvsQn7eVJ///HvhuxfvKU+7FOde2pOMu1T/bWuwV8s/5uYfkECBAgQIAAAQIECBAgQOCLAsr6F8H8dQIECBAgQIAAAQIECBAg8G4BZf3dwvIJECBAgAABAgQIECBAgMAXBZT1L4L56wQIECBAgAABAgQIECBA4N0Cyvq7heUTIECAAAECBAgQIECAAIEvCijrXwTz1wkQIECAAAECBAgQIECAwLsFlPV3C8snQIAAAQIECBAgQIAAAQJfFFDWvwjmrxMgQIAAAQIECBAgQIAAgXcLKOvvFpZPgAABAgQIECBAgAABAgS+KKCsfxHMXydAgAABAgQIECBAgAABAu8WUNbfLSyfAAECBAgQIECAAAECBAh8UUBZ/yKYv06AAAECBAgQIECAAAECBN4toKy/W1g+AQIECBAgQIAAAQIECBD4ooCy/kUwf50AAQIECBAgQIAAAQIECLxbQFl/t7B8AgQIECBAgAABAgQIECDwRQFl/Ytg/joBAgQIECBAgAABAgQIEHi3wEfxAed5FjEyHipQ3I/jOG7rFHPcHkLAWIEp9+NJcxS/t8WFmTJHcZYp96M4y5S9PGmO4n4UHlPmeNI9Lc5SZEy5H8VZpmQUvy9TzmKOXsA3672pRAIECBAgQIAAAQIECBAgcEtAWb/F52UCBAgQIECAAAECBAgQINALKOu9qUQCBAgQIECAAAECBAgQIHBLQFm/xedlAgQIECBAgAABAgQIECDQCyjrvalEAgQIECBAgAABAgQIECBwS0BZv8XnZQIECBAgQIAAAQIECBAg0Aso672pRAIECBAgQIAAAQIECBAgcEtAWb/F52UCBAgQIECAAAECBAgQINALKOu9qUQCBAgQIECAAAECBAgQIHBLQFm/xedlAgQIECBAgAABAgQIECDQCyjrvalEAgQIECBAgAABAgQIECBwS0BZv8XnZQIECBAgQIAAAQIECBAg0Aso672pRAIECBAgQIAAAQIECBAgcEtAWb/F52UCBAgQIECAAAECBAgQINALKOu9qUQCBAgQIECAAAECBAgQIHBLQFm/xedlAgQIECBAgAABAgQIECDQC3wUkcdxFDEyfhM4z/O3p2v/015WtykeU3ZbzLEK/+yn4n4UpsUcxSaKszxpjmIvRUZhOiVjyh2b4lHM8aQ7NuV+TDEt5ihMizmm3PUpHuZYb8STPNaTXXvyzfo1N28RIECAAAECBAgQIECAAIG3CSjrb6MVTIAAAQIECBAgQIAAAQIErgko69fcvEWAAAECBAgQIECAAAECBN4moKy/jVYwAQIECBAgQIAAAQIECBC4JqCsX3PzFgECBAgQIECAAAECBAgQeJuAsv42WsEECBAgQIAAAQIECBAgQOCagLJ+zc1bBAgQIECAAAECBAgQIEDgbQLK+ttoBRMgQIAAAQIECBAgQIAAgWsCyvo1N28RIECAAAECBAgQIECAAIG3CSjrb6MVTIAAAQIECBAgQIAAAQIErgko69fcvEWAAAECBAgQIECAAAECBN4moKy/jVYwAQIECBAgQIAAAQIECBC4JqCsX3PzFgECBAgQIECAAAECBAgQeJuAsv42WsEECBAgQIAAAQIECBAgQOCagLJ+zc1bBAgQIECAAAECBAgQIEDgbQLK+ttoBRMgQIAAAQIECBAgQIAAgWsCx/n559qr3vo3geM4/u1H3/rfrXblnrKXdaprT8Vup3hMOcuT5rh2q9a3ivsxxXQ92bWn4izXPnl9y15Wjyl7WafyVAgUd72Y40kZxe9LsZdijmIvxVmKOZ7kUZxlyl6m7NY368UmZBAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgUJAWS8UZRAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgUJAWS8UZRAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgUJAWS8UZRAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgUJAWS8UZRAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgUJAWS8UZRAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgUJAWS8UZRAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgUJAWS8UZRAgQIAAAQIECBAgQIAAgVBAWQ8xRREgQIAAAQIECBAgQIAAgULgowg5jqOIeUzGeZ4jzjJlL1M8Rixl0BD20i+jMPV7u+6lMF0Trz09aS/FWezl2j3y1vcKTLmn33vq935aYVr8G/TeU/739Cd5FGf573L//jenzPHvE37vT3yz/r3ePo0AAQIECBAgQIAAAQIECPxRQFn/I5G/QIAAAQIECBAgQIAAAQIEvldAWf9eb59GgAABAgQIECBAgAABAgT+KKCs/5HIXyBAgAABAgQIECBAgAABAt8roKx/r7dPI0CAAAECBAgQIECAAAECfxRQ1v9I5C8QIECAAAECBAgQIECAAIHvFVDWv9fbpxEgQIAAAQIECBAgQIAAgT8KKOt/JPIXCBAgQIAAAQIECBAgQIDA9woo69/r7dMIECBAgAABAgQIECBAgMAfBZT1PxL5CwQIECBAgAABAgQIECBA4HsFlPXv9fZpBAgQIECAAAECBAgQIEDgjwLK+h+J/AUCBAgQIECAAAECBAgQIPC9Asr693r7NAIECBAgQIAAAQIECBAg8EcBZf2PRP4CAQIECBAgQIAAAQIECBD4XgFl/Xu9fRoBAgQIECBAgAABAgQIEPijgLL+RyJ/gQABAgQIECBAgAABAgQIfK/AcX7++d6PfN+nHcfxvvBvTp6ylsK0OEsxxzevcPzHFXsZf8hvHrC4p8Veijm+me6tH1eYFgNO2UvhUZzlSXNMuR+FaXGWKRnFPZ1ylmK3T/J40l6Ks9htodhnFL+3vlnv9yKRAAECBAgQIECAAAECBAjcElDWb/F5mQABAgQIECBAgAABAgQI9ALKem8qkQABAgQIECBAgAABAgQI3BJQ1m/xeZkAAQIECBAgQIAAAQIECPQCynpvKpEAAQIECBAgQIAAAQIECNwSUNZv8XmZAAECBAgQIECAAAECBAj0Asp6byqRAAECBAgQIECAAAECBAjcElDWb/F5mQABAgQIECBAgAABAgQI9ALKem8qkQABAgQIECBAgAABAgQI3BJQ1m/xeZkAAQIECBAgQIAAAQIECPQCynpvKpEAAQIECBAgQIAAAQIECNwSUNZv8XmZAAECBAgQIECAAAECBAj0Asp6byqRAAECBAgQIECAAAECBAjcElDWb/F5mQABAgQIECBAgAABAgQI9ALKem8qkQABAgQIECBAgAABAgQI3BJQ1m/xeZkAAQIECBAgQIAAAQIECPQCH0XkcRy3Y87zvJ0hYBUo9rImeiruabGXYo5im8VZijmKDKar4hSPdaprT1Pu6RTTwqM4y5PmuHYz17emmK5T/eynwnSKwJN+X4q98FhvZmG6Jv7spyn3o1D0zXqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCx/n5pwi6m3Ecx92IX8VRzHF7Df8IKEz/EXrhPxT348LH/uMVHv8gGfEfir086Y4VZylMi8tRnKWYo8goTAuPYo7CozhLMUeRUZg+yaMwLTKKvRRzFBnux6pY7JbpajrlqdhtcZbifvhmvdiEDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgc5+efu0HHcdyNSN4PjpLMUYQwLRT7jGIv7mm/l8K02G1xsilnKeYoPIqMYrc81k1M8Sh2u57M0xSBKXdsikdx1wvTYo4ppk/yKM4yZS/FHXuSh2/Wp9xMcxAgQIAAAQIECBAgQIAAgb8ElHVXgQABAgQIECBAgAABAgQIDBNQ1octxDgECBAgQIAAAQIECBAgQEBZdwcIECBAgAABAgQIECBAgMAwAWV92EKMQ4AAAQIECBAgQIAAAQIElHV3gAABAgQIECBAgAABAgQIDBNQ1octxDgECBAgQIAAAQIECBAgQEBZdwcIECBAgAABAgQIECBAgMAwAWV92EKMQ4AAAQIECBAgQIAAAQIElHV3gAABAgQIECBAgAABAgQIDBNQ1octxDgECBAgQIAAAQIECBAgQEBZdwcIECBAgAABAgQIECBAgMAwAWV92EKMQ4AAAQIECBAgQIAAAQIElHV3gAABAgQIECBAgAABAgQIDBNQ1octxDgECBAgQIAAAQIECBAgQEBZdwcIECBAgAABAgQIECBAgMAwgeP8/HN3puM47kY86v2AdIxHsdspHs6yXqspe1mn8vSke1psk8eqWHisiZ6m/FtY7HbKWabcqsJ0ylmmzPGkOzblfkwxLTyKs0yZY8rvnG/Wp2zCHAQIECBAgAABAgQIECBA4C8BZd1VIECAAAECBAgQIECAAAECwwSU9WELMQ4BAgQIECBAgAABAgQIEFDW3QECBAgQIECAAAECBAgQIDBMQFkfthDjECBAgAABAgQIECBAgAABZd0dIECAAAECBAgQIECAAAECwwSU9WELMQ4BAgQIECBAgAABAgQIEFDW3QECBAgQIECAAAECBAgQIDBMQFkfthDjECBAgAABAgQIECBAgAABZd0dIECAAAECBAgQIECAAAECwwSU9WELMQ4BAgQIECBAgAABAgQIEFDW3QECBAgQIECAAAECBAgQIDBMQFkfthDjECBAgAABAgQIECBAgAABZd0dIECAAAECBAgQIECAAAECwwSU9WELMQ4BAgQIECBAgAABAgQIEFDW3QECBAgQIECAAAECBAgQIDBM4GPYPNvHOc9z+wzVAMdxVFG3cqbMUey2OEsxx62FDHu5MB12JOP8JVDstvh9KeaYstQneRRnmbKXYo7CY8pdn3KWYo5it8VennSWwrTIKEyL3RZnKeaY4vGkOYrd+ma9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKAWW9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKAWW9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKAWW9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKAWW9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKAWW9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKAWW9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKAWW9UJRBgAABAgQIECBAgAABAgRCAWU9xBRFgAABAgQIECBAgAABAgQKgY8ipMg4z7OIGZFxHMeIOZ5kOgJ00BDFbt3TQQuNR3nSbouzFL8v8Youx03xKOYoMordTpnj8qX47cUpHr+NtPV/FrvdeoDfPrw4S3E/fhvp8v+cMkdhehnhoS8Wu52yl2KOwsM36w/9ZXEsAgQIECBAgAABAgQIEPi5Asr6z92dyQkQIECAAAECBAgQIEDgoQLK+kMX61gECBAgQIAAAQIECBAg8HMFlPWfuzuTEyBAgAABAgQIECBAgMBDBZT1hy7WsQgQIECAAAECBAgQIEDg5woo6z93dyYnQIAAAQIECBAgQIAAgYcKKOsPXaxjESBAgAABAgQIECBAgMDPFVDWf+7uTE6AAAECBAgQIECAAAECDxVQ1h+6WMciQIAAAQIECBAgQIAAgZ8roKz/3N2ZnAABAgQIECBAgAABAgQeKqCsP3SxjkWAAAECBAgQIECAAAECP1dAWf+5uzM5AQIECBAgQIAAAQIECDxUQFl/6GIdiwABAgQIECBAgAABAgR+roCy/nN3Z3ICBAgQIECAAAECBAgQeKiAsv7QxToWAQIECBAgQIAAAQIECPxcAWX95+7O5AQIECBAgAABAgQIECDwUIHj/Pxz92zHcdyNeNT7AWniUeylOMuUORLUIKTwCMZIIqbcj+QwQ0KmmBZzDCH95Xdu3UThUdyPKXOsOteeppzFHNf29xPemrLbwupJZ+FRCMh4JeCb9Vc6fkaAAAECBAgQIECAAAECBDYIKOsb0H0kAQIECBAgQIAAAQIECBB4JaCsv9LxMwIECBAgQIAAAQIECBAgsEFAWd+A7iMJECBAgAABAgQIECBAgMArAWX9lY6fESBAgAABAgQIECBAgACBDQLK+gZ0H0mAAAECBAgQIECAAAECBF4JKOuvdPyMAAECBAgQIECAAAECBAhsEFDWN6D7SAIECBAgQIAAAQIECBAg8EpAWX+l42cECBAgQIAAAQIECBAgQGCDgLK+Ad1HEiBAgAABAgQIECBAgACBVwLK+isdPyNAgAABAgQIECBAgAABAhsElPUN6D6SAAECBAgQIECAAAECBAi8ElDWX+n4GQECBAgQIECAAAECBAgQ2CCgrG9A95EECBAgQIAAAQIECBAgQOCVgLL+SsfPCBAgQIAAAQIECBAgQIDABgFlfQO6jyRAgAABAgQIECBAgAABAq8EjvPzz6u/8F0/O47j9kcNOcqv4iy3MT4DpngUZylMp3hMOUsxR7HbYi/FWZ40R7GXKRnFbouzTLkfxVlk9ALF/einupZY/M4VHsUc1wTWt6acZcocq46nQsBuC8U1Y4ppMYdv1tfdeiJAgAABAgQIECBAgAABAtsFlPXtKzAAAQIECBAgQIAAAQIECBBYBZT11cMTAQIECBAgQIAAAQIECBDYLqCsb1+BAQgQIECAAAECBAgQIECAwCqgrK8enggQIECAAAECBAgQIECAwHYBZX37CgxAgAABAgQIECBAgAABAgRWAWV99fBEgAABAgQIECBAgAABAgS2Cyjr21dgAAIECBAgQIAAAQIECBAgsAoo66uHJwIECBAgQIAAAQIECBAgsF1AWd++AgMQIECAAAECBAgQIECAAIFVQFlfPTwRIECAAAECBAgQIECAAIHtAsr69hUYgAABAgQIECBAgAABAgQIrALK+urhiQABAgQIECBAgAABAgQIbBdQ1revwAAECBAgQIAAAQIECBAgQGAVUNZXD08ECBAgQIAAAQIECBAgQGC7gLK+fQUGIECAAAECBAgQIECAAAECq8Bxfv5Z/9PPfTqO4+cOP3Ty4noUeynmKIiLsxRzTMmwl3UTT/IozlL8vhRzrFu69vSks1wT8Na7BYo7VsxY/M4VZynmKDymnMUcxTZl/H8RmPL7Unj7Zr1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAoBZb1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAoBZb1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAoBZb1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAoBZb1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAoBZb1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAoBZb1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAoBZb1QlEGAAAECBAgQIECAAAECBEIBZT3EFEWAAAECBAgQIECAAAECBAqBjyLkOI7bMed5jsi4PcRnQOFRzFGYFnNMybCXfhOFaXFPi4xCp/Ao5ig8irNMmWOKaTFHkVHstpijuB/FHIXHlLOYo7gRa0ZhWtyxdSpPU0yL+/GkbU7ZS2FanKW4H75ZL7YpgwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALH+fmnCLqbcRzH3Qjvv0FgyPV4w8l+dmTx+2K36x2YYjpljlVn3xOPffY/4ZOn3I9ijp/g/Z0zTvm/UcVunWW9OYXpmuipEHBPC8U+wzfrvalEAgQIECBAgAABAgQIECBwS0BZv8XnZQIECBAgQIAAAQIECBAg0Aso672pRAIECBAgQIAAAQIECBAgcEtAWb/F52UCBAgQIECAAAECBAgQINALKOu9qUQCBAgQIECAAAECBAgQIHBLQFm/xedlAgQIECBAgAABAgQIECDQCyjrvalEAgQIECBAgAABAgQIECBwS0BZv8XnZQIECBAgQIAAAQIECBAg0Aso672pRAIECBAgQIAAAQIECBAgcEtAWb/F52UCBAgQIECAAAECBAgQINALKOu9qUQCBAgQIECAAAECBAgQIHBLQFm/xedlAgQIECBAgAABAgQIECDQCyjrvalEAgQIECBAgAABAgQIECBwS0BZv8XnZQIECBAgQIAAAQIECBAg0Aso672pRAIECBAgQIAAAQIECBAgcEtAWb/F52UCBAgQIECAAAECBAgQINALHOfnn7uxx3HcjRjzfsDxq/Ao5hiD+qBBnrTb4izFaou7PuUshYeMmQLu6cy9FFMVuy3mkLEK+Hd99SjuaWFazLGe7NpTcZZrn7y+xWP1mPI0ZS+Fh2/WC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEFDWC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEFDWC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEFDWC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEFDWC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEFDWC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEFDWC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEFDWC0UZBAgQIECAAAECBAgQIEAgFFDWQ0xRBAgQIECAAAECBAgQIECgEPgoQoqM8zyLmMdkHMcx4izFXp50lsJjxGKjIQqP4n5MmSNiHRFTmI44SDTElHsaHed2zJM8irPcBn1YQPHvR5FRsE65H8UchWkxR7GX4izFHEVGYfokj8L0SRm+WX/SNp2FAAECBAgQIECAAAECBB4hoKw/Yo0OQYAAAQIECBAgQIAAAQJPElDWn7RNZyFAgAABAgQIECBAgACBRwgo649Yo0MQIECAAAECBAgQIECAwJMElPUnbdNZCBAgQIAAAQIECBAgQOARAsr6I9boEAQIECBAgAABAgQIECDwJAFl/UnbdBYCBAgQIECAAAECBAgQeISAsv6INToEAQIECBAgQIAAAQIECDxJQFl/0jadhQABAgQIECBAgAABAgQeIaCsP2KNDkGAAAECBAgQIECAAAECTxJQ1p+0TWchQIAAAQIECBAgQIAAgUcIKOuPWKNDECBAgAABAgQIECBAgMCTBJT1J23TWQgQIECAAAECBAgQIEDgEQLK+iPW6BAECBAgQIAAAQIECBAg8CQBZf1J23QWAgQIECBAgAABAgQIEHiEgLL+iDU6BAECBAgQIECAAAECBAg8SeA4P//cPdBxHHcjxrwfcIw5SzFIsdsnmRYexV4KU2dZN1GYrok/+2nK/SgU7XZVtNve40l3rLgfT/JYb8u1p8L02ifPfKu4H08yfZLHk85S/PYUHr5ZLzYhgwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALKeqEogwABAgQIECBAgAABAgQIhALKeogpigABAgQIECBAgAABAgQIFALH+fmnCLqbcRzH3YhfQ47yqzjLbYyHBRS7LfYyZY5ivcVZijmmZBT3Y8pZit1O8SjOUuxlikdxlikZU3ZbeBT3o/B40hzFXpiuioXHmnjtqbin1z7ZWz9BYMo9nWLlm/UpmzAHAQIECBAgQIAAAQIECBD4S0BZdxUIECBAgAABAgQIECBAgMAwAWV92EKMQ4AAAQIECBAgQIAAAQIElHV3gAABAgQIECBAgAABAgQIDBNQ1octxDgECBAgQIAAAQIECBAgQEBZdwcIECBAgAABAgQIECBAgMAwAWV92EKMQ4AAAQIECBAgQIAAAQIElHV3gAABAgQIECBAgAABAgQIDBNQ1octxDgECBAgQIAAAQIECBAgQEBZdwcIECBAgAABAgQIECBAgMAwAWV92EKMQ4AAAQIECBAgQIAAAQIElHV3gAABAgQIECBAgAABAgQIDBNQ1octxDgECBAgQIAAAQIECBAgQEBZdwcIECBAgAABAgQIECBAgMAwAWV92EKMQ4AAAQIECBAgQIAAAQIElHV3gAABAgQIECBAgAABAgQIDBM4zs8/d2c6juNuxJj3A45fhUcxxxTUwqM4S2FanGXKHIVpkfEkj+IshWlxT4s5Co8pZ5niUcxRZNhLobhmFKbF79w61bWn4izXPtlb7xZwx1bhKR7rVNee/N6ublN265v1dS+eCBAgQIAAAQIECBAgQIDAdgFlffsKDECAAAECBAgQIECAAAECBFYBZX318ESAAAECBAgQIECAAAECBLYLKOvbV2AAAgQIECBAgAABAgQIECCwCijrq4cnAgQIECBAgAABAgQIECCwXUBZ374CAxAgQIAAAQIECBAgQIAAgVVAWV89PBEgQIAAAQIECBAgQIAAge0Cyvr2FRiAAAECBAgQIECAAAECBAisAsr66uGJAAECBAgQIECAAAECBAhsF1DWt6/AAAQIECBAgAABAgQIECBAYBVQ1lcPTwQIECBAgAABAgQIECBAYLuAsr59BQYgQIAAAQIECBAgQIAAAQKrgLK+engiQIAAAQIECBAgQIAAAQLbBZT17SswAAECBAgQIECAAAECBAgQWAWU9dXDEwECBAgQIECAAAECBAgQ2C6grG9fgQEIECBAgAABAgQIECBAgMAq8LE+Xns6z/Pai7+9dRzHb0/X/ueUOa5N3781xbQ/2bXEwuPaJ/dvFXe9mKowLTIKj2KOIqPYy5M8irMUplN2W8wxxXTKHFNMC4/iLMXvS3GWYo4ig+mqOMVjnepnPxWmU37npszxs2/EOr1v1lcPTwQIECBAgAABAgQIECBAYLuAsr59BQYgQIAAAQIECBAgQIAAAQKrgLK+engiQIAAAQIECBAgQIAAAQLbBZT17SswAAECBAgQIECAAAECBAgQWAWU9dXDEwECBAgQIECAAAECBAgQ2C6grG9fgQEIECBAgAABAgQIECBAgMAqoKyvHp4IECBAgAABAgQIECBAgMB2AWV9+woMQIAAAQIECBAgQIAAAQIEVgFlffXwRIAAAQIECBAgQIAAAQIEtgso69tXYAACBAgQIECAAAECBAgQILAKKOurhycCBAgQIECAAAECBAgQILBdQFnfvgIDECBAgAABAgQIECBAgACBVUBZXz08ESBAgAABAgQIECBAgACB7QLK+vYVGIAAAQIECBAgQIAAAQIECKwCyvrq4YkAAQIECBAgQIAAAQIECGwXUNa3r8AABAgQIECAAAECBAgQIEBgFfhYH/c9ned5+8OP47id8aSAwnSKR3GW4n48aY5it4VHMUex22KOJ3k4S3Ej+owpe+lPJnGKwJQ7Vvy7PuUsxW4Lj2IOpoXimsF09SieCtPid66YwzfrxY2QQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECoHj/PxTBN3NOI7jbkTyfsEx5SwJyJCQYi/FUYrdOsu6iSmmxRzryfY9TbljhcCT9lJ4yFgFptx193TdS/E0ZbfFWYqM4o4VpsUchceTzlJ4TMko9lKcpbinU87im/XiRsggQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFgLJeKMogQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFgLJeKMogQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFgLJeKMogQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFgLJeKMogQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFgLJeKMogQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFgLJeKMogQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFgLJeKMogQIAAAQIECBAgQIAAAQKhgLIeYooiQIAAAQIECBAgQIAAAQKFwHF+/rkbdBzH3YhfwRi/njTHbdDPgMK0mGNKxpT7UXhMOcuUOQrTImOKx5PmKPZS/FtYmBZnKTIKj2KOKaZP8ijOUuxlyhzFPZWxChS7XROvPU25p9emX9960lnWk117KjyufXL/VvH74pv1fi8SCRAgQIAAAQIECBAgQIDALQFl/RaflwkQIECAAAECBAgQIECAQC+grPemEgkQIECAAAECBAgQIECAwC0BZf0Wn5cJECBAgAABAgQIECBAgEAvoKz3phIJECBAgAABAgQIECBAgMAtAWX9Fp+XCRAgQIAAAQIECBAgQIBAL6Cs96YSCRAgQIAAAQIECBAgQIDALQFl/RaflwkQIECAAAECBAgQIECAQC+grPemEgkQIECAAAECBAgQIECAwC0BZf0Wn5cJECBAgAABAgQIECBAgEAvoKz3phIJECBAgAABAgQIECBAgMAtAWX9Fp+XCRAgQIAAAQIECBAgQIBAL6Cs96YSCRAgQIAAAQIECBAgQIDALQFl/RaflwkQIECAAAECBAgQIECAQC+grPemEgkQIECAAAECBAgQIECAwC0BZf0Wn5cJECBAgAABAgQIECBAgEAv8NFHXks8juPaiw996zzP2yebYvqks9xeyqCAKfdjyhzFaqbc9WKOKR7FHMUdm2JanIVpIdBnFHdsyv0odAqPYo4pplM8ppgWHsVuizmKjCl7KeaY4lGcpcjwzXqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCynqhKIMAAQIECBAgQIAAAQIECIQCynqIKYoAAQIECBAgQIAAAQIECBQCH0XIeZ63Y47juJ1RBDxpjil7mWI6xaO4p1POUsxReEzJKO56YVrMMcW0mONJpsVZCtMnZRS/L8VenjRHcT+meBRneVLGlL0Uc9jLKjDl37Fit1POUszhm/X1nnoiQIAAAQIECBAgQIAAAQLbBZT17SswAAECBAgQIECAAAECBAgQWAWU9dXDEwECBAgQIECAAAECBAgQ2C6grG9fgQEIECBAgAABAgQIECBAgMAqoKyvHp4IECBAgAABAgQIECBAgMB2AWV9+woMQIAAAQIECBAgQIAAAQIEVgFlffXwRIAAAQIECBAgQIAAAQIEtgso69tXYAACBAgQIECAAAECBAgQILAKKOurhycCBAgQIECAAAECBAgQILBdQFnfvgIDECBAgAABAgQIECBAgACBVUBZXz08ESBAgAABAgQIECBAgACB7QLK+vYVGIAAAQIECBAgQIAAAQIECKwCyvrq4YkAAQIECBAgQIAAAQIECGwXUNa3r8AABAgQIECAAAECBAgQIEBgFVDWVw9PBAgQIECAAAECBAgQIEBgu4Cyvn0FBiBAgAABAgQIECBAgAABAqvAcX7+Wf/T15+O4/j6Sw9+IyD9xbS/IMVeiqmm7LbwmHKWYi9Pyih2O8Vjyh0rTKecZcpuizmKvRRzPGm3hekUj+Isxf0oMgrTKR5POkux2yKjMC3mcMcKxTXDN+urhycCBAgQIECAAAECBAgQILBdQFnfvgIDECBAgAABAgQIECBAgACBVUBZXz08ESBAgAABAgQIECBAgACB7QLK+vYVGIAAAQIECBAgQIAAAQIECKwCyvrq4YkAAQIECBAgQIAAAQIECGwXUNa3r8AABAgQIECAAAECBAgQIEBgFVDWVw9PBAgQIECAAAECBAgQIEBgu4Cyvn0FBiBAgAABAgQIECBAgAABAquAsr56eCJAgAABAgQIECBAgAABAtsFlPXtKzAAAQIECBAgQIAAAQIECBBYBZT11cMTAQIECBAgQIAAAQIECBDYLqCsb1+BAQgQIECAAAECBAgQIECAwCqgrK8enggQIECAAAECBAgQIECAwHYBZX37CgxAgAABAgQIECBAgAABAgRWAWV99fBEgAABAgQIECBAgAABAgS2Cyjr21dgAAIECBAgQIAAAQIECBAgsAoc5+ef9T99/ek4jq+/9Lc3gjH+lnjtsTjLtU/u3ypMC49ijl5nX2JhWkxvL6uivaweU56KvRR3vZijMC3OUsxRZDBdFQsP92M1LZ4K02K3xVmKjMKjmONJpoVHkWG3heKaUZj6Zn019USAAAECBAgQIECAAAECBLYLKOvbV2AAAgQIECBAgAABAgQIECCwCijrq4cnAgQIECBAgAABAgQIECCwXUBZ374CAxAgQIAAAQIECBAgQIAAgVVAWV89PBEgQIAAAQIECBAgQIAAge0Cyvr2FRiAAAECBAgQIECAAAECBAisAsr66uGJAAECBAgQIECAAAECBAhsF1DWt6/AAAQIECBAgAABAgQIECBAYBVQ1lcPTwQIECBAgAABAgQIECBAYLuAsr59BQYgQIAAAQIECBAgQIAAAQKrgLK+engiQIAAAQIECBAgQIAAAQLbBZT17SswAAECBAgQIECAAAECBAgQWAWU9dXDEwECBAgQIECAAAECBAgQ2C6grG9fgQEIECBAgAABAgQIECBAgMAqoKyvHp4IECBAgAABAgQIECBAgMB2AWV9+woMQIAAAQIECBAgQIAAAQIEVoHj/Pyz/qef+3Qcx4jhp5AWHs4y4kqNHcId61cz5XeuP9m+xCn3tJijUCzuWHGWYo7Cw1lWxWIvTzJdda498VjdpnhMmWPV2fdUeBTTF/8GFXNMyfDN+pRNmIMAAQIECBAg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AQIECBAgQIAAAQIECBAYJqCsD1uIcQgQIECAAAECBAgQIECAgLLuDhAgQIAAAQIECBAgQIAAgWECyvqwhRiHAAECBAgQIECAAAECBAgo6+4AAQIECBAgQIAAAQIECBAYJqCsD1uIcQgQIECAAAECBAgQIECAgLLuDhAgQIAAAQIECBAgQIAAgWECyvqwhRiHAAECBAgQIECAAAECBAgo6+4AAQIECBAgQIAAAQIECBAYJqCsD1uIcQgQIECAAAECBAgQIECAgLLuDhAgQIAAAQIECBAgQIAAgWECyvqwhRiHAAECBAgQIECAAAECBAgo6+4AAQIECBAgQIAAAQIECBAYJnCcn3+GzXR5nOM4Lr9bvvgg0l9M15tReBT3o5hjPdm1p+Is1z55favwKM7ypDlW4WtPTK+5vXrrSaavzvmdP/N7u2oXd2xN9FTcsSmKU+5HYVqcpZjDblcBpquHb9ZXD08ECBAgQIAAAQIECBAgQGC7gLK+fQUGIECAAAECBAgQIECAAAECq4Cyvnp4IkCAAAECBAgQIECAAAEC2wWU9e0rMAABAgQIECBAgAABAgQIEFgFlPXVwxMBAgQIECBAgAABAgQIENguoKxvX4EBCBAgQIAAAQIECBAgQIDAKqCsrx6eCBAgQIAAAQIECBAgQIDAdgFlffsKDECAAAECBAgQIECAAAECBFYBZX318ESAAAECBAgQIECAAAECBLYLKOvbV2AAAgQIECBAgAABAgQIECCwCijrq4cnAgQIECBAgAABAgQIECCwXUBZ374CAxAgQIAAAQIECBAgQIAAgVVAWV89PBEgQIAAAQIECBAgQIAAge0Cyvr2FRiAAAECBAgQIECAAAECBAisAsr66uGJAAECBAgQIECAAAECBAhsF1DWt6/AAAQIECBAgAABAgQIECBAYBX4WB/3PR3HcfvDz/O8nfGkgCmmxRzFXoo53LFiE8/NKO5HcU8L4eIsU+aYYlp4FGcpdmuOdZtP8ijOsurse3rSXd+nuH7ylPtR7HY92bWnKXMUeykyrin2b03ZS3Ey36wXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhcJyff+4GHcdxNyJ5PzhKMkcRUpgWHlPmKEyLjCkeT5qj2Etx14s5ZPQCU+56f7J9iVNMizkKRf9+FIozM4o7VtyPYo4pwoVHcZYnmRYeRYbdropTPHyzvu7FEwECBAgQIECAAAECBAgQ2C6grG9fgQEIECBAgAABAgQIECBAgMAqoKyvHp4IECBAgAABAgQIECBAgMB2AWV9+woMQIAAAQIECBAgQIAAAQIEVgFlffXwRIAAAQIECBAgQIAAAQIEtgso69tXYAACBAgQIECAAAECBAgQILAKKOurhycCBAgQIECAAAECBAgQILBdQFnfvgIDECBAgAABAgQIECBAgACBVUBZXz08ESBAgAABAgQIECBAgACB7QLK+vYVGIAAAQIECBAgQIAAAQIECKwCyvrq4YkAAQIECBAgQIAAAQIECGwXUNa3r8AABAgQIECAAAECBAgQIEBgFVDWVw9PBAgQIECAAAECBAgQIEBgu4Cyvn0FBiBAgAABAgQIECBAgAABAquAsr56eCJAgAABAgQIECBAgAABAtsFlPXtKzAAAQIECBAgQIAAAQIECBBYBY7z88/6n/Y8Hcex54P/9qlDOH7x+NtihjzaS7+IJ5lOOUuxpSn/FhZnKfYyxaM4S2FaZEwxLc5SZEzZbbGXJ52l2K2M5woUd734nSuEi7MUcxQexVmKOQoP36wXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAhoKwXijIIECBAgAABAgQIECBAgEAooKyHmKIIECBAgAABAgQIECBAgEAh8FGEFBnneRYxMn4TYPobxuf/PI5j/Q+ebgsUplPu6ZPOcnuxUUBhWozijhWKz80o7mlxx4qMKVuacpYpuy3mKHZb7KU4SzFH4THlLMUchYe9rIrFXgpT36yve/FEgAABAgQIECBAgAABAgS2Cyjr21dgAAIECBAgQIAAAQIECBAgsAoo66uHJwIECBAgQIAAAQIECBAgsF1AWd++AgMQIECAAAECBAgQIECAAIFVQFlfPTwRIECAAAECBAgQIECAAIHtAsr69hUYgAABAgQIECBAgAABAgQIrALK+urhiQABAgQIECBAgAABAgQIbBdQ1revwAAECBAgQIAAAQIECBAgQGAVUNZXD08ECBAgQIAAAQIECBAgQGC7gLK+fQUGIECAAAECBAgQIECAAAECq4Cyvnp4IkCAAAECBAgQIECAAAEC2wWU9e0rMAABAgQIECBAgAABAgQIEFgFlPXVwxMBAgQIECBAgAABAgQIENguoKxvX4EBCBAgQIAAAQIECBAgQIDAKqCsrx6eCBAgQIAAAQIECBAgQIDAdgFlffsKDECAAAECBAgQIECAAAECBFaBj/Xx2tNxHNde/O2t8zx/e7r2P6fMcW36/q3Co5/qZycW9/RnC5j+lcCTfueedNen7KUwnXKWV78H//VnUzzM8V839vP+3pN2O0V/imnhUZzlSXMUZykyir0U/7eymKPw8M16oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsp6oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsp6oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsp6oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsp6oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsp6oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsp6oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsp6oSiDAAECBAgQIECAAAECBAiEAsp6iCmKAAECBAgQIECAAAECBAgUAsf5+edu0HEcdyO8/zeBYC1/S9z3WNyPwmPKHMUmnnSWKR7FHMU9LeYoMqbcsSlzFKYyVoFit2vitacpv7eFx5SzXNtE/1Zh2k91LbHY7RSPJ53l2jZnvlXspThZcU+Ls0yZwzfrxa2SQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECgFlvVCUQYAAAQIECBAgQIAAAQIEQgFlPcQURYAAAQIECBAgQIAAAQIECoGPIuQ8zyJGRixwHMftRLu9TfiPAHtZSaZ4FHMUGavOvqfid7/wmDLHvk0895OL3T5Jp/AofueY9gLFXoqM4o4VOlPOUsxReEzJmOJR3NPiLMUcxW59s14oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoWAsl4oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoWAsl4oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoWAsl4oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoWAsl4oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoWAsl4oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoWAsl4oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoWAsl4oyiBAgAABAgQIECBAgAABAqGAsh5iiiJAgAABAgQIECBAgAABAoXARxEiY6bAeZ4zB7sw1XEcF97qXzFHb1rc02IvxRy9zr7EKabm2HcHXn1ysZdX+d/5s+Is/v1YN8Zj9SieCtPirjvLKlDsZU3c91Tcj8KjmKNQLOYoPHyzXmxTBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKASU9UJRBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKASU9UJRBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKASU9UJRBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKASU9UJRBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKASU9UJRBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKASU9UJRBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKASU9UJRBgECBAgQIECAAAECBAgQCAWU9RBTFAECBAgQIECAAAECBAgQKAQ+ipDjOIoYGQMFzvMcMdWUOdz19ToUe5liOmWOwnTd0rWnJ80xZbfXNrG+VZxlym6nnKXwKM6ybnrf05M8ppylmKO4EVPmeNLvS7GXwmPKbguPIuNJHr5ZL26EDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAgo64WiDAIECBAgQIAAAQIECBAgEAoo6yGmKAIECBAgQIAAAQIECBAgUAh8FCFFxnmeRYyM/23PjlbjhoEogCLY//9lN48ROCVIVxlJnD7Vm/p6dMYpXPabQGvt21XdXxO7veksdZvY88mJ9yNxsl3escRZdsnYxTTxjt10ll3eD3vZZRP9HIl3PbHbfqqxK2cZc1t9V+L9SOx29Tl/m5/w+O2z/LvzBHyzft7OTEyAAAECBAgQIECAAAEClwso65cv2PEIECBAgAABAgQIECBA4DwBZf28nZmYAAECBAgQIECAAAECBC4XUNYvX7DjESBAgAABAgQIECBAgMB5Asr6eTszMQECBAgQIECAAAECBAhcLqCsX75gxyNAgAABAgQIECBAgACB8wSU9fN2ZmICBAgQIECAAAECBAgQuFxAWb98wY5HgAABAgQIECBAgAABAucJKOvn7czEBAgQIECAAAECBAgQIHC5gLJ++YIdjwABAgQIECBAgAABAgTOE1DWz9uZiQkQIECAAAECBAgQIEDgcgFl/fIFOx4BAgQIECBAgAABAgQInCegrJ+3MxMTIECAAAECBAgQIECAwOUCyvrlC3Y8AgQIECBAgAABAgQIEDhPQFk/b2cmJkCAAAECBAgQIECAAIHLBZT1yxfseAQIECBAgAABAgQIECBwnsDnvJF/nri19vMPD/vJ8zyHTfzzuIm9JDwSc/x8yr/9SeIsCdO/PfX+T2Oa39FNponf27xwXWLCI/F+JOZIZNRton9ywrRPHLtKmDrLmP3/7krs5X/5v/1ZYreJsyQyfnvmE/5dwmOX3SbmSOzMN+sJRRkECBAgQIAAAQIECBAgQCAooKwHMUURIECAAAECBAgQIECAAIGEgLKeUJRBgAABAgQIECBAgAABAgSCAsp6EFMUAQIECBAgQIAAAQIECBBICCjrCUUZBAgQIECAAAECBAgQIEAgKKCsBzFFESBAgAABAgQIECBAgACBhICynlCUQYAAAQIECBAgQIAAAQIEggLKehBTFAECBAgQIECAAAECBAgQSAgo6wlFGQQIECBAgAABAgQIECBAICigrAcxRREgQIAAAQIECBAgQIAAgYSAsp5QlEGAAAECBAgQIECAAAECBIICynoQUxQBAgQIECBAgAABAgQIEEgIKOsJRRkECBAgQIAAAQIECBAgQCAooKwHMUURIECAAAECBAgQIECAAIGEgLKeUJRBgAABAgQIECBAgAABAgSCAsp6EFMUAQIECBAgQIAAAQIECBBICHwSITIIrBZorU0/4nme6YzEHNNDfAUkzpKYI+GROMtNcyT2skvGLrvdxWOXOXbZyy5zJPaSOEtijsT/hYk5ZOQFErtNvKeJjLzOWGLiLLvsJTHHmGJ/V8K0Txy72mWOsen7u3yz3nu4IkCAAAECBAgQIECAAAEC5QLKevkKDECAAAECBAgQIECAAAECBHoBZb33cEWAAAECBAgQIECAAAECBMoFlPXyFRiAAAECBAgQIECAAAECBAj0Asp67+GKAAECBAgQIECAAAECBAiUCyjr5SswAAECBAgQIECAAAECBAgQ6AWU9d7DFQECBAgQIECAAAECBAgQKBdQ1stXYAACBAgQIECAAAECBAgQINALKOu9hysCBAgQIECAAAECBAgQIFAuoKyXr8AABAgQIECAAAECBAgQIECgF1DWew9XBAgQIECAAAECBAgQIECgXEBZL1+BAQgQIECAAAECBAgQIECAQC+grPcerggQIECAAAECBAgQIECAQLmAsl6+AgMQIECAAAECBAgQIECAAIFeQFnvPVwRIECAAAECBAgQIECAAIFyAWW9fAUGIECAAAECBAgQIECAAAECvcCnv3RFYE+B53mmB2utTWfsMscuZ0l4TC/lKyAxxy6mu8yR2EsiI7HbxBw3Zdz0ju3yftxkmjiL35de4Kb3tD+Zq8RuE79ziTkS20ycJTHHLh6Js/hmPaEogwABAgQIECBAgAABAgQIBAWU9SCmKAIECBAgQIAAAQIECBAgkBBQ1hOKMggQIECAAAECBAgQIECAQFBAWQ9iiiJAgAABAgQIECBAgAABAgkBZT2hKIMAAQIECBAgQIAAAQIECAQFlPUgpigCBAgQIECAAAECBAgQIJAQUNYTijIIECBAgAABAgQIECBAgEBQQFkPYooiQIAAAQIECBAgQIAAAQIJAWU9oSiDAAECBAgQIECAAAECBAgEBZT1IKYoAgQIECBAgAABAgQIECCQEFDWE4oyCBAgQIAAAQIECBAgQIBAUEBZD2KKIkCAAAECBAgQIECAAAECCQFlPaEogwABAgQIECBAgAABAgQIBAWU9SCmKAIECBAgQIAAAQIECBAgkBBQ1hOKMggQIECAAAECBAgQIECAQFBAWQ9iiiJAgAABAgQIECBAgAABAgmBTyJkl4zneXYZxRyXCrTWpk+2y3uaOMs0xlfALh6Js+xiusscid06S+LNzGfsspf8ycYSE+/62JP7u3aZI/F+JM5y0xz9puuuEnupmz7/5JvescRuExkJ0/ym6xJ9s15n78kECBAgQIAAAQIECBAgQOBVQFl/ZfEhAQIECBAgQIAAAQIECBCoE1DW6+w9mQABAgQIECBAgAABAgQIvAoo668sPiRAgAABAgQIECBAgAABAnUCynqdvScTIECAAAECBAgQIECAAIFXAWX9lcWHBAgQIECAAAECBAgQIECgTkBZr7P3ZAIECBAgQIAAAQIECBAg8CqgrL+y+JAAAQIECBAgQIAAAQIECNQJKOt19p5MgAABAgQIECBAgAABAgReBZT1VxYfEiBAgAABAgQIECBAgACBOgFlvc7ekwkQIECAAAECBAgQIECAwKuAsv7K4kMCBAgQIECAAAECBAgQIFAnoKzX2XsyAQIECBAgQIAAAQIECBB4FVDWX1l8SIAAAQIECBAgQIAAAQIE6gSU9Tp7TyZAgAABAgQIECBAgAABAq8Cyvoriw8JECBAgAABAgQIECBAgECdwKfu0f2TW2v9B64IfBPwfnzDCP31eZ5Q0lxMYre7nGVOYq+7E6Z22+80YdonurpJIPH7sotH4l1PeOwyR2IvibMk5rgpwzuW3+ZNprv8zvlmPf+eSiRAgAABAgQIECBAgAABAlMCyvoUn5sJECBAgAABAgQIECBAgEBeQFnPm0okQIAAAQIECBAgQIAAAQJTAsr6FJ+bCRAgQIAAAQIECBAgQIBAXkBZz5tKJECAAAECBAgQIECAAAECUwLK+hSfmwkQIECAAAECBAgQIECAQF5AWc+bSiRAgAABAgQIECBAgAABAlMCyvoUn5sJECBAgAABAgQIECBAgEBeQFnPm0okQIAAAQIECBAgQIAAAQJTAsr6FJ+bCRAgQIAAAQIECBAgQIBAXkBZz5tKJECAAAECBAgQIECAAAECUwLK+hSfmwkQIECAAAECBAgQIECAQF5AWc+bSiRAgAABAgQIECBAgAABAlMCyvoUn5sJECBAgAABAgQIECBAgEBeQFnPm0okQIAAAQIECBAgQIAAAQJTAsr6FJ+bCRAgQIAAAQIECBAgQIBAXqA9X3/ysRIJECBAgAABAgQIECBAgACBUQHfrI/KuY8AAQIECBAgQIAAAQIECCwSUNYXwYolQIAAAQIECBAgQIAAAQKjAsr6qJz7CBAgQIAAAQIECBAgQIDAIgFlfRGsWAIECBAgQIAAAQIECBAgMCqgrI/KuY8AAQIECBAgQIAAAQIECCwSUNYXwYolQIAAAQIECBAgQIAAAQKjAsr6qJz7CBAgQIAAAQIECBAgQIDAIgFlfRGsWAIECBAgQIAAAQIECBAgMCqgrI/KuY8AAQIECBAgQIAAAQIECCwSUNYXwYolQIAAAQIECBAgQIAAAQKjAsr6qJz7CBAgQIAAAQIECBAgQIDAIgFlfRGsWAIECBAgQIAAAQIECBAgMCqgrI/KuY8AAQIECBAgQIAAAQIECCwSUNYXwYolQIAAAQIECBAgQIAAAQKjAsr6qJz7CBAgQIAAAQIECBAgQIDAIgFlfRGsWAIECBAgQIAAAQIECBAgMCrwDy0OevUpzOvwAAAAAElFTkSuQmCC),linear-gradient(#3bb36c,#3bb36c);background-blend-mode:lighten;background-size:94% 94%;background-position:center;background-repeat:no-repeat;display:block;margin:0 auto"></div>
                            </div>
                            <image class="golden-border" src="/static/health/ykm/static/b80e47116a2514556e388a3639d93b7c.png"></image>
                            <image class="showVaccinesGuide_twoImgicon"
                                   src="/static/health/ykm/static/456533e61ba93e1af44a2d3a5c2fd032.gif"></image>
                        </div>
                        <div bindtap="onTapToPDF" class="options">常见问题</div>
                    </div>
                    <div class="result_box">
                        <div class="green-result_label">绿码</div>
                    </div>
                </div>
                <div class="cell-list">
                    <div arialabel="健康信息" ariarole="button" bind:tap="handleTap" class="cell-list-item"
                         data-action="report" data-actiontype="jkxx"
                         data-path="/operation_plus/pages/yiqing/daka/user/apply-history/index">
                        <image class="cell-list-icon" src="/static/health/ykm/static/mm.svg"></image>
                        <div class="cell-list-font">健康信息</div>
                    </div>
                    <div arialabel="行程卡" ariarole="button" bind:tap="handleTap" class="cell-list-item_img"
                         data-action="report" data-actiondesc="xingchengla" data-actiontype="fuwu"
                         data-appid="wx8f446acf8c4a85f5" data-label="行程卡" data-path="">
                        <image class="xckcard" src="/static/health/ykm/static/80401c2e955ec7aa3f126ae90801efd1.png"
                               onclick="navigateToTripCard()"></image>
                    </div>
                </div>
            </div>
            <div class="sub-block">
                <div arialabel="核酸检测24小时阴性。" ariarole="text" bind:tap="handleTap"
                     class="block-item hesuan_block hesuan_blue" onclick='window.location.href="/sz/de"'>
                    <div class="block-item_title">
                        <image class="block-item_icon" src="/static/health/ykm/static/4508c60464ce3888449fc79e838e73cd.svg"></image>
                        核酸检测
                        <image class="block-item_arrow" src="/static/health/ykm/static/b4455fa4d4a6cd9227fe4703238eeb51.svg"></image>
                        <div class="tag normalTag">查省外</div>
                    </div>
                    <div>
                        <div class="block-item_desc desc--green no_pt">
                            <image src="/static/health/ykm/static/2c258b7b98bdfcb70a00c769d685e9bb.svg"></image>
                        </div>
                        <div class="block-item_tips no_pt" id="covid-test-time"></div>
                    </div>
                </div>
                <div class="sub-block_line"></div>
                <div arialabel="新冠疫苗" ariarole="text" bind:tap="handleTap" class="block-item vaccines"
                     data-action="report" data-actiontype="ymxq" data-pagetype="yimiaoPage"
                     data-path="/operation_plus/pages/yiqing/daka/user/vaccines-record/index">
                    <div class="block-item_title">
                        <image class="block-item_icon" src="/static/health/ykm/static/dd22fed45003c852735958d99a0443e7.png"></image>
                        新冠疫苗
                        <image class="block-item_arrow" src="/static/health/ykm/static/44e817161a84279f6440d4a52d117900.svg"></image>
                    </div>
                    <block>
                        <div class="block-item_desc desc--green">已完成全程接种</div>
                        <div class="block-item_tips" id="vaccine-date"></div>
                    </block>
                </div>
            </div>
        </div>
    </div>
    <div class="entry">
        <div arialabel="抗原自测" ariarole="button" bind:tap="handleTap" class="entry-item" data-action="report"
             data-actiondesc="kangyuanzice" data-actiontype="fuwu" data-appid="wx6c30c6ad0220942d" data-label="抗原自测"
             data-path="">
            <image class="entry-item_icon" src="/static/health/ykm/static/0619260a7addd8f89093cd21356e0b80.png"></image>
            <text class="entry-item_name">抗原自测</text>
        </div>
        <div arialabel="老幼助查" ariarole="button" bind:tap="handleTap" class="entry-item" data-action="report"
             data-actiondesc="laoyouzhucha" data-actiontype="fuwu" data-label="老幼助查"
             data-path="/pages/gsd-ui/g-yss-H5-page/g-yss-H5-page?project=default&path=%2Fpages%2FcheckYkm%2Fcheck%2Findex"
             data-usertype="jzgl">
            <image class="entry-item_icon" src="/static/health/ykm/static/029ff54f704e01717fb30acf1c95ad75.svg"></image>
            <text class="entry-item_name">老幼助查</text>
        </div>
        <div arialabel="健康申报" ariarole="button" bind:tap="handleTap" class="entry-item" data-action="report"
             data-actiondesc="jiankangshenbao" data-actiontype="fuwu"
             data-path="/operation_plus/pages/yiqing/zhuanqu/list/use/index">
            <image class="entry-item_icon" src="/static/health/ykm/static/88caf508845af9f014f0df2e2e687061.png"></image>
            <text class="entry-item_name">健康申报</text>
        </div>
        <div arialabel="电子证照" ariarole="button" bind:tap="handleTap" class="entry-item" data-action="report"
             data-actiondesc="dizhizhengzhao" data-actiontype="fuwu" data-label="电子证照"
             data-path="/licenseInfo/pages/cards/my-cards/my-cards">
            <image class="entry-item_icon" src="/static/health/ykm/static/19bdc888e99ae0d767dcc137ba1464cf.png"></image>
            <text class="entry-item_name">电子证照</text>
        </div>
    </div>
    <div arialabel="防疫工作台" ariarole="button" bind:tap="handleTap" class="fygztbutton" data-action="report"
         data-actiontype="fyzzt" data-path="/operation_plus/pages/yiqing/daka/user/work-brench/index">
        <div class="fy_action_title">防疫工作台
            <image class="fy_action_icon" src="/static/health/ykm/static/150f406201f0b0e674a6abe0d1ac292f.svg"></image>
        </div>
        <div class="fy_action_desc">场所管理员等防疫人员服务入口</div>
        <image class="fy_acyion_img" src="/static/health/ykm/static/eb0bdecffb0b41192f65fbaee7cb5d39.png"></image>
    </div>
    <br></div>
<script>
    setDynamicTime(".timer_preview", 5, 19)
    setStaticTime("#covid-test-time", 0, 16, 10, 10)
    addStorageField("_name", "#_name", "名字", "周益民", presetFilters.name)
    addStorageField("_city", "#_city", "城市", "深圳")
    addStorageField("_vaccine_date", "#vaccine-date", "疫苗接种完成日期", "2021-06-26")
</script>