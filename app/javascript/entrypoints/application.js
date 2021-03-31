// This file is automatically compiled by Vite Rails, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'vite/dynamic-import-polyfill'
import 'windi.css'
import '~/styles/application.css'

import Vue from 'vue'
import VueMeta from 'vue-meta'

import api from '@/api'

import PortalVue from 'portal-vue'

import ConstantsMixin from '@/utils/ConstantsMixin'

import { app, plugin } from '@inertiajs/inertia-vue'
import { InertiaProgress as progress } from '@inertiajs/progress'
Vue.use(VueMeta)

Vue.prototype.$api = api
Vue.use(PortalVue)
Vue.mixin(ConstantsMixin)

Vue.use(plugin)
progress.init()

const el = document.getElementById('app')
const initialPage = JSON.parse(el.dataset.page)

const pages = import.meta.glob('../Pages/**/*.vue')
const resolveComponent = (name) => {
  const importPage = pages[`../Pages/${name}.vue`]
  if (!importPage) throw new Error(`Unknown page ${name}. Is it located under Pages with a .vue extension?`)
  return importPage().then(module => module.default)
}

new Vue({
  metaInfo: {
    titleTemplate: title => title ? `${title} - PingCRM` : 'PingCRM',
  },
  render: h => h(app, { props: { initialPage, resolveComponent } }),
}).$mount(el)
