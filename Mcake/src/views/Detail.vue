<template>
  <div id="detail">
        <DetailPage></DetailPage>
  </div>
</template>


<script>
import DetailPage from '../components/DetailPage'

export default {
    // data(){
    //     return {
    //         // banners:[],
    //         DetailPage:[]
    //     }
    // },
    // mounted(){
    //     // this.axios.get('/home/banner').then(res=>{
    //     //     console.log(res.data)
    //     //     this.banners = res.data
    //     // })
    //     this.axios.get('/cake/DetailPage',{
    //         params:{
    //             cid:this.$route.query.cid
    //         }
    //     }).then(res=>{
    //         console.log(res.data)
    //         this.detail = res.data[0]
    //     })
    // }
    components:{
        DetailPage
    }
}
</script>

<style>
</style>
