import Vue from 'vue'
import Router from 'vue-router'

import MainPage from '@/components/MainPage'
import VisitorMenu from '@/components/VisitorMenu'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'main-page',
      component: MainPage
    },
    {
      path: '/visitor-menu',
      name: 'visitor-menu',
      component: VisitorMenu,
      meta: {
        title: 'Visitor Menu'
      }
    },
    {
      path: '*',
      redirect: '/'
    }
  ]
})
