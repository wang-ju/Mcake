<template>
  <div id="cart">
      <div class="cart-content">
        <div class="mycart-box">
          <div class="cart-title">
            <img src="../assets/img/mycart.png" alt="">
            <div class="change-box">
              <p>
                <span class="span01">赠券</span>
                <span class="span02">已满足条件,订单完成可获赠优惠券</span>
                <router-link to="" class="a a2">已参加</router-link>
              </p>
            </div>
          </div>
          <div class="cart-top">
            <span class="first">商品信息</span>
            <span>规格</span>
            <span>数量</span>
            <span>单价</span>
            <span class="last">操作</span>
          </div>
          <div class="cart-list">
            <div class="new-item"  v-for="(c,i) in cart" :key="i">
              <div class="cart-detail master clear">
                <p class="my-p">
                  <span class="span01">换购</span>
                  <span class="span02">以满足换购条件,可换购优惠商品</span>
                  <router-link to="" class="a2">去换购</router-link>
                </p>
                <div class="cart-icon" > 
                  <button class="btn"></button>
                </div>
                <div class="cart-img">
                  <router-link to="">
                    <img :src="`${url + c.cake_img_small}`" alt="">
                  </router-link>
                </div>
                <div class="cart-name">
                  <p class="p1">
                    <router-link to="">{{c.title}}</router-link>
                  </p>
                  <p class="p2">{{c.e_title}}</p>
                  <p class="p3">餐具:标配餐具(免费)10份</p>
                  <div class="change-good"></div>
                </div>
                <div class="cart-kind">
                  <div class="pond">
                    <p>{{c.spec}}</p>
                  </div>
                  <div class="pond-pink"></div>
                </div>
                <div class="cart-num">
                  <i class="dec" @click="miuns">-</i>
                  <input class="my-num" :value="n">
                  <i class="add" @click="add">+</i>
                </div>
                <div class="cart-money">
                  <p>¥{{c.price.toFixed(2)}}
                    <i class="i-money"></i>
                  </p>
                </div>
                <div class="cart-operate">
                  <span class="del"></span>
                </div>
              </div>
            </div>
          </div>
          <div class="recommendForYou">
            <accessory></accessory>
          </div>
        </div>
        <div class="cart-pay">
          <div class="pay-detail clear">
            <div class="pay-icon">
              <button class="all"></button>
              <span>全选</span>
            </div>
            <div class="pay-info">
              <p class="p1">已选择
                <i class="choose-num">0</i>件商品
              </p>
              <p class="p2">共计
                <i class="total-num">1</i>件商品
              </p>
              <p class="p3">配送范围内满100元包邮</p>
            </div>
            <div class="pay-txt">
              <p>合计:</p>
            </div>
            <div class="pay-money">
              <p class="p1">
                <i>¥</i>
                <em class="cart-price">0.00</em>
              </p>
            </div>
            <div class="pay-btn">
              <router-link to="">
                <button class="pay-again">继续挑选</button>
              </router-link>
                <button class="pay-buy">结算</button>
            </div>
          </div>
        </div>
      </div>
  </div>
</template>

<script>
import Accessory from '../components/Accessory'
export default {
  components : {
    Accessory
  },
  data () {
    return {
      cart:[],
      n:1, //开局,数量为1
    }
  },
  methods : {
    getCart(){
      let cid = this.$store.state.cartProduct;
      for(let i=0;i<cid.length;i++){
        console.log(cid[i])
        this.axios.get('/cake/cart',{params:{
            id:cid[i]
          }
        }).then(res => {
          // 把后台获取到的结果添加到cart数组里面
          // console.log(res.data[0])
          this.cart.push(res.data[0])
          // console.log(this.cart)
        })
      }
    },
    add () {
      this.n++
    },
    miuns () {
      if(this.n>1){
        this.n--
      }
    }
  },
  computd : {
  },
  mounted () {
    console.log(this.$store.state.cartProduct);
    this.getCart()
  }
}
</script>

<style>
*{margin: 0;padding: 0;}
.cart-content {
    width: 100%;
    padding-bottom: 50px;
    background: #f8f8f8;
    border-top: 1px solid #e8e8e8;
}
.mycart-box {
    width: 1200px;
    padding-top: 70px;
    margin: 0 auto 26px;
}
.cart-pay {
    width: 1200px;
    height: 288px;
    margin: 0 auto;
    background: #fff;
    position: relative;
}
.cart-title {
    margin-bottom: 58px;
}
.cart-top {
    height: 44px;
    line-height: 44px;
    background: #fff;
    margin-bottom: 12px;
}
.recommendForYou {
    width: 1200px;
    margin: 0 auto;
}
.cart-title img {
    width: 240px;
    margin-bottom: 32px;
    border: none;
    vertical-align: middle;
}
.cart-title .change-box {
    margin-bottom: 12px;
}
.change-box p {
    margin-bottom: 6px;
}
.change-box .span01 {
    width: 48px;
    height: 20px;
    display: inline-block;
    border-radius: 20px;
    background: #e91820;
    color: #fff;
    font-size: 14px;
    text-align: center;
    line-height: 20px;
    margin-right: 24px;
}
.change-box .span02 {
    color: #4a4a4a;
    font-size: 14px;
    margin-right: 28px;
}
.change-box .a {
    cursor: inherit;
    width: 120px;
    text-align: right;
    color: #e91820;
    font-size: 14px;
    text-decoration: none;
}
.cart-top .first {
    margin-left: 135px;
    margin-right: 340px;
}
.cart-top span {
    color: #000;
    font-size: 15px;
    margin-right: 128px;
}
.cart-top .last {
    margin-right: 0px;
}
.cart-detail {
    position: relative;
    background: #fff;
    padding-top: 36px;
    padding-bottom: 18px;
    border-bottom: 1px solid #e8e8e8;
}
.my-p {
    width: 390px;
    margin-left: 40px;
    margin-bottom: 10px;
}
.my-p .span01 {
    width: 48px;
    height: 20px;
    display: inline-block;
    border-radius: 20px;
    background: #e91820;
    color: #fff;
    font-size: 14px;
    text-align: center;
    line-height: 20px;
    margin-right: 24px;
}
.my-p .span02 {
    color: #4a4a4a;
    font-size: 14px;
}
.my-p .a2 {
    cursor: pointer;
    padding: 2px 5px;
    float: right;
    color: #e91820;
    font-size: 12px;
    border-radius: 15px;
    border: 1px solid #e91820;
    text-decoration: none;
}
.cart-detail div {
    float: left;
}
.cart-icon {
    padding: 85px 20px 0 30px;
    width: 20px;
}
.btn {
    cursor: pointer;
    display: inline-block;
    width: 24px;
    height: 24px;
}
.cart-img {
    margin-right: 12px;
    margin-left: 16px;
}
a {
    color: #333;
    text-decoration: none;
    cursor: pointer;
}
.cart-detail .cart-img img {
    width: 135px;
    height: 135px;
    margin-top: 36px;
}
.cart-detail .cart-name {
    padding-top: 38px;
    margin-right: 30px;
    width: 220px;
}
.cart-name .p1 {
    font-weight: bold;
    font-size: 16px;
    color: #000;
    margin-bottom: 2px;
}
.cart-name .p2 {
    font-size: 13px;
    margin-bottom: 20px;
    min-width: 138px;
    height: 20px;
}
.cart-name p {
    font-size: 14px;
    color: #5d5d5d;
}
.cart-name .p3 {
    font-size: 13px;
    margin-bottom: 32px;
}
.change-good {
    z-index: 4;
    width: 300px;
    height: 130px;
    overflow-y: auto;
    background: #eee;
    position: absolute;
    left: 239px;
    bottom: -116px;
    display: none;
}
.cart-detail .cart-kind {
    width: 150px;
    padding: 70px 0px 0px 21px;
    margin-right: 40px;
    text-align: center;
    position: relative;
}
.cart-kind .pond {
    padding-top: 12px;
    min-width: 100px;
    text-align: center;
    cursor: pointer;
    background: url(../assets/img/icon18.png) no-repeat right center;
    padding-right: 0px;
}
.cart-kind p {
    width: 146px;
    margin-left: 0px;
    overflow: hidden;
    text-overflow: ellipsis;
    height: 22px;
}
.cart-kind .pond-pick {
    width: 150px;
    padding: 6px 0;
    position: absolute;
    text-align: center;
    top: 40px;
    border-radius: 5px;
    background: #efefef;
    display: none;
    z-index: 2;
}
.cart-detail .cart-num {
    width: 160px;
    padding: 77px 0 0 20px;
    margin-right: 10px;
}
.cart-num .dec {
    float: left;
    display: block;
    width: 30px;
    height: 30px;
    text-align: center;
    line-height: 38px;
    font-size: 0;
    color: #000;
    font-weight: bold;
    user-select: none;
    -ms-user-select: none;
    cursor: pointer;
    background: url(../assets/img/dec.png) no-repeat center;
}
i, em {
    font-style: normal;
}
.my-num {
    border: none;
    float: left;
    font-size: 14px;
    color: #000;
    font-weight: bold;
    margin-top: 6px;
    margin-left: 8px;
    margin-right: 8px;
    width: 20px;
    text-align: center;
}
.cart-num .add {
    float: left;
    display: block;
    width: 30px;
    height: 30px;
    text-align: center;
    line-height: 38px;
    font-size: 0;
    color: #000;
    font-weight: bold;
    user-select: none;
    -ms-user-select: none;
    cursor: pointer;
    background: url(../assets/img/add.png) no-repeat center;
}
.cart-detail .cart-money {
    margin-right: 12px;
    padding: 85px 0 0 14px;
    right: 238px;
    min-width: 130px;
    text-align: center;
    position: absolute;
}
.cart-money p {
    font-size: 16px;
    font-weight: bold;
    color: #000;
    margin-right: 45px;
}
.cart-detail .cart-operate {
    height: 100px;
    text-align: right;
    padding: 79px 58px 0 0;
    right: 142px;
    position: absolute;
}
.cart-operate .del {
    display: inline-block;
    width: 24px;
    height: 24px;
    background: url(../assets/img/icon41.png) no-repeat center;
    cursor: pointer;
}
.pay-icon {
    float: left;
    padding: 40px 25px 0 25px;
    margin-right: 118px;
}
.pay-icon span {
    font-size: 14px;
}
.all {
    cursor: pointer;
    float: left;
    margin-right: 14px;
    width: 24px;
    height: 24px;
}
.pay-info {
    float: left;
    height: 272px;
    padding-top: 38px;
    margin-right: 410px;
}
.pay-info .p1 {
    font-weight: bold;
    color: #000;
    margin-bottom: 2px;
}
.pay-info p {
    font-size: 14px;
    color: #5d5d5d;
}
.pay-info .p2 {
    margin-bottom: 136px;
}
.pay-txt {
    float: left;
    width: 150px;
    padding: 40px 0 0 0px;
    margin-right: 42px;
    font-size: 15px;
    color: #5d5d5d;
}
.pay-money {
    float: left;
    width: 168px;
    padding: 36px 0 0 0px;
}
.pay-money .p1 {
    font-size: 26px;
    font-weight: bold;
    color: #000;
    margin-left: 30px;
}
.pay-money p {
    font-size: 14px;
    color: #5d5d5d;
    margin-bottom: 2px;
}
.pay-money .p1 i {
    font-size: 22px;
}
.pay-btn {
    width: 320px;
    height: 50px;
    position: absolute;
    right: 32px;
    bottom: 32px;
}
.pay-btn button {
    cursor: pointer;
    border: none;
    outline: none;
    font-size: 15px;
    color: #000;
    font-weight: bold;
    border-radius: 25px;
}
.pay-buy {
    width: 150px;
    height: 44px;
    background-color: yellow;
    margin-right: 6px;
}
.cart-detail .cart-operate {
    position: absolute;
    right: 104px;
    text-align: center;
    /* padding: 70px 0 0 24px; */
}
.cart-operate .del {
    display: inline-block;
    width: 24px;
    height: 24px;
    background: url(../assets/img/icon41.png) no-repeat center;
    cursor: pointer;
}
.pay-again {
    width: 150px;
    height: 44px;
    margin-right: 6px;
}

</style>