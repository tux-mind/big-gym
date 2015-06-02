@bigGym.config(['$httpProvider', ($httpProvider) ->
  $httpProvider.interceptors.push(['$q', 'ErrorService', ($q, ErrorService) ->
    return {
      requestError: (config) ->
        ErrorService.onHttpError(config.status)
        $q.reject(config)
      responseError: (config) ->
        ErrorService.onHttpError(config.status)
        $q.reject(config)
    }
  ])
])
