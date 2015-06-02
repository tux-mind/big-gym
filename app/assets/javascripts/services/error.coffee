@bigGym.service('ErrorService', ['$rootScope', ($rootScope) ->
  @onHttpError = (status) ->
    error = {
      title: 'An error occurred'
      description: 'Something went wrong...'
      level: 'warning'
      footer: '[ status = ' + status + ' ]'
      show: true
    }
    
    switch status
      when 404
        error.description = 'Some content could not be found on our server.'
        error.title = 'Cannot fetch some content!'
    $rootScope.error = error
  return @
])
