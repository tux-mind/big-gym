@bigGym.service('ApiService', ['$rootScope','$http', 'Facebook', ($rootScope, $http, Facebook) ->
  get = (base, id) ->
    req = $http.get(API_SERVER + '/api/' + base + '/' + id)
    $rootScope.req = req
    return req
  
  fbFeedReceiver = (response, feed) ->
    angular.forEach(response, (post) ->
                      @.push(post)
                    , feed)
  
  deferredFeedFetcher = (id, feed) ->
    Facebook.login((response) ->
      console.log('login => ' + response)
    )
  
    Facebook.getLoginStatus((loginStatus) ->
      console.log('loginStatus => ' + loginStatus)
      unless loginStatus.status == 'connected'
        Facebook.login((response) ->
          console.log('login => ' + response)
          loggedIn = response.status == 'connected'
        ).then((res) ->
          console.log('login.then => ' + res)
          if loggedIn
            Facebook.api('/' + id + '/feed', (response) ->
              console.log('feed => ' + response)
              fbFeedReceiver(response, feed)
            )
        )
      else
        Facebook.api('/' + id + '/feed', (response) ->
          console.log('feed => ' + response)
          fbFeedReceiver(response, feed)
        )
    )
  
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
  @getFbFeed = (id, feed) ->
    return deferredFeedFetcher(id, feed)
  return @
])
