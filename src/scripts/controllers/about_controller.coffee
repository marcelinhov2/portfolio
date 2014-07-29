class About extends Controller
  constructor: (@$scope, @$rootScope, @facebookPageService) ->
    @$rootScope.$broadcast 'show_loader'
    do @get_facebook_data

  get_facebook_data: ->
    @facebookPageService.get_description().success (response) =>
      @$scope.facebook_page = response
      @$rootScope.$broadcast 'hide_loader'