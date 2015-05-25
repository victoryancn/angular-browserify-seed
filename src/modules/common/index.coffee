'use strict'

module.exports = angular.module('app.common', [
  require('./directives/index').name
  require('./filters/index').name
  require('./services/index').name
  require('./constant/index').name
])
