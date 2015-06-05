@bigGym.controller('ScheduleController',
  ['$scope', '$filter', 'ApiService', ($scope, $filter, ApiService)->
    $scope.schedules = []
    $scope.hours = []
   
    ApiService.getSchedules().success((data) ->
        $scope.schedules = data
        
        skip = []
        hours = []
        
        angular.forEach(data, (sched) ->
          return if skip.indexOf(sched) > -1
          
          byhour = $filter('schedulesByHour')(data, sched.from, sched.to)
          
          skip.push.apply(skip, byhour)
          
          byday = $filter('schedulesSortByDow')(byhour)
          @push({
            from: sched.from
            to: sched.to
            days: byday})
        , hours)
        
        $scope.hours = $filter('orderBy')(hours, 'from'))
    ])
