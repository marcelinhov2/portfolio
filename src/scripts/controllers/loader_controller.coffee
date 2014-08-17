class Loader extends Controller
  constructor: (@$scope, @$rootScope, @$element) ->
    do @watch

  watch: ->
    @$rootScope.$watch @$rootScope.loading, =>
      @$scope.loading = @$rootScope.loading