<template>
  <router-view></router-view>
</template>

<script>
  export default {
    name: 'app'
  }
</script>

<style lang="sass">
  html, body
    height: 100%
  .flex-wrapper
    height: 100%
    display: flex
    flex-direction: column
    position: relative

    & > .flex-content
      flex: 1 1

  .mode-selector-wrapper
    flex: 1 1
    position: relative
  .mode-selector
    margin-top: 2rem
    width: 500px
    position: absolute
    top: 50%
    left: 50%
    transform: translate(-50%, -50%)
    p
      color: #555
      font-size: 0.8rem
    .btn
      padding: 1.5rem 1rem
      text-transform: uppercase
      font-weight: 200
      margin-bottom: 2rem
</style>
