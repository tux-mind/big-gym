@bigGym.controller('TestimonialsController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    $scope.testimonials = []
    ApiService.getTestimonials().success((data) ->
                                    $scope.testimonials = data)
])
