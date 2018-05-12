import Vue from 'vue'
import axios from 'axios'
// import Slick from 'vue-slick'
import BootstrapVue from 'bootstrap-vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

import App from './App'
import router from './router'
import store from './store'

Vue.use(BootstrapVue)

import Slick from 'vue-slick'
import 'slick-carousel/slick/slick.css'

Vue.component('slick', Slick)

if (!process.env.IS_WEB) Vue.use(require('vue-electron'))
Vue.http = Vue.prototype.$http = axios
Vue.config.productionTip = false

/* eslint-disable no-new */
const vm = new Vue({
  components: { App },
  router,
  store,
  template: '<App/>'
}).$mount('#app')

const DEFAULT_TITLE = 'NBA Management System'
vm.defaultTitle = DEFAULT_TITLE

router.beforeEach((to, from, next) => {
  document.title = DEFAULT_TITLE
  vm.$root.title = to.meta.title
  if (vm.$root.title) document.title += ` / ${vm.$root.title}`
  console.log(to, )
  next()
})
