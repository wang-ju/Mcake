<template>
  <div class="all-product" v-show="show">
      <div class="all-left" >
          <div class="all-title">
              <router-link to="">
                  <span class="all-span01">所有蛋糕<i class="num">34</i></span>
                  <span class="all-span02">Products</span>
              </router-link>
          </div>
          <div class="left_menu_sub">
              <h2 class="title clear" @click="open1">
                  <b>口味筛选</b>
                  <i class="arcoss"></i>
              </h2>
              <div class="all-list01" v-show="isShow1">
                  <!-- 到时候v-for循环出来 -->
                  <p v-for="(t,i) of taste" :key="i" >
                      <router-link to="">
                          <span class="span-name">{{t.title}}</span>
                      </router-link>
                      <span class="span-num">{{t.count}}</span>
                  </p>
              </div>
          </div>
          <div class="left_menu_sub">
              <h2 class="title clear" @click="open2">
                  <b>场景筛选</b>
                  <i class="arcoss"></i>
              </h2>
              <div class="all-list01" v-show="isShow2">
                  <!-- 到时候v-for循环出来 -->
                  <p v-for="(s,i) of scene" :key="i">
                      <router-link to="">
                          <span class="span-name">{{s.title}}</span>
                      </router-link>
                      <span class="span-num">{{s.count}}</span>
                  </p>
              </div>
          </div>
          <div class="all-title">
              <router-link to="">
                  <span class="all-span01">所有小食
                      <i class="num">17</i>
                  </span>
                  <span class="all-span02">Snacks</span>
              </router-link>
          </div>
          <div class="all-title">
              <router-link to="">
                  <span class="all-span01">所有配件
                      <i class="num">4</i>
                  </span>
                  <span class="all-span02">Parts</span>
              </router-link>
          </div>
          <div class="all-search">
              <button class="btn-search" @click="Search"></button>
              <input class="btn-txt" type="text" name="wd" v-model="keyword" @keyup.enter="Search">
              <div class="line"></div>
          </div>
      </div>
      <div class="all-x" @click="close"></div>
  </div>
</template>

<script>
export default {
    data () {
        return {
            show:true,
            isShow1:true,
            isShow2:false,
            taste:[
                {title:"拿破仑系列",count:3},
                {title:"奶油系列",count:15},
                {title:"慕斯系列",count:15},
                {title:"芝士系列",count:9},
                {title:"巧克力系列",count:12},
                {title:"咖啡系列",count:4},
                {title:"坚果系列",count:2},
                {title:"水果系列",count:7},
                {title:"冰淇淋系列",count:2},
            ],
            scene:[
                {title:"生日",count:31},
                {title:"聚会",count:18},
                {title:"情侣",count:4},
                {title:"儿童",count:8},
                {title:"长辈",count:14},
                {title:"下午茶",count:26},
            ],
            keyword: '',
        }
    },
    methods : {
        open1 () {
            this.isShow2 = this.isShow2 && false
            this.isShow1 = !this.isShow2 && !this.isShow1;
        },
        open2 () {
            this.isShow1 = this.isShow1 && false
            this.isShow2 = !this.isShow1 && !this.isShow2;
        },
        Search () {
            this.$router.push({name:'Select',query:{keyword:this.keyword}});
            this.show = !this.show
        },
        close () {
            this.show = !this.show
        },
    }
}
</script>

<style>
*{margin: 0; padding: 0;}
.all-product{
    width: 468px;
    height: 670px;
    background: #fff;
    position: fixed;
    left: 0;
    top: 0;
    z-index: 4;
}
.all-left {
    float: left;
    width: 346px;
    height: 570px;
    padding: 30px 0 0 50px;
}
.all-title {
    margin: 10px auto;
    text-align: left;
    cursor: pointer;
} 
.left_menu_sub {
    overflow: hidden;
}
.all-search {
    width: 350px;
    height: 42px;
    position: relative;
    border-bottom: 1px solid #838383;
}
a {
    color: #333;
    text-decoration: none;
}
.all-title .all-span01 {
    font-size: 18px;
    font-weight: bolder;
    color: #000;
}
.all-title i.num {
    border-radius: 100%;
    width: 20px;
    height: 20px;
    line-height: 20px;
    margin-left: 10px;
    vertical-align: text-top;
    background: #ffe32a;
    font-size: 12px;
    text-align: center;
    display: inline-block;
}
i {
    font-style: normal;
}
.all-title .all-span02 {
    float: right;
}
.all-title span {
    font-size: 12px;
    color: #7f7f7f;
}
.all-left h2 {
    line-height: 36px;
    margin-bottom: 0;
    cursor: pointer;
    padding-left: 20px;
    font-weight: normal;
    font-size: 16px;
    color: #000;
}
.title b {
    display: block;
    float: left;
    font-weight: normal;
}
.arcoss {
    display: block;
    float: left;
    width: 20px;
    height: 12px;
    margin: 10px 0 0 10px;
    background: url(https://act.mcake.com/fangli/2019/new-PC/new/images/arcoss-1.png) center no-repeat;
    background-size: 100%;
}
.all-list01 {
    margin-bottom: 24px;
}
.all-list01 p {
    height: 22px;
    font-size: 13px;
    margin-bottom: 10px;
    color: #606060;
    cursor: pointer;
}
.all-list01 p a {
    color: #7f7f7f;
}
.all-left .span-name {
    padding-left: 40px;
}
.all-list01 .span-name {
    float: left;
}
.all-list01 .span-num {
    float: right;
}
.all-title .all-span02 {
    float: right;
}
.all-title span {
    font-size: 12px;
    color: #7f7f7f;
}
.btn-search {
    width: 40px;
    height: 38px;
    cursor: pointer;
    float: right;
    border: none;
    outline: none;
    background: url(../assets/img/btn.png) no-repeat center;
}
.btn-txt {
    width: 300px;
    height: 40px;
    line-height: 40px;
    border: none;
    outline: none;
    font-size: 16px;
    color: #000;
    text-indent: 12px;
}
.line {
    height: 1px;
    width: 0;
    position: absolute;
    left: 0;
    bottom: -1px;
    background: #000;
}
.all-x {
    width: 24px;
    height: 24px;
    border-radius: 20%;
    position: absolute;
    right: -90px;
    top: 50px;
    z-index: 3;
    cursor: pointer;
    background: url(../assets/img/close.png) no-repeat center #ccc;
}
</style>