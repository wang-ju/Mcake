<template>
  <div id="login1">
    <div class="login-box" style="display: block">
      <div class="login-wrap">
        <div class="login-wrap01">
          <div class="login-top">
            <img src="../assets/img/login.png" alt="" />
            <span>未登录</span>
          </div>
          <div class="login-title">
            <span class="login-span login-span01 hot"
              ><router-link to="" href="">账号密码登录</router-link></span>
            <span class="login-span login-span02"
              ><router-link to="" href="">手机验证码登录</router-link></span>
          </div>
          <div class="login-input01" style="display: block">
            <input
              maxlength="30"
              class="username"
              type="text"
              name="username"
              placeholder="请输入用户名"
              v-model="userName"
            />
            <input
              maxlength="30"
              class="password"
              type="password"
              name="password"
              placeholder="请输入密码"
              v-model="password"
            />
          </div>
          <div class="login-forget">
            <span>
              <router-link to="">忘记密码</router-link>
            </span>
          </div>
          <div class="login-title2">
            <span>使用合作网站账号登录</span>
          </div>
          <div class="login-other">
            <router-link to="http://openapi.mcake.com/unionlogin/alipay/send"
              ><img class="zhifu" src="../assets/img/zhi.png" title="支付宝账号登录"
            /></router-link>
            <router-link to="http://openapi.mcake.com/unionlogin/weibo/send"
              ><img src="../assets/img/wei.png" title="微博账号登录"
            /></router-link>
          </div>
        </div>
      </div>
      <div class="login-btns">
        <!-- <router-link to="/res"> -->
          <button class="register-now" @click="isreg = true">立即注册</button>
          <res v-show="isreg" @canclereg="isreg = false"></res>
        <!-- </router-link> -->
        <button class="login-now" data-mode="1" @click="login">登录</button>
      </div>
    </div>
  </div>
</template>

<script>
import Res from '../components/Res'

export default {
  data() {
    return {
      userName: "",
      password: "",
      isreg:false
    };
  },
  methods: {
    login() {
      if (this.userName) {
        // let data = "userName=" + this.userName + "&password=" + this.password;
        let data = this.qs.stringify({userName:this.userName,password:this.password})
        this.axios.post("/user/login", data).then((result) => {
          console.log(result.data);
          if (result.data) {
            this.$root.userName = this.userName;
            window.localStorage.setItem("userName", this.userName);
            console.log(this.$root);
            console.log(this.$router);
            this.$emit("setdisplay");
            // this.$router.push("/");
          } else {
            this.userName = "用户名错误哦";
          }
        });
      } else {
        alert("用户名错误");
      }
      if (this.password) {
        // this.$router.push("/");
      } else {
        this.password = "密码错误哦";
      }
    }
  },
  components:{
     Res
  }
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
}

.login-wrap {
  padding: 20px 40px;
}

.login-box {
  width: 380px;
  height: 482px;
  background: #fff;
  /* background: pink; */
  position: fixed;
  right: 0;
  top: 120px;
  z-index: 999;
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
  font: 14px Helvetica Neue, Helvetica, PingFang SC, Tahoma, Arial, sans-serif;
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

.login-span a {
  text-decoration: none;
  color: #000;
}

.login-input01 {
  margin-bottom: 4px;
}

.login-input01 .username {
  margin-bottom: 8px;
}

.login-input01 input {
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

.login-forget {
  width: 278px;
  height: 38px;
  line-height: 38px;
  font-size: 13px;
  text-align: right;
  margin-bottom: 10px;
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

.login-title2 span {
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
  margin-top: 2px;
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