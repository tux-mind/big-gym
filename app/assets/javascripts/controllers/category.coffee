@bigGym.controller('CategoryController',
  ['$scope', '$routeParams', 'ApiService', 'breadcrumbs',
   ($scope, $routeParams, ApiService, breadcrumbs)->
    $scope.images = []
    $scope.instructors = []
    $scope.courses = []
    ApiService.getCategory($routeParams.id).success((data) ->
      $scope.category = data
      $scope.images = data.images
      $scope.instructors = data.instructors
      $scope.courses = data.courses
      breadcrumbs.options = { 'Category' : data.name }
    )
])
