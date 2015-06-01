@bigGym.config(($httpProvider) ->
  # $httpProvider.interceptors.push('HttpInterceptorFactory')
  $httpProvider.interceptors.push(($q, ErrorService) ->
    return {
      requestError: (config) ->
        ErrorService.onHttpError(config.status)
        $q.reject(config)
      responseError: (config) ->
        ErrorService.onHttpError(config.status)
        $q.reject(config)
    }
  )
)
