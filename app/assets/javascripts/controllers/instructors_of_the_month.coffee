@bigGym.controller('InstructorsOfTheMonthController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    $scope.instructors = []
    ApiService.getInstructorsOfTheMonth().success((data) ->
      $scope.instructors = data
      )
])
