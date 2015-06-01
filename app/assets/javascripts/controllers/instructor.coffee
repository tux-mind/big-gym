@bigGym.controller('InstructorController', ($scope, $routeParams, $sce, ApiService)->
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
    angular.forEach(data, (html) -> 
        @push($sce.trustAsHtml(html))
      , $scope.tweets)
    )
)
