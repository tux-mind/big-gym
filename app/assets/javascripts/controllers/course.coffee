@bigGym.controller('CourseController',
  ['$scope', '$routeParams', 'ApiService', 'breadcrumbs', ($scope, $routeParams, ApiService, breadcrumbs)->
    ApiService.getCourse($routeParams.id).success((data) ->
      $scope.course = data
      $scope.instructors = data.instructors
      $scope.room = data.room
      $scope.schedules = data.schedules
      
      breadcrumbs.options = { 'Course' : data.name }
      )
])
