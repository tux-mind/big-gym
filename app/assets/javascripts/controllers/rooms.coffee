@bigGym.controller('RoomsController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    $scope.rooms = []
    ApiService.getRooms().success((data) ->
      $scope.rooms = data)
])
