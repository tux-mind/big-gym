@bigGym.controller('InstructorsController', ($scope, ApiService)->
  $scope.instructors = []
  ApiService.getInstructors().success((data) ->
    $scope.instructors = data
    )
)
