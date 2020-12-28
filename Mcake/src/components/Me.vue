<template>
  <div class="me-box">
      <div class="me-wrap">
          <div class="me-top">
              <img class="me-icon" src="../assets/img/login.png" alt="">
              <span>鱼摆摆</span>
          </div>
          <div class="me-title">
              <span class="me-span1">{{week}}</span>
              <span class="me-span2">{{time}}</span>
          </div>
          <div class="me-list">
              <p><router-link to="">个人资料</router-link></p>
              <p><router-link to="">我的订单</router-link></p>
              <p><router-link to="">会员等级</router-link></p>
              <p><router-link to="">余额</router-link></p>
              <p><router-link to="">优惠券</router-link></p>
              <p><router-link to="">现金卡</router-link></p>
              <p><router-link to="">现金卡</router-link></p>
              <p><router-link to="">积分</router-link></p>
          </div>
      </div>
      <div class="me-btns">
          <button class="login-out" @click="out">退出登录</button>
          <button class="login-change">切换账号</button>
      </div>
  </div>
</template>

<script>
export default {
    data () {
        return {
            week:"今天是星期" + "日一二三四五六".charAt(new Date().getDay()), 
            time:new Date().toLocaleDateString()
        }
    },
    methods : {
        out () {
            // 退出登录清除用户缓存
            window.localStorage.removeItem('userName');
            // 清除缓存后让界面刷新
            this.$router.go(0);
        },
    },
    mounted () {
        
    }
}
</script>

<style>
*{margin: 0;padding: 0;}
.me-box{
    width: 380px;
    height: 490px;
    background: #fff;
    position: fixed;
    right: 0;
    top: 120px;
    z-index: 999;
    border-top: 1px solid #e8e8e8;
}
.me-wrap{
    height: 372px;
    padding: 45px 42px 0 60px;
    margin-bottom: 3px;
}
.me-btns{
   width: 100%;
   height: 70px; 
   margin-top: 47px;
}
.login-btns button {
    border: none;
    outline: none;
    cursor: pointer;
}
.login-out {
    width: 192px;
    height: 70px;
    float: left;
    background: #333;
    font-size: 13px;
    color: #fff;
    border: none;
}
.login-change {
    width: 188px;
    height: 70px;
    float: left;
    background: #ffe32a;
    font-size: 13px;
    color: #000;
    border: none;
}
.me-top{
    width: 278px;
    height: 32px;
    margin-bottom: 12px;
    padding-bottom: 5px;
    border-bottom: 1px solid #b3b3b3;
}
.me-title{
   width: 278px;
   height: 38px;
   margin-bottom: 5px; 
}
.me-list{
    margin-bottom: 24px;
    text-align: left;
}
.me-icon{
    float: left;
    border: none;
}
.me-top span {
    font-size: 14px;
    float: right;
    color: #000;
}
.me-span1{
   float: left;
   font-size: 12px;
   color: #000; 
}
.me-span2{
    float: right;
    font-size: 12px;
    color: #000;
}
.me-list p {
    margin-bottom: 8px;
}
.me-list a {
    font-size: 18px;
    color: #9f9f9f;
    text-decoration: none;
}
</style>