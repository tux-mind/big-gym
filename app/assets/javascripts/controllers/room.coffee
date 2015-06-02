@bigGym.controller('RoomController',
  ['$scope', '$routeParams', 'ApiService', ($scope, $routeParams, ApiService)->
    ApiService.getRoom($routeParams.id).success((data) ->
      $scope.room = data
      $scope.images = data.images
      $scope.courses = data.courses
    )
])
