class Repositories extends Controller
  constructor: (@$scope, @$rootScope, @githubService) ->
    @$rootScope.$broadcast 'show_loader' if !@$rootScope.repositories
    do @get_github_data

  get_github_data: ->
    if !@$rootScope.repositories
      @githubService.get_repos().success (response) =>
        @$scope.repositories = response
        @$rootScope.repositories = @$scope.repositories
        @$rootScope.$broadcast 'hide_loader'
    else
      @$scope.repositories = @$rootScope.repositories