'use strict'

module.exports = angular.module('app', [
  'ui.router'
  'ngMaterial'
  'ngAria'
  'ngAnimate'
  'ngCookies'
  'md.data.table'
  require('../../../tmp/templates').name
  require('../common/index').name
  require('./coupon/index').name
  require('./nav/index').name
])
