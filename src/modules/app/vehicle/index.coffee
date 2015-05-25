'use strict'

module.exports = angular.module('app.vehicle', [])
.config(($stateProvider) ->
  $stateProvider.state 'vehicle',
    url: '/vehicle'
    templateUrl: 'app/vehicle/vehicle.html'
    controller: 'vehicleCtrl'
  return
)
.controller('vehicleCtrl', require('./vehicleCtrl'))
.factory('vehicleService', require('./vehicleService'))
