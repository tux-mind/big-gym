@bigGym.controller('CoursesController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    ApiService.getCourses().success((data) ->
                                    $scope.courses = data)
])
