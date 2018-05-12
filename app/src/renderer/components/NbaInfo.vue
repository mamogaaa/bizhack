<template>
  <div class="footer">
    <div class="info">
      The current season is 2017-2018, and the NBA already has history of {{historyYears}} years.
    </div>
  </div>
</template>

<script>
  export default {
    data () {
      return {
        historyYears: Math.floor(((new Date) - Date.parse("6/6/1946"))/1000/60/60/24/365)
      }
    }
  }
</script>

<style lang="sass" scoped>
  .footer
    flex: 0 0
    .info
      text-align: center
      font-size: 0.8rem
      padding: 0.4rem 0
      color: #555
      border-top: 1px solid #ddd
</style>
