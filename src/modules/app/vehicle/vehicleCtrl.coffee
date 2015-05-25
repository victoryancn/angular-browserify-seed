'use strict'

### @ngInject ###
module.exports = ($scope,vehicleService) ->
  vehicleService.vehicleList({page:0,size:10},(data) ->
    console.log data
  )
  return
