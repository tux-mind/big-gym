@bigGym.controller('ScheduleController', ($scope, ApiService)->
  ApiService.getSchedules().success((data) ->
                                  $scope.schedules = data)
)
