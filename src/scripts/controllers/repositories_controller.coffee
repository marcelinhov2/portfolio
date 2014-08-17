class Repositories extends Controller
  constructor: (@$scope, @$rootScope, @$element, @githubService) ->
    @$rootScope.loading = true
    do @get_github_data

  get_github_data: ->
    @githubService.get_repos().success (response) =>
      @$scope.repositories = response
      @$rootScope.loading = false