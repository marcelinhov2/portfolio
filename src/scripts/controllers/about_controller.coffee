class About extends Controller
  constructor: (@$scope, @$rootScope, @facebookPageService) ->
    @$rootScope.$broadcast 'show_loader' if !@$rootScope.facebook_page
    do @get_facebook_data

  get_facebook_data: ->
    if !@$rootScope.facebook_page
      @facebookPageService.get_description().success (response) =>
        @$scope.facebook_page = response
        @$rootScope.facebook_page = @$scope.facebook_page
        @$rootScope.$broadcast 'hide_loader'
    else
      @$scope.facebook_page = @$rootScope.facebook_page