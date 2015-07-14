@bigGym.controller('InstructorController',
  ['$scope', '$routeParams', 'ApiService', 'breadcrumbs',
    ($scope, $routeParams, ApiService, breadcrumbs)->
      $scope.images = []
      $scope.courses = []
      $scope.categories = []
      $scope.awards = []
      $scope.tweets = []
      ApiService.getInstructor($routeParams.id).success((data) ->
        $scope.instructor = data
        $scope.categories = data.categories
        $scope.courses = data.courses
        $scope.images = data.images
        $scope.awards = data.awards
        
        breadcrumbs.options = { 'Instructor' : data.full_name }
        )
      
      ApiService.getTweets($routeParams.id).success((data) ->
        $scope.tweets = data
        )
])
