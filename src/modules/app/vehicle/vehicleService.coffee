'use strict'

### @ngInject ###
module.exports = (API,$http)->
  vehicleList : (options, callback) ->
    $http.get(API.VEHICLE_LIST,params : options)
    .success((data) ->
      callback(data)
    )
    .error((data) ->
      console.log data.message
    )
