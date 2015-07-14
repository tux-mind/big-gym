@bigGym.filter('CoursesByLevel', () ->
  return (courses, level) ->

    return courses if ( !level || level == 'All')

    result = []
    
    angular.forEach(courses, (course) ->
      @.push(course) if course.level == level
    , result)
    
    return result
)