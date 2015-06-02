@bigGym.controller('TestimonialsController',
  ['$scope', 'ApiService', ($scope, ApiService)->
    ApiService.getTestimonials().success((data) ->
                                    $scope.testimonials = data)
])
