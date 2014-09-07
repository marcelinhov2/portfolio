class Projects extends Controller
  constructor: (@$scope, @$rootScope, @$element, @facebookPageService) ->
    @$rootScope.loading = true
    do @get_facebook_data

  get_facebook_data: ->
    @facebookPageService.get_projects().success (response) =>
      _.forEach response.data, (post) =>
        post.picture = post.picture.replace 'w=158', 'w=400'
        post.picture = post.picture.replace 'h=158', 'h=265'

        image = new Image()
        image.src = post.picture

        image.onload = post.picture_loaded = post.picture

      @$scope.facebook_posts = response.data
      @$rootScope.loading = false