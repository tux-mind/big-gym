@bigGym.service('ApiService', ['$rootScope','$http', ($rootScope, $http) ->
  get = (base, id) ->
    req = $http.get(API_SERVER + '/api/' + base + '/' + id)
    $rootScope.req = req
    return req
  
  @getCourse = (id) ->
    return get('courses', id)
  @getCourses = () ->
    return @getCourse('')
  @getCategory = (id) ->
    return get('categories', id)
  @getCategories = () ->
    return @getCategory('')
  @getRoom = (id) ->
    return get('rooms', id)
  @getRooms = () ->
    return @getRoom('')
  @getInstructor = (id) ->
    return get('instructors', id)
  @getInstructors = () ->
    return @getInstructor('')
  @getTestimonials = () ->
    return get('testimonials', '')
  @getEquipments = () ->
    return get('equipments', '')
  @getSchedules = () ->
    return get('schedules', '')
  @getSpaces = () ->
    return get('spaces', '')
  @getInstructorsOfTheMonth = () ->
    return @getInstructor('of_the_month')
  @getTweets = (id) ->
    return @getInstructor(id + '/tweets')
  @getFbFeed = (id) ->
    return @getInstructor(id + '/posts')
  return @
])
