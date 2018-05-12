<template>
  <div class="flex-wrapper">
    <SiteHeader/>
    <div class="flex-content">
      <div class="container">
        <b-nav tabs class="mb-4">
          <b-nav-item active>Eastern</b-nav-item>
          <b-nav-item>Western</b-nav-item>
        </b-nav>
        <div class="row">
          <div class="col-6" v-for="i in 2">
            <b-card class="mb-4" v-for="j in 4">
                <div class="row">
                  <div class="col-3">
                    <img class="team-logo" src="~@/assets/teams/1.jpg"></img>
                  </div>
                  <div class="col-9">
                    <h3>Team name</h3>
                    <a href="#" class="card-link">Roster</a>
                    <a href="#" class="card-link">Matchup</a>
                    <a href="#" class="card-link">First Lineup</a>
                  </div>
                </div>
                
            </b-card>
          </div>
        </div>
      </div>
    </div>
    <NbaInfo/>
  </div>
</template>

<script>
  import SiteHeader from './SiteHeader';
  import NbaInfo from './NbaInfo';
  export default {
    components: { SiteHeader, NbaInfo }
  }
</script>

<style lang="sass" scoped>
  .flex-content
    margin-top: 5.5rem
  .team-logo
    width: 100%
</style>