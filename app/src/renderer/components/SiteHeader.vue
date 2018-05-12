<template>
  <b-navbar toggleable="md" type="dark" variant="dark">

    <div class="container">
      <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>

      <b-navbar-brand  href="javascript://">
        <img src="~@/assets/logo.jpg" alt="">
        NBA Management System <span v-if="$root.title">/ {{$root.title}}</span>
      </b-navbar-brand>

      <b-navbar-nav class="ml-auto">

        <b-nav-item v-if="showBackButton" >
          <b-button size="sm" @click="goBack()">Back</b-button>
        </b-nav-item>
      </b-navbar-nav>

    </div>

  </b-navbar>
</template>

<script>
  export default {
    methods: {
      goBack () {
        (history.length > 0) ? history.back() : this.$router.push('/')
      }
    },
    computed: {
      showBackButton () {
        console.log(this.$router)
        return this.$route.path != '/'
      }
    }
  }
</script>

<style lang="sass" scoped>
  .navbar
    height: 64px
    display: block

  .navbar-brand
    padding-left: 6rem
    cursor: default
    img
      position: absolute
      top: 0
      left: 1rem
      padding: 1rem
      background: white
      height: 128px
      box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23)
    span
      opacity: .8
</style>