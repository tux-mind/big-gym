@bigGym.controller('SpacesController', ($scope, ApiService)->
  ['$scope', 'ApiService', ($scope, ApiService)->
    ApiService.getSpaces().success((data) ->
                                    $scope.images = data)
])