@bigGym.controller('EquipmentsController', ($scope, ApiService)->
  ApiService.getEquipments().success((data) ->
                                  $scope.images = data)
)