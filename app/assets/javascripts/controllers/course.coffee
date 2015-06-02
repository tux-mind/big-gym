@bigGym.controller('CourseController',
  ['$scope', '$routeParams', 'ApiService', ($scope, $routeParams, ApiService)->
    ApiService.getCourse($routeParams.id).success((data) ->
      $scope.course = data
      $scope.instructors = data.instructors
      $scope.room = data.room
      $scope.schedules = data.schedules
      )
])
