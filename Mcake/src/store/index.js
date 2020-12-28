import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    // 购物车数据
    cartProduct:localStorage.getItem('cartProduct') ? JSON.parse(localStorage.getItem('cartProduct')) : [],
    getkeyword:'',
    keyword:''
  },
  mutations: {
    cartadd (state,cartid) {
      console.log(cartid)
      state.cartProduct.push(cartid)
      // 存储在浏览器缓存里
      localStorage.setItem("cartProduct",JSON.stringify(state.cartProduct))
    }
  },
  actions: {
  },
  modules: {
    
  }
})
