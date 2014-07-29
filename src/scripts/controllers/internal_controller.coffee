class Internal extends Controller
  constructor: (@$scope, @$rootScope) ->
    do @set_scope_vars
      
  set_scope_vars: ->
    @$scope.facebook_data = @$rootScope.main_data
    console.log @$scope.facebook_data