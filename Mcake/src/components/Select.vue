<template>
  <div class="select">
      <div class="list">
          <div class="list-pick">
              <div class="pick-top">
                  <i>场景:</i>
                  <router-link to="" class="pick2">全部</router-link>
                  <router-link to="">生日</router-link>
                  <router-link to="">聚会</router-link>
                  <router-link to="">情侣</router-link>
                  <router-link to="">儿童</router-link>
                  <router-link to="">长辈</router-link>
                  <router-link to="">下午茶</router-link>
              </div>
              <div class="pick-bot">
                  <i>口味:</i>
                  <router-link to="" class="pick2">全部</router-link>
                  <router-link to="">拿破仑</router-link>
                  <router-link to="">奶油</router-link>
                  <router-link to="">慕斯</router-link>
                  <router-link to="">芝士</router-link>
                  <router-link to="">巧克力</router-link>
                  <router-link to="">咖啡</router-link>
                  <router-link to="">坚果</router-link>
                  <router-link to="">水果</router-link>
                  <router-link to="">冰淇淋</router-link>
              </div>
          </div>
      </div>
      <div class="list-box clear">
          <div class="item" v-for="(s,i) in Select" :key="i">
              <router-link :to="{path:'/detail',query:{id:s.cid}}">
                  <img :src="`${url}${s.cake_img_small}`" class="item-img">
                  <h3>{{s.title}}
                      <span class="new">新品</span>
                  </h3>
                  <h4>{{s.s_title}}</h4>
              </router-link>
              <p>
                  <span class="price">
                      <i class="rmb">￥</i>{{s.price.toFixed(2)}}
                  </span> 
                  <img class="add-car" src="../assets/img/car.png">
              </p>
          </div>
      </div>
  </div>
</template>

<script>
import {mapState,mapMutations} from 'vuex'
export default {
    data(){
        return {
            Select:[],
            keyword:''
        }
    },
     watch:{
        $route:{
        // val新路由信息
        // olbval 旧路由信息
        handler(val,oldval){
            let search = val.query.keyword;
            this.getSelect(search);
        },
        // 深度观察监听
        deep:true
        }
    },
    methods:{
        getSelect(search){
                this.axios.get('/cake/Select',{
                    params:{
                        keyword:search
                    }
                    }).then(result=>{
                    this.Select = result.data;
                    console.log(result.data)
                })
        }
    },
    mounted(){
        let search = this.$route.query.keyword;
        this.getSelect(search)
    },
}
</script>

<style scoped>
*{margin: 0;padding: 0;}
.select{
    padding-top: 40px;
    width: 100%;
    background: #f8f8f8;
    padding-bottom: 80px;
    border-top: 1px solid #e8e8e8;
}
.list{
    width: 1450px;
    height: 175px;
    padding-top: 60px;
    margin: 0 auto 24px;
    background: #fff;
}
.list-pick{
    width: 1200px;
    margin: 0 auto;
    font-size: 14px;
}
.pick-top{
    margin-bottom: 14px;
}
.pick-top i{
    display: inline-block;
    width: 78px;
    text-align: left;
}
i{
    font-style: normal;
}
.pick-top a{
    display: inline-block;
    width: 65px;
    height: 28px;
    line-height: 28px;
    text-align: center;
    margin-right: 22px;
    cursor: pointer;
    color: #000;
    text-decoration: none;
}
.pick2{
    background: #ffe32a;
}
.pick-bot a {
    display: inline-block;
    width: 65px;
    height: 28px;
    line-height: 28px;
    text-align: center;
    margin-right: 22px;
    cursor: pointer;
    color: #000;
}
.pick-bot i{
    display: inline-block;
    width: 78px;
    text-align: left;
}
.list-box{
    width: 1480px;
    margin: 0 auto 50px;
}
.item{
    float: left;
    width: 350px;
    padding-top: 20px;
    margin-left: 16px;
}
.item a{
    color: #333;
    text-decoration: none;
}
.item p{
    height: 50px;
    line-height: 42px;
}
.item-img{
    width: 350px;
    height: 350px;
    margin-bottom: 12px;
    border: none;
}
.item h3{
    font-size: 15px;
    color: #000;
    margin-bottom: 6px;
    font-weight: 400;
}
.new{
    background-color: #ffe32a;
    padding: 2px 8px;
    margin-left: 8px;
}
.item h4{
    margin-bottom: 10px;
    font-weight: normal;
    font-size: 12px;
    color: #7a7a7a;
    height: 5px;
}
.item p{
    height: 50px;
    line-height: 42px;
}
.price {
    font-weight: 500;
    font-size: 18px;
    color: #000;
    float: left;
    position: relative;
}
.rmb {
    font-style: normal;
    font-size: 15px;
}
.add-car {
    margin-right: 12px;
    margin-top: 4px;
    float: right;
    cursor: pointer;
}
</style>