class Projects extends Controller
  constructor: (@$scope, @$rootScope, @facebookPageService) ->
    @$rootScope.$broadcast 'show_loader'
    do @get_facebook_data
      
  get_facebook_data: ->
    @facebookPageService.get_projects().success (response) =>
      _.forEach response.data, (post) ->
        post.picture = post.picture.replace 'w=154', 'w=400'
        post.picture = post.picture.replace 'h=154', 'h=200'

      @$scope.facebook_posts = response.data
      @$rootScope.$broadcast 'hide_loader'