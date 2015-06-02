@bigGym.controller('ScheduleController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    ApiService.getSchedules().success((data) ->
                                    $scope.schedules = data)
])
