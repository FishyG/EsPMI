import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Server from './views/Server.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/server',
      name: 'server',
      component: Server
    }
  ]
})
