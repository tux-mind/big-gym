@bigGym.controller('WhereController',[ '$scope', 'uiGmapGoogleMapApi', ($scope, uiGmapGoogleMapApi)->
                                      
  lat = 66.543426
  long = 25.845099
  zoom = 15
  
  $scope.latitude = lat
  $scope.longitude = long
  $scope.zoom = zoom
  
  uiGmapGoogleMapApi.then (maps) ->
    $scope.map = { center: { latitude: lat, longitude: long}, zoom: zoom }
    $scope.marker = {
      id: 0,
      coords: { latitude: lat, longitude: long },
      options: { draggable: false },
    }
])