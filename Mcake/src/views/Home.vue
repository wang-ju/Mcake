<template>
  <div id="home">
    <banner></banner>
    <new></new>
    <Homepage></Homepage>
  </div>
</template>


<script>
import Header from "../components/Header"
import Banner from '../components/Banner'
import New from '../components/New'
import Homepage from '../components/Homepage'


export default {
    // data(){
    //     return {
    //         banners:[],
    //         New:[],
    //         Homepage:[]
    //     }
    // },
    components:{
        Header,Banner,New,Homepage
    }
}
</script>

<style>
</style>
