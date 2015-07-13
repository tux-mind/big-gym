@bigGym.config(['$routeProvider', ($routeProvider) -> 
  $routeProvider
  .when('/', {
    templateUrl: 'home.html',
    label: 'Home'
  })
  .when('/courses', {
    templateUrl: 'courses.html',
    controller: 'CoursesController',
    label: 'Courses'
  })
  .when('/courses/:id', {
    templateUrl: 'course.html',
    controller: 'CourseController',
    label: 'Course'
  })
  .when('/categories', {
    templateUrl: 'categories.html',
    controller: 'CategoriesController',
    label: 'Categories'
  })
  .when('/categories/:id', {
    templateUrl: 'category.html',
    controller: 'CategoryController',
    label: 'Category'
  })
  .when('/rooms', {
    templateUrl: 'rooms.html',
    controller: 'RoomsController',
    label: 'Rooms'
  })
  .when('/rooms/:id', {
    templateUrl: 'room.html',
    controller: 'RoomController',
    label: 'Room'
  })
  .when('/instructors', {
    templateUrl: 'instructors.html',
    controller: 'InstructorsController',
    label: 'Instructors'
  })
  .when('/instructors/:id', {
    templateUrl: 'instructor.html',
    controller: 'InstructorController',
    label: 'Instructor'
  })
  .when('/testimonials', {
    templateUrl: 'testimonials.html',
    controller: 'TestimonialsController',
    label: 'Testimonials'
  })
  .when('/schedule', {
    templateUrl: 'schedule.html',
    controller: 'ScheduleController',
    label: 'Schedule'
  })
  .when('/equipment', {
    templateUrl: 'equipment.html',
    controller: 'EquipmentsController',
    label: 'Equipment'
  })
  .when('/spaces', {
    templateUrl: 'spaces.html',
    controller: 'SpacesController',
    label: 'Spaces'
  })
  .when('/instructors_of_the_month', {
    templateUrl: 'instructors_of_the_month.html',
    controller: 'InstructorsOfTheMonthController',
    label: 'Instructor of the month'
  })
  .when('/where_and_contacts', {
    templateUrl: 'where_and_contacts.html',
    controller: 'WhereController',
    label: 'Where'
  })
  .when('/fees_and_registration', {
    templateUrl: 'fees_and_registration.html',
    label: 'FEEs'
  })
  .when('/bio', {
    templateUrl: 'bio.html',
    label: 'Phylosophy'
  })
  .otherwise({
    redirectTo: '/'
  })
])
