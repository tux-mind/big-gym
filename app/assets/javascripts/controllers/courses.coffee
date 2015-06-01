@bigGym.controller('CoursesController', ($scope, ApiService)->
  ApiService.getCourses().success((data) ->
                                  $scope.courses = data)
)
