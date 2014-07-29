class Routes extends Config
  constructor: ($routeProvider, $locationProvider) ->
      $routeProvider
      .when '/',
        controller: 'appController'
        templateUrl: '/partials/shareds/loader.html'
      .when '/projects',
        controller: 'projectsController'
        templateUrl: '/partials/views/projects.html'
      .when '/about',
        controller: 'aboutController'
        templateUrl: '/partials/views/about.html'
      .when '/repositories',
        controller: 'repositoriesController'
        templateUrl: '/partials/views/repositories.html'
      .otherwise
        redirectTo: '/'

      $locationProvider.html5Mode true