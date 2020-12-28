<template>
  <div id="res">
    <div class="login-box" style="display: block">
      <div class="login-wrap">
        <div class="register">
          <h3>账号注册</h3>
          <div class="login-input03">
            <input
              maxlength="11"
              class="username-2"
              type="text"
              name="mobile"
              placeholder="手机号码"
              v-model="userName"
              @blur="verify"
            />
            <!-- <div class="userimage-1">
              <input
                maxlength="6"
                class="userimage-2"
                type="text"
                name="vcode"
                placeholder="图片验证码"
              />
              <img
                class="img-zym-2"
                src="http://openapi.mcake.com/api/7ba4aed89d17966a/?type=register&amp;t=1601994996468"
              />
            </div> -->
            <!-- <div class="useryzm-2">
              <input
                maxlength="4"
                class="phoneword-2"
                type="text"
                name="mobileVcode"
                placeholder="手机验证码"
              />
              <span class="span-yzm-2">点击发送验证码</span>
              <span class="span-yzm1-2">60 s</span>
            </div> -->
            <input
              maxlength="20"
              class="password-2 password-check2"
              type="password"
              name="password-2"
              placeholder="密码（6~18数字）"
              v-model="password"
              @blur="isPwd"
            />
            <input
              maxlength="20"
              class="password-22"
              type="password"
              name="password-22"
              placeholder="确认密码"
              v-model="passwords"
            />
            <p class="p1"><router-link to="/login" class="a1">已有账号，立即登录</router-link></p>
            <p class="p2">
              <button class="pick"></button>
              <router-link to="" class="mcake-rule">同意 《MCAKE购物协议》</router-link>
            </p>
          </div>
        </div>
      </div>
      <div class="login-btns-3" style="display: block">
        <!-- <router-link to="/login"> -->
          <button class="register-now-3" @click="$emit('canclereg')">取消注册</button>
        <!-- </router-link> -->
        <button class="login-now-3" @click="res">注册完成</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    data(){
      return{
        userName:'',
        password:'',
        passwords:''
      }
    },
    methods:{
      verify() {
        let reg = /^1[3-9]\d{9}$/;
        // let data = "userName=" + this.userName
        // let data = this.qs.stringify({userName:this.userName})
        if (reg.test(this.userName)) {
          // this.axios.post("/user/hasuser", data).then(res => {
          //   console.log(res.data);
          //   if (res.data !== 0) {
          //     this.msg = "手机号已经注册!"
          //   } else {
          //     this.msg = ""
          //   }
          // });
          console.log("手机号格式正确")
          } else {
           this.userName = "手机号格式错误!"
        }
    },
    isPwd(){
      let reg = /^[0-9]{6,18}$/;
      if(reg.test(this.password)){
        console.log("密码正确")
      }else{
        // this.password = "密码不能为空";
        alert("密码错误")
      }
    },
    res(){
        if(this.userName && this.password && this.passwords){
          if(this.password != this.passwords){
            alert('两次密码不一致')
            // return
          }
        // let data =  "uname=" + this.userName + "&upwd=" + this.password;
        let data = this.qs.stringify({uname:this.userName,upwd:this.password})
        this.axios.post("/user/res", data).then(result => {
          console.log(result.data);
          // this.result = result.data;
          if(result.data){
            this.$emit('canclereg');
            // this.$router.push('/');
          }
        });
      }else{
        // return
      }
    },
  }
};
</script>


<style>
* {
  margin: 0;
  padding: 0;
}

.login-box {
  width: 380px;
  background: #fff;
  /* height: 482px; */
  /* background: pink; */
  position: fixed;
  right: 0;
  top: 120px;
  z-index: 999;
  display: none;
  border-top: 1px solid #e8e8e8;
}

.login-wrap {
  padding: 20px 40px;
}

.register h3 {
  font-size: 24px;
  line-height: 48px;
  margin-bottom: 10px;
  font-weight: 400;
}

.login-input03 input {
  width: 280px;
  height: 38px;
  line-height: 38px;
  text-indent: 2px;
  font-size: 13px;
  color: #666;
  border-bottom: 1px solid #e8e8e8;
  border-top: none;
  border-right: none;
  border-left: none;
  outline: none;
  margin-bottom: 6px;
  padding-bottom: 4px;
}

.userimage-1,
.useryzm-1 {
  position: relative;
}

.img-zym-1,
.img-zym-2 {
  position: absolute;
  right: -2px;
  top: -2px;
  width: 150px;
  cursor: pointer;
}

.span-yzm-1,
.span-yzm-2 {
  width: 150px;
  height: 38px;
  background: #ffe32a;
  font-size: 13px;
  color: #000;
  text-align: center;
  line-height: 38px;
  position: absolute;
  right: -2px;
  top: -2px;
  cursor: pointer;
  margin-top: 180px;
  margin-right: 40px;
}

.span-yzm1-1,
.span-yzm1-2 {
  display: none;
  width: 150px;
  height: 38px;
  background: #ffe32a;
  font-size: 13px;
  color: #000;
  text-align: center;
  line-height: 38px;
  position: absolute;
  right: -2px;
  top: -2px;
  cursor: pointer;
}

.register .a1 {
  text-align: right;
  cursor: pointer;
  text-decoration: none;
  color: black;
  font-size: 14px;
}

.register .p1 {
  text-align: right;
}

.register .p2 {
  text-align: center;
  font-size: 20px;
  line-height: 26px;
  margin-top: 28px;
}

.register .p2 a {
  cursor: pointer;
  color: #333;
  text-decoration: none;
}

.pick {
  width: 24px;
  height: 24px;
  border-radius: 50%;
  border: 1px solid #ffe32a;
}

.login-btns-3 {
  width: 100%;
  height: 70px;
  display: none;
  margin-top: 88px;
}

.login-btns-3 button {
  border: none;
  outline: none;
  cursor: pointer;
}

.register-now-3 {
  width: 192px;
  height: 70px;
  float: left;
  background: #333;
  font-size: 13px;
  color: #fff;
}

.login-now-3 {
  width: 188px;
  height: 70px;
  float: left;
  background: #ffe32a;
  font-size: 13px;
  color: #000;
}
</style>