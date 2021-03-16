<template>
  <div>
    <h1 class="mb-8 font-bold text-3xl">
      Dashboard
    </h1>
    <p class="mb-8 leading-normal">
      Hey there! Welcome to Ping CRM, a demo app designed to help illustrate how
      <ExternalLink href="https://inertiajs.com">
        Inertia.js
      </ExternalLink>
      works with
      <ExternalLink href="https://rubyonrails.org/">
        Ruby on Rails
      </ExternalLink>.
    </p>
    <p class="mb-8 leading-normal">
      This demo is running on
      <ExternalLink href="https://vite-rails.netlify.app/">
        Vite ⚡️ Rails
      </ExternalLink>
      instead of Webpacker, which provides a
      <ExternalLink href="https://vite-rails.netlify.app/guide/introduction">
        faster development experience
      </ExternalLink>
      thanks to
      <ExternalLink href="https://vite-rails.netlify.app/guide/introduction">
        Vite
      </ExternalLink>.
    </p>

    <p class="mb-8 leading-normal">
      It also uses
      <ExternalLink href="https://js-from-routes.netlify.app/">
        JS From Routes
      </ExternalLink>
      to simplify navigation and making requests to the Rails server without hardcoding paths.
    </p>

    <p
      v-if="git.commit_url"
      class="mb-10 leading-normal"
    >
      Version
      <a
        :href="git.commit_url"
        class="hover:underline"
      >
        {{ git.commit_sha }}
      </a>
      &minus;
      {{ relativeCommitTime }}
    </p>

    <div class="mb-8 flex">
      <inertia-link
        class="btn-indigo"
        :href="error500Path"
      >
        500 error
      </inertia-link>
      <inertia-link
        class="ml-2 btn-indigo"
        href="/error-404"
      >
        404 error
      </inertia-link>
    </div>

    <p class="leading-normal">
      👆 These links are intended to be broken to illustrate how error handling works with Inertia.js.
    </p>
  </div>
</template>

<script>
import Layout from '@/Layouts/Main.vue'
import ExternalLink from '@/Shared/ExternalLink.vue'
import * as timeago from 'timeago.js'
import { dashboard } from '@/api'

export default {
  metaInfo: { title: 'Dashboard' },
  components: {
    ExternalLink,
  },
  layout: Layout,
  props: {
    git: {
      type: Object,
      required: true,
    },
  },
  computed: {
    error500Path () {
      return dashboard.exampleException.path()
    },
    relativeCommitTime() {
      return timeago.format(this.git.commit_time)
    },
  },
}
</script>
