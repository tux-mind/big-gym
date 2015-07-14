@bigGym.controller('InstructorController',
  ['$scope', '$routeParams', 'ApiService',
    ($scope, $routeParams, ApiService)->
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
        )
      
      ApiService.getTweets($routeParams.id).success((data) ->
        $scope.tweets = data
        )
])
