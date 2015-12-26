'use strict'

### @ngInject ###
module.exports = ($scope) ->
  $scope.menu = [
    {
      label: '信息板'
      url: ''
      main: true
      children: []
    },
    {
      label: '测试'
      url: ''
      main: true
      children: [
        {
          label : '测试1'
#          iconClasses : 'fa  fa-circle-o'
          url : '#/vehicle'
        },{
          label : '测试2'
#          iconClasses : 'fa  fa-circle-o'
          url : ''
        }
      ]
    },{
      label: '测试3'
      url: ''
      main: true
      children: [
        {
          label : '测试4'
#          iconClasses : 'fa  fa-circle-o'
          url : ''
        }
      ]
    }
  ]
  console.log 'hello'

  $scope.toggleSection = (item,index) ->
    if item.main is true and item.children.length>0
      for golItem in $scope.menu
        if item isnt golItem
          golItem.toggled = false
      item.toggled = !item.toggled
    else if item.main is true and !item.children.length>0
      for golItem in $scope.menu
        if item isnt golItem
          golItem.toggled = false
      item.toggled = !item.toggled
      $scope.resetActive($scope.menu)
      item.active = true
    else
      $scope.resetActive($scope.menu)
      item.active = true

  $scope.resetActive = (menu) ->
    for item in menu
      if item.active is true
        item.active = false
      if item.children
        $scope.resetActive(item.children)
