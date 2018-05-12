<template>
  <div class="flex-wrapper">
    <SiteHeader/>
    <!-- <header>
      <div class="logo">
        <img src="~@/assets/logo.jpg" alt="">
      </div>
      <div class="title">NBA Management System</div>
    </header> -->
    <div class="mode-selector-wrapper">
      <div class="mode-selector">
        <div class="container">
          <p>Welcome to use this NBA Management system, you can redirect to your pages according to your role by clicking the buttons bellow:</p>
          <div class="row">
            <div class="col-6">
              <b-button to="/visitor-menu" variant="info" size="lg" block>Visitor</b-button>
            </div>
            <div class="col-6">
              <b-button to="/visitor" variant="info" size="lg" block>Admin</b-button>
            </div>
          </div>
        </div>
      </div>
    </div>

    


    <div class="footer">
      <div class="slider">
        <slick
          ref="slick"
          :options="slickOptions">
          <div class="slider-image">
            <img src="~@/assets/slider/1.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/2.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/3.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/4.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/5.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/6.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/7.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/8.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/9.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/10.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/11.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/12.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/13.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/14.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/15.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/16.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/17.jpg" alt="">
          </div>
          <div class="slider-image">
            <img src="~@/assets/slider/18.jpg" alt="">
          </div>
        </slick>
      </div>
    </div>
    <NbaInfo/>
  </div>
  <!-- <div id="wrapper">
    <img id="logo" src="~@/assets/logo.jpg" alt="electron-vue">
    <main>
      <div class="left-side">
        <span class="title">
          NBA Management System
        </span>
        <system-information></system-information>
      </div>

      <div class="right-side">
        <div class="doc">
          <div class="title">Getting Started</div>
          <p>
            electron-vue comes packed with detailed documentation that covers everything from
            internal configurations, using the project structure, building your application,
            and so much more.
          </p>
          <button @click="open('https://simulatedgreg.gitbooks.io/electron-vue/content/')">Read the Docs</button><br><br>
        </div>
        <div class="doc">
          <div class="title alt">Other Documentation</div>
          <button class="alt" @click="open('https://electron.atom.io/docs/')">Electron</button>
          <button class="alt" @click="open('https://vuejs.org/v2/guide/')">Vue.js</button>
        </div>
      </div>
    </main>
  </div> -->
</template>

<script>
  // import Slick from 'vue-slick'
  import NbaInfo from './NbaInfo'
  import SiteHeader from './SiteHeader'

  export default {
    name: 'landing-page',
    components: { NbaInfo, SiteHeader },
    data () {
      return {
        slickOptions: {
          infinite: true, 
          centerMode: true,
          slidesPerRow: 3
          // variableWidth: true
        }
      }
    },
    methods: {
      open (link) {
        this.$electron.shell.openExternal(link)
      }
    }
  }
</script>

<style src="slick-carousel/slick/slick.css"></style>
<style src="slick-carousel/slick/slick-theme.scss" lang="scss"></style>

<style scoped lang="sass">
  
  .footer
    flex: 0 0
    .slider
      padding-bottom: 1rem
    .slider /deep/ .slick-prev
      left: 1rem
      margin-top: -10px
      z-index: 999
      &:before
        color: #ddd
        width: 40
        height: 40
        font-size: 40px
    .slider /deep/ .slick-next
      right: calc(1rem + 20px)
      margin-top: -10px
      z-index: 999
      &:before
        color: #ddd
        width: 40
        height: 40
        font-size: 40px

    .slider /deep/ .slider-image
      padding: 0 .5rem
      img
        margin: 0 auto
        max-height: 120px
        border-radius: 2px solid #ddd
        border-radius: 4px
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23)

  .navbar-brand
    padding-left: 6rem
    img
      position: absolute
      top: 0
      left: 1rem
      padding: 1rem
      background: white
      height: 128px
      box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23)
  
</style>
