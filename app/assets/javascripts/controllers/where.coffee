@bigGym.controller('WhereController',[ '$scope', 'uiGmapGoogleMapApi', ($scope, uiGmapGoogleMapApi)->
  uiGmapGoogleMapApi.then (maps) ->
    $scope.map = { center: { latitude: 66.543426, longitude: 25.845099}, zoom: 15 }
    $scope.marker = {
      id: 0,
      coords: { latitude: 66.543426, longitude: 25.845099 },
      options: { draggable: false },
    }
])