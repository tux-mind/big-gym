@bigGym.controller('CategoryController', ($scope, $routeParams, ApiService)->
  ApiService.getCategory($routeParams.id).success((data) ->
    $scope.category = data
    $scope.images = data.images
    $scope.instructors = data.instructors
  )
)
