<template>
  <div class="flex-wrapper">
    <SiteHeader title="Visitor Menu"/>
    <div class="mode-selector-wrapper">
      <div class="mode-selector">
        <div class="container">
          <div class="row">
            <div class="col-6">
              <b-button to="/visitor/teams" variant="info" size="lg" block>Teams</b-button>
            </div>
            <div class="col-6">
              <b-button to="/visitor/players" variant="info" size="lg" block>Players</b-button>
            </div>
          </div>
          <div class="row">
            <div class="col-6">
              <b-button to="/visitor/matchups" variant="info" size="lg" block>Matchups</b-button>
            </div>
            <div class="col-6">
              <b-button to="/visitor/photos" variant="info" size="lg" block>Photos</b-button>
            </div>
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