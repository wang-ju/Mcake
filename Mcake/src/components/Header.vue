<template>
  <div id="header">
    <div class="header-content clear">
      <div class="header-left">
        <div class="logo b-r">
          <router-link to="/">
            <img src="../assets/img/logo.png" alt />
          </router-link>
        </div>
        <div class="location b-r">
          <router-link to="/">
            <span class="location-a">
              <img class="location-b" src="../assets/img/icon05.png" alt="定位" />
              <span class="now-city" id="city">成都市</span>
            </span>
          </router-link>
        </div>
        <div class="product b-r" @click="product">
          <img class="head-icon" src="../assets/img/icon01.png" alt="定位" />
          <span class="head-span" >所有产品</span>
          <i class="i-line"></i>
        </div>
        <allProduct v-if="allPro"></allProduct>
        <div class="home b-r">
          <router-link to="/">
            <span class="location-a">
              <img class="location-b" src="../assets/img/home.png" alt="定位" />
              <span class="now-city">首页</span>
            </span>
          </router-link>
        </div>
        <div class="cakes b-r">
          <router-link to="/">
            <span class="location-a">
              <img class="location-b" src="../assets/img/1.png" alt="定位" />
              <span class="now-city">蛋糕</span>
            </span>
          </router-link>
        </div>
        <div class="smalls b-r">
          <router-link to="/">
            <span class="location-a">
              <img class="location-b" src="../assets/img/2.png" alt="定位" />
              <span class="now-city">小食</span>
            </span>
          </router-link>
        </div>
        <div class="acts b-r">
          <router-link to="/">
            <span class="location-a">
              <img class="location-b" src="../assets/img/3.png" alt="定位" />
              <span class="now-city">最新活动</span>
            </span>
          </router-link>
        </div>
        <div class="bds b-r">
          <router-link to="/">
            <span class="location-a">
              <img class="location-b" src="../assets/img/4.png" alt="定位" />
              <span class="now-city">银行活动</span>
            </span>
          </router-link>
        </div>
        <div class="member b-r">
          <router-link to="/">
            <span class="location-a">
              <img class="location-b" src="../assets/img/5.png" alt="定位" />
              <span class="now-city">会员中心</span>
            </span>
          </router-link>
        </div>
      </div>
      <div class="header-right">
        <div class="login b-l">
          <router-link to="">
          <img src="../assets/img/login.png" alt="登录" />
          <span class="head-span" v-if="!islogin" @click="logins">注册 | 登录</span>
          <span class="head-span" v-if="islogin" @click="me">我的</span>
          </router-link>
          <login1 v-if="span" @setdisplay="logined"></login1>
          <me v-if="my"></me>
        </div>
        <div class="mycar b-l">
          <router-link to="/cart">
          <img class="bag1" src="../assets/img/bag1.png" alt="购物车" />
          <span class="head-span">购物车</span>
          </router-link>
        </div>
        <div class="activity b-l">
          <img class="icon02" src="../assets/img/icon02.png" alt="更多" />
          <span class="head-span">更多</span>
        </div>
      </div>
    </div>
  </div>

</template>

<script>

import Login1 from '../components/Login1'
import AllProduct from '../components/AllProduct'
import Me from '../components/Me'

// let nowCity = new BMap.LocalCity();
// nowCity.get((result)=>{
//       // console.log(result);
//       document.getElementById('city').innerText = result.name;
//     });
//     // 获取Geolocation对象
//     let local =new BMap.Geolocation();
//     // 对当前用户当前的位置进行定位
//     local.getCurrentPosition((result)=>{
//       console.log(result);
//     })

export default {
    data(){
      return{
        allPro:false,
        my:false,
        span:false,
        islogin: Boolean(window.localStorage.getItem('userName'))
      }
    },
    methods:{
      product(){
        this.allPro = !this.allPro;
      },
      me(){
        this.my = !this.my;
      },
      logins(){
        this.span = !this.span;
      },
      logined(){
        this.span = false;
        this.islogin = true;
      }
    },
    created(){
      // console.log(Boolean(window.localStorage.getItem('userName')))
    },
    components:{
      Login1,AllProduct,Me
    },
};
</script>

<style scoped>
*{
    margin: 0;padding: 0;
}
/* #header{
  position:fixed;
  z-index: 666;
} */
div a{
  text-decoration: none;
}
/* header */
.header-content{
    position: relative;
}
.header-left{
    float: left;
    height: 120px;
}
.logo{
    width: 260px;
    height: 100px;
    padding-top: 10px;
    float: left;
    cursor: pointer;
    text-align: center;
    /* display: inline-block; */
}
.b-r{
    border-right: 1px solid #e8e8e8;   
}
.b-l{
    border-left: 1px solid #e8e8e8;
}
.location{
    width: 90px;
    height: 82px;
    padding-top: 38px;
    float: left;
    text-align: center;
    position: relative;
    /* display: inline-block; */
}
.product{
    width: 90px;
    height: 80px;
    padding-top: 40px;
    float: left;
    text-align: center;
    /* display: inline-block; */
    position: relative;
    color: #8c8c8c;
}
.home{
    width: 90px;
    height: 90px;
    padding-top: 30px;
    float: left;
    text-align: center;
    /* display: inline-block; */
    position: relative;
    color: #8c8c8c;
}
.cakes{
    width: 90px;
    height: 90px;
    padding-top: 30px;
    float: left;
    text-align: center;
    /* display: inline-block; */
    position: relative;
    color: #8c8c8c;
}
.smalls{
    width: 90px;
    height: 90px;
    padding-top: 30px;
    float: left;
    text-align: center;
    /* display: inline-block; */
    position: relative;
    color: #8c8c8c;
}
.acts{
    width: 90px;
    height: 90px;
    padding-top: 30px;
    float: left;
    text-align: center;
    /* display: inline-block; */
    position: relative;
    color: #8c8c8c;
}
.bds{
    width: 90px;
    height: 90px;
    padding-top: 30px;
    float: left;
    text-align: center;
    /* display: inline-block; */
    position: relative;
    color: #8c8c8c;
}
.member{
    width: 90px;
    height: 90px;
    padding-top: 30px;
    float: left;
    text-align: center;
    /* display: inline-block; */
    position: relative;
    color: #8c8c8c;
}
.header-right{
    float: right;
    height: 120px;
    position: relative;
}
.login{
    width: 90px;
    height: 80px;
    padding-top: 40px;
    float: left;
    text-align: center;
    cursor: pointer;
    /* display: inline-block; */
}
.mycar{
    width: 90px;
    height: 80px;
    padding-top: 41px;
    float: left;
    text-align: center;
    cursor: pointer;
    /* display: inline-block; */
    position: relative;
    margin-right: 128px;
}
.activity{
    width: 128px;
    height: 120px;
    text-align: center;
    background: #fff;
    z-index: 4;
    position: absolute;
    right: 0;
    top: 0;
}
.location-a{
    cursor: pointer;
    display: inline-block;
    width: 50px;
    height: 50px;
    font-size: 12px;
    color: #8c8c8c;
    cursor: pointer;
}
.location-b{
    margin-bottom: 12px;
}
.now-city{
    width: 50px;
    display: inline-block;
    text-align: center;
}
.head-icon{
    cursor: pointer;
    margin-bottom: 15px;
}
.head-span{
    display: block;
    text-align: center;
    font-size: 12px;
    cursor: pointer;
    color: #8c8c8c;
}
.login img{
    margin-bottom: 6px;
}
.bag1{
    margin-bottom: 4px;
    width: 18px;
    height: 20px;
}
.icon02{
    margin: 44px 0 9px 0;
    cursor: pointer;
}
</style>


