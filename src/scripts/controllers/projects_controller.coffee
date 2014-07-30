class Projects extends Controller
  constructor: (@$scope, @$rootScope, @facebookPageService) ->
    @$rootScope.$broadcast 'show_loader'
    do @get_facebook_data
      
  get_facebook_data: ->
    @facebookPageService.get_projects().success (response) =>
      @$scope.facebook_posts = response.data
      @$rootScope.$broadcast 'hide_loader'