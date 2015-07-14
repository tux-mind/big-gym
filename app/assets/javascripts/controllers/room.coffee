@bigGym.controller('RoomController',
  ['$scope', '$routeParams', 'ApiService', 'breadcrumbs',
   ($scope, $routeParams, ApiService, breadcrumbs)->
    ApiService.getRoom($routeParams.id).success((data) ->
      $scope.room = data
      $scope.images = data.images
      $scope.courses = data.courses
      breadcrumbs.options = { 'Room' : data.name }
    )
])
