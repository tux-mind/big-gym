@bigGym.controller('EquipmentsController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    ApiService.getEquipments().success((data) ->
                                    $scope.equipments = data)
])
