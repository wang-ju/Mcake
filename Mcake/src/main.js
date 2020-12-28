import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.config.productionTip = false
axios.defaults.baseURL = '/api'
// 通过在原型上定义它们使其在每个 Vue 的实例中可用,设置全局变量
Vue.prototype.axios = axios
Vue.prototype.qs = qs
//把路径定义为一个全局变量
Vue.prototype.url = 'http://127.0.0.1:5050/'
// 中央事件总线
Vue.prototype.Bus = new Vue();

Vue.use(ElementUI); 

new Vue({
  router,
  store,
  // 读取App中的html内容
  render: h => h(App)
  // 挂载到html中id为app的位置
}).$mount('#app')

// Vue.use(VueAwesomeSwiper)

