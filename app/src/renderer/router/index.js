import Vue from 'vue'
import Router from 'vue-router'

import MainPage from '@/components/MainPage'
import VisitorMenu from '@/components/VisitorMenu'
import TeamsMain from '@/components/TeamsMain'

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
      path: '/visitor/teams',
      name: 'visitor-teams',
      component: TeamsMain,
      meta: {
        title: 'Teams Main'
      }
    },
    {
      path: '*',
      redirect: '/'
    }
  ]
})
