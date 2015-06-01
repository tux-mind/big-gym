@bigGym.controller('TestimonialsController', ($scope, ApiService)->
  ApiService.getTestimonials().success((data) ->
                                  $scope.testimonials = data)
)
