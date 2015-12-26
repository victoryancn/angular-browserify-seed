'use strict'

module.exports = angular.module('app.coupon', [])
.config(($stateProvider) ->
  $stateProvider.state 'coupon',
    url: '/coupon'
    templateUrl: 'app/coupon/coupon.html'
    controller: 'couponCtrl'
  return
).controller('couponCtrl', require('./couponCtrl'))
.factory('couponService', require('./couponService'))
