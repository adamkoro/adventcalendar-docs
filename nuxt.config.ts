// https://v3.nuxtjs.org/api/configuration/nuxt.config
export default defineNuxtConfig({
  modules: ['@nuxt/content', '@nuxt/ui'],
  app: {
    baseURL: '/docs/',
    head: {
      link: [{ rel: 'icon', type: 'image/svg+xml', href: '/docs/geeko.svg' }]
    },
    pageTransition: { name: 'page', mode: 'out-in' },
  },
})
