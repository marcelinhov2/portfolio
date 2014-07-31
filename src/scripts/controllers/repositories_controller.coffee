class Repositories extends Controller
  constructor: (@$scope, @$rootScope, @$element, @githubService) ->
    @$rootScope.$broadcast 'show_loader'

    do @cache_DOM_elements
    do @get_github_data

  cache_DOM_elements: ->
    @container = @$element.find '#repositories'

  get_github_data: ->
    @githubService.get_repos().success (response) =>
      @$scope.repositories = response
      @$rootScope.$broadcast 'hide_loader', @in

  in: =>
    @container.fadeIn 'fast'