'use strict'

module.exports = angular.module('app', [
  'ui.router'
  'ngMaterial'
  'ngAria'
  'ngAnimate'
  'ngCookies'
  require('../../../tmp/templates').name
  require('../common/index').name
  require('./vehicle/index').name
  require('./nav/index').name
])

