class About extends Controller
  constructor: (@$scope, @$rootScope, @$element, @facebookPageService) ->
    @$rootScope.loading = true
    do @get_facebook_data

  get_facebook_data: ->
    @facebookPageService.get_description().success (response) =>
      @$scope.facebook_page = response
      @$rootScope.loading = false