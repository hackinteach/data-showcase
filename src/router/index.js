import Vue from 'vue'
import Router from 'vue-router'
import Showcase from '../components/ShowCase';

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Showcase
    }
  ]
})
