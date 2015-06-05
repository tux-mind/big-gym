@bigGym.filter('schedulesByHour', () ->
  return (schedules, from, to) ->

    result = []
    
    angular.forEach(schedules, (sched) ->
      @push(sched) if sched.from == from and sched.to == to
    , result)
    
    return result
)
    
@bigGym.filter('schedulesSortByDow', () ->
  return (schedules) ->

    result = []
    
    for i in [1..6]
      result.push({ dow: i, schedules: [] })
    
    angular.forEach(schedules, (sched) ->
      @[sched.dow - 1].schedules.push(sched)
    , result)
    
    return result
)