<template>
  <div id="bodys">
        <!-- 2h -->
        <div class="index-title">
            <div class="icon"> <img class="season-img" src="../assets/img/knifeFork.png"> </div>
            <div class="title">
                <h3><span>本季推荐</span></h3>
                <p>Seasonal Recommend</p>
            </div>
            <h4>Seasonal</h4>
        </div>
        <div class="new-wrap">
            <div class="new-pic">
                <ul class="new-ul">
                    <li class="new-li" v-for="(s,i) in Sealist" :key="i"> 
                        <router-link :to="`/detail?id=${s.cid}`" title="柠漾" target="_self"> 
                        <img :src="`${url +s.cake_img_small}`">
                        </router-link> 
                    </li>
                </ul>
            </div>
        </div>
        <div class="new-list-wrap">
            <div class="list">
                <div class="item" v-for="(k,i) in Sealist.slice(1)" :key="i"
                        :style="{'background-image': `url(${url + k.cake_img_small})`}">
                    <router-link :to="`/detail?id=${k.cid}`" class="a-list" >
                        <h3>{{k.title}}</h3>
                        <h4>{{k.e_title}}</h4>
                    </router-link>
                    <p> <span class="price">
                        <i class="rmb">￥</i>{{k.price.toFixed(2)}}
                        </span> 
                        <img class="add-car" src="../assets/img/car.png"> </p>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <!-- 2h -->
        <div class="index-title">
            <div class="icon"> <img class="season-img" src="../assets/img/knifeFork.png"> </div>
            <div class="title">
                <h3><span>萌系推荐</span></h3>
                <p>Lovely Recommend</p>
            </div>
            <h4>Lovely</h4>
        </div>
        <div class="new-wrap">
            <div class="new-pic">
                <ul class="new-ul">
                    <li class="new-li" v-for="(l,i) in Lovely" :key="i">
                        <router-link :to="`/detail?id=${l.cid}`" title="黛西" target="_self"> 
                            <img :src="`${url + l.cake_img_small}`">
                        </router-link> 
                    </li>
                </ul>
            </div>
        </div>
         <div class="new-list-wrap">
            <div class="list">
                <div class="item" v-for="(k,i) in Lovely.slice(1)" :key="i"
                    :style="{'background-image': `url(${url + k.cake_img_small})`}">
                    <router-link :to="`/detail?id=${k.cid}`" class="a-list">
                        <h3>{{k.title}}</h3>
                        <h4>{{k.e_title}}</h4>
                    </router-link>
                    <p> <span class="price">
                        <i class="rmb">￥</i>{{k.price.toFixed(2)}}
                        </span> 
                        <img class="add-car" src="../assets/img/car.png"> 
                    </p>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div> 
</template>

<script>
export default {
    data(){
       return {
           Sealist:[],
           Lovely:[],
       } 
    },
    methods:{
        getHomepageList(){
            this.axios.get("/home/Seasonal").then((result) => {
                console.log(result.data);
                this.Sealist = result.data
            }),
            this.axios.get("/home/Lovely").then((result)=>{
                console.log(result.data);
                this.Lovely=result.data
                console.log(this.Lovely)
            })
        }
    },
    mounted(){
      this.getHomepageList()
    }
}
</script>

<style scoped>

*{
    margin: 0;padding: 0;
}

.index-title {
    width: 1400px;
    height: 260px;
    margin-bottom: 120px;
    margin: 0 auto;
}

.icon img{
    float: left;
    width: 85px;
    height: 105px;
    position: relative;
}

.index-title .title {
    margin-top: 60px;
    margin-left: 80px;
    width: 200px;
}

.index-title .title h3 {
    color: #101010;
    font-size: 26px;
}

.index-title .title h3 span {
    font-weight: bold;
}

.index-title .title p {
    margin-top: 20px;
    line-height: 0px;
    color: #c3c3c3;
}

.index-title h4 {
    font-size: 20px;
    text-align: center;
    margin-top: -40px;
    color: #c3c3c3;
}

.new-wrap {
    width: 100%;
    position: relative;
    margin-bottom: 80px;
}

.new-pic {
    width: 100%;
    height: 588px;
    position: relative;
    overflow: hidden;
}

.new-pic ul {
    width: 100%;
    margin: 0 auto;
    position: absolute;
    left: 0;
    top: 0;
    overflow-y: hidden;
}

.new-pic ul li {
    float: left !important;
    height: 588px;
    margin-right: 60px;
}

li {
    list-style: none;
}

.new-pic ul li a img {
    width: 1660px;
    height: 610px;
}

.new-list-wrap {
    width: 1280px;
}

.new-list-wrap {
    width: 1400px;
    margin: 0 auto;
    position: relative;
    border-bottom: 1px solid #d6d6d6;
}

body {
    line-height: 24px;
    font: 14px Helvetica Neue,Helvetica,PingFang SC,Tahoma,Arial,sans-serif;
}
.list{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.item {
    width: 374px;
    height: 395px;
    margin-bottom: 9px;
}

.item {
    background-color: #f5f5f5;
    background-position: center;
    background-repeat: no-repeat;
    /* float: left; */
    width: 381px;
    height: 390px;
    padding-top: 30px;
    padding-left: 40px;
    margin-bottom: 64px;
    box-sizing: content-box;
}

.item .a-list {
    display: block;
    padding-bottom: 270px;
}

a {
    color: #333;
    text-decoration: none;
}

.item h3 {
    font-size: 15px;
    color: #000;
    margin-bottom: 8px;
    font-weight: 400;
}

.item h4 {
    font-weight: normal;
    font-size: 12px;
    color: #7a7a7a;
    margin-bottom: 18px;
}

.item p {
    height: 50px;
    line-height: 42px;
}

.price {
    font-weight: 500;
    font-size: 18px;
    color: #000;
    /* float: left; */
    position: relative;
    padding-bottom: 270px;
}

.add-car {
    margin-right: 12px;
    margin-top: 4px;
    float: right;
    cursor: pointer;
}

.rmb {
    font-style: normal;
    font-size: 15px;
}

.item.center {
    margin-left: 70px;
    margin-right: 66px;
}

.clear:after {
    content: '.';
    display: block;
    height: 0;
    visibility: hidden;
    clear: both;
}

</style>

