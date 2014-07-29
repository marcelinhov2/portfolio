class Projects extends Controller
  constructor: (@$scope, @$rootScope, @facebookPageService) ->
    @$rootScope.$broadcast 'show_loader' if !@$rootScope.facebook_posts
    do @get_facebook_data
      
  get_facebook_data: ->
    if !@$scope.facebook_posts
      @facebookPageService.get_projects().success (response) =>
        @$scope.facebook_posts = response.data
        @$rootScope.facebook_posts = @$scope.facebook_posts
        @$rootScope.$broadcast 'hide_loader'
    else
      @$scope.facebook_posts = @$rootScope.facebook_posts