'use strict'

module.exports = angular.module('app.nav', [])
.config(($stateProvider) ->
  $stateProvider.state 'nav',
    url: '/'
    templateUrl: 'app/nav/nav.html'
    controller: 'navCtrl'
  return
).controller('navCtrl', require('./navCtrl'))
