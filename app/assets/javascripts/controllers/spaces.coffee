@bigGym.controller('SpacesController', ($scope, ApiService)->
  ApiService.getSpaces().success((data) ->
                                  $scope.images = data)
)