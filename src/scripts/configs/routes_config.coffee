class Routes extends Config
  constructor: ($routeProvider, $locationProvider) ->
      $routeProvider
      .when '/',
        templateUrl: '/partials/views/about.html'
      .when '/projects',
        templateUrl: '/partials/views/projects.html'
      .when '/repositories',
        templateUrl: '/partials/views/repositories.html'
      .otherwise
        redirectTo: '/'

      $locationProvider.html5Mode true