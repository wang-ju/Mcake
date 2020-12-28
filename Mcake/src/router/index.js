import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

import Select from '../components/Select.vue'
import Cart from  '../components/Cart.vue'

// 解决路由重复问题
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
  return originalPush.call(this, location).catch(err => err)
}

Vue.use(VueRouter)

const routes = [  //路由字典
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/cart',
    name: 'Cart',
    component: Cart
  },
  {
    path: '/select',
    name: 'Select',
    component: Select
  },
  {
    path: '/detail',
    name: 'Detail',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/Detail.vue')
  }
]
// 创建路由字典对象
const router = new VueRouter({
  routes
})

export default router
