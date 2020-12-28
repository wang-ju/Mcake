<template>
  <div id="app">
    <div id="nav">
      <Header></Header>
      <router-view/>
      <Footer></Footer>
    </div>
  </div>
</template>
<script>
import Header from './components/Header'
import Footer from './components/Footer'
export default {
  components:{
    Header,Footer
  }
}
</script>

<style>
</style>
