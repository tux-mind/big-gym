@bigGym.config(($routeProvider) -> 
  $routeProvider
  .when('/', {
    templateUrl: 'home.html'
  })
  .when('/courses', {
    templateUrl: 'courses.html',
    controller: 'CoursesController'
  })
  .when('/courses/:id', {
    templateUrl: 'course.html',
    controller: 'CourseController'
  })
  .when('/categories', {
    templateUrl: 'categories.html',
    controller: 'CategoriesController'
  })
  .when('/categories/:id', {
    templateUrl: 'category.html',
    controller: 'CategoryController'
  })
  .when('/rooms', {
    templateUrl: 'rooms.html',
    controller: 'RoomsController'
  })
  .when('/rooms/:id', {
    templateUrl: 'room.html',
    controller: 'RoomController'
  })
  .when('/instructors', {
    templateUrl: 'instructors.html',
    controller: 'InstructorsController'
  })
  .when('/instructors/:id', {
    templateUrl: 'instructor.html',
    controller: 'InstructorController'
  })
  .when('/testimonials', {
    templateUrl: 'testimonials.html',
    controller: 'TestimonialsController'
  })
  .when('/schedule', {
    templateUrl: 'schedule.html',
    controller: 'ScheduleController'
  })
  .when('/equipment', {
    templateUrl: 'equipment.html',
    controller: 'EquipmentsController'
  })
  .when('/spaces', {
    templateUrl: 'spaces.html',
    controller: 'SpacesController'
  })
  .when('/instructors_of_the_month', {
    templateUrl: 'instructors_of_the_month.html',
    controller: 'InstructorsOfTheMonthController'
  })
  .when('/where_and_contacts', {
    templateUrl: 'where_and_contacts.html'
  })
  .when('/fees_and_registration', {
    templateUrl: 'fees_and_registration.html'
  })
  .when('/bio', {
    templateUrl: 'bio.html'
  })
  .otherwise({
    redirectTo: '/'
  }))
