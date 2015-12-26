'use strict'

module.exports = angular.module('app.coupon', [])
.config(($stateProvider) ->
  $stateProvider.state 'coupon',
    url: '/coupon'
    templateUrl: 'app/coupon/coupon.html'
    controller: 'couponCtrl'
  $stateProvider.state 'coupon-send',
    url: '/coupon-send'
    templateUrl: 'app/coupon/coupon-send.html'
    controller: 'couponSendCtrl'
  return
).controller('couponCtrl', require('./couponCtrl'))
.controller('couponSendCtrl', require('./couponSendCtrl'))
.factory('couponService', require('./couponService'))
