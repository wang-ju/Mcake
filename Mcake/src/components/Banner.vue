<template>
  <div id="app">
    <el-carousel :interval="5000" arrow="always" height="745px" trigger="click">
      <el-carousel-item v-for="item in imgList" :key="item.index">
        <!-- <h3>{{ item }}</h3> -->
        <img :src="`${url + item.banner}`" alt="">
      </el-carousel-item>
    </el-carousel>
  </div>
</template>
  

<script>
// 官方文档 参数及各项api配置的使用 https://www.swiper.com.cn/api/index.html
// 安装 npm i vue-awesome-swiper -S \ npm i swiper -S
// import '../assets/swiper-bundle.min.css' // 组件引入swiper 样式
// import Swiper from 'swiper'
// import { Swiper, SwiperSlide, directive } from 'vue-awesome-swiper'
// import '../assets/swiper-bundle.css'
export default {
  name: "index",
  // components: {
  //   Swiper,
  //   SwiperSlide
  // },
  // directives: {
  //   swiper: directive
  // },
  data () {
    return {
      imgList:[]
    }
  },
  methods:{
    getBannerList(){
      // 发请求 拿到 mockjs 模拟的 数据
      this.axios.get('/home/banner')
      .then(res=>{
        console.log(res.data)
        this.imgList = res.data
      })
    }
  },
  mounted(){
    this.getBannerList()
  }
}
</script>

<style scoped>
/* #app{
  margin-top:120px;
} */
</style>
