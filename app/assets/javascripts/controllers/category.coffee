@bigGym.controller('CategoryController',
  ['$scope', '$routeParams', 'ApiService', ($scope, $routeParams, ApiService)->
    $scope.images = []
    $scope.instructors = []
    $scope.courses = []
    ApiService.getCategory($routeParams.id).success((data) ->
      $scope.category = data
      $scope.images = data.images
      $scope.instructors = data.instructors
      $scope.courses = data.courses
    )
])
