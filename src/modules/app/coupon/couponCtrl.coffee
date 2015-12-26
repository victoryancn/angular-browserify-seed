'use strict'

### @ngInject ###
module.exports = ($scope,couponService) ->
  $scope.query = {
    filter: '',
    limit: 5,
    page: 1
  }
  $scope.data = couponService.couponList().result_data
