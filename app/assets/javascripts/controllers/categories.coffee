@bigGym.controller('CategoriesController', ($scope, ApiService)->
  $scope.categories = []
  ApiService.getCategories().success((data) ->
    $scope.categories = data)
)
