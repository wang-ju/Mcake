<template>
  <div id="login2">
      <div class="login-box" style="display: block;">
        <div class="login-wrap">
            <div class="login-wrap01">
                <div class="login-top">
                    <img src="./img/login.png" alt="">
                    <span>未登录</span>
                </div>
                <div class="login-title">
                    <span class="login-span login-span01 hot"><router-link to="" href="">账号密码登录</router-link></span>
                    <span class="login-span login-span02"><router-link to="" href="">手机验证码登录</router-link></span>
                </div>
                <div class="login-input02" style="display: block;">
                    <input maxlength="11" class="username" type="text" name="mobile" placeholder="手机号">
                    <div class="userimage">
                        <input maxlength="6" class="userimage" type="text" name="vcode" placeholder="图片验证码">
                        <img class="img-zym" src="http://openapi.mcake.com/api/7ba4aed89d17966a/?type=login&amp;t=1601993845298">
                    </div>
                    <input type="hidden" name="t" value="1601993845298">
                    <input type="hidden" name="sign" value="">
                    <div class="useryzm">
                        <input maxlength="4" class="phoneword" type="text" name="mobileVcode" placeholder="手机验证码">
                        <span class="span-yzm">点击发送验证码</span>
                        <span class="span-yzm1">60 s</span>
                    </div>
                </div>
                <div class="login-forget">
                    <span>忘记密码</span>
                </div>
                <div class="login-title2">
                    <span>使用合作网站账号登录</span>
                </div>
                <div class="login-other">
                    <router-link to="" href="http://openapi.mcake.com/unionlogin/alipay/send"><img class="zhifu" src="./img/zhi.png"
                            title="支付宝账号登录"></router-link>
                    <router-link to="" href="http://openapi.mcake.com/unionlogin/weibo/send"><img src="./img/wei.png"
                            title="微博账号登录"></router-link>
                </div>
            </div>
        </div>
        <div class="login-btns">
            <button class="register-now">立即注册</button>
            <button class="login-now" data-mode="1">登录</button>
        </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
*{
    margin: 0;padding: 0;
}

.login-wrap {
    padding: 20px 40px;
}

.login-box {
    width: 380px;
    /* height: 482px; */
    /* background: #fff; */
    background: pink;
    position: fixed;
    right: 0;
    top: 120px;
    z-index: 4;
    display: none;
    border-top: 1px solid #e8e8e8;
}

.login-top {
    width: 278px;
    height: 32px;
    margin-bottom: 24px;
}

body {
    line-height: 24px;
    font: 14px Helvetica Neue,Helvetica,PingFang SC,Tahoma,Arial,sans-serif;
}

.login-top img {
    float: left;
}

.login-top span {
    font-size: 14px;
    float: right;
    color: #606060;
}

.login-title {
    width: 278px;
    height: 38px;
    margin-bottom: 12px;
}

.login-title .hot {
    color: #000;
    font-weight: bold;
}

.login-title .login-span01 {
    float: left;
    margin-right: 24px;
}

.login-title span {
    font-size: 18px;
    color: #666;
    cursor: pointer;
}

.login-title .login-span02 {
    float: right;
}

.login-span a{
    text-decoration: none;
    color: #000;
}

.login-input02 {
    display: none;
    margin-bottom: 4px;
}

.login-input02 .username .userimage {
    margin-bottom: 8px;
}

.login-input02 .userimage {
    margin-bottom: 8px;
}

.login-input02 .useryzm {
    margin-bottom: 8px;
}

.login-input02 input {
    width: 280px;
    height: 38px;
    line-height: 38px;
    text-indent: 2px;
    font-size: 14px;
    color: #666;
    border-bottom: 1px solid #e8e8e8;
    border-top: none;
    border-right: none;
    border-left: none;
    outline: none;
}

.userimage, .useryzm {
    position: relative;
}

.img-zym {
    position: absolute;
    right: -2px;
    top: -2px;
    width: 150px;
    cursor: pointer;
}

.span-yzm {
    width: 150px;
    height: 38px;
    background: #ffe32a;
    font-size: 14px;
    color: #000;
    text-align: center;
    line-height: 38px;
    position: absolute;
    right: -2px;
    top: -2px;
    cursor: pointer;
}



.login-forget span {
    cursor: pointer;
}

.login-title2 {
    width: 278px;
    height: 38px;
    font-size: 14px;
    line-height: 38px;
    color: #909090;
    text-align: center;
    margin-bottom: 5px;
}

.login-title2 span{
    text-align: center;
}

.login-other {
    width: 278px;
    height: 54px;
    font-size: 14px;
    text-align: center;
    margin-bottom: 30px;
}

a {
    color: #333;
    text-decoration: none;
}

.login-other img {
    cursor: pointer;
}

.zhifu {
    margin-right: 14px;
}

.login-btns {
    width: 100%;
    height: 70px;
}

.login-btns button {
    border: none;
    outline: none;
    cursor: pointer;
}

.register-now {
    width: 192px;
    height: 70px;
    float: left;
    background: #333;
    font-size: 13px;
    color: #fff;
}

.login-now {
    width: 188px;
    height: 70px;
    float: left;
    background: #ffe32a;
    font-size: 13px;
    color: #000;
}
</style>