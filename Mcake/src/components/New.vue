<template>
  <div>
    <div class="index-title">
      <div class="icon"> <img class="season-img" src="../assets/img/knifeFork.png"> </div>
      <div class="title">
        <h3><span>新品推荐</span></h3>
        <p>New Recommend</p>
      </div>
      <h4>New</h4>
    </div>
    <div class="season-wrap">
      <div class="season-pic">
        <ul class="season-ul">
          <li class="season-li" v-for="(k,i) in newlist" :key="i" :class="{'first-li':i==0}">
            <router-link :to="`/detail?id=${k.cid}`" title="蘑菇" target="_self">
              <img :src="`${url + k.cake_img_small}`" />
            </router-link>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      newlist: {}
    }
  },
  methods:{
    getNew(){
      this.axios.get("/home/new").then((result) => {
      console.log(result.data);
      this.newlist = result.data
    })
    }
  },
  mounted() {
    this.getNew()
  }
}

</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}

.index-title {
  width: 1400px;
  height: 260px;
  padding-top: 120px;
  margin: 0 auto;
}

.icon img{
    float: left;
    width: 85px;
    height: 105px;
    position: relative;
}

.index-title .title {
  margin-top: -15px;
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

.season-wrap {
  width: 1400px;
  margin: 120px auto;
  position: relative;
}

.season-pic {
  width: 1280px;
  height: 426px;
  margin: 0 auto;
  position: relative;
  overflow: hidden;
}

.season-pic ul {
  height: 468px;
  margin: 0 auto;
  position: absolute;
  left: 0;
  top: 0;
  overflow: hidden;
}

.season-pic ul li {
  float: left;
  height: 426px;
}

li {
  list-style: none;
}

a {
  color: #333;
  text-decoration: none;
}
</style>


