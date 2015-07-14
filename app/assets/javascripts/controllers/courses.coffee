@bigGym.controller('CoursesController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    $scope.courses = []
    $scope.levels = []
    $scope.level = null
    ApiService.getCourses().success((data) ->
      $scope.courses = data
      angular.forEach(data, (course) ->
        @.push(course.level) if @.indexOf(course.level)  == -1
      , $scope.levels)
    )
])
