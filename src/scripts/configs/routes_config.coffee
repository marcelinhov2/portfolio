class Routes extends Config
  constructor: ($routeProvider, $locationProvider) ->
      $routeProvider
      .when '/about',
        controller: 'aboutController'
        templateUrl: '/partials/views/about.html'
      .when '/projects',
        controller: 'projectsController'
        templateUrl: '/partials/views/projects.html'
      .when '/repositories',
        controller: 'repositoriesController'
        templateUrl: '/partials/views/repositories.html'
      .otherwise
        redirectTo: '/about'

      $locationProvider.html5Mode true