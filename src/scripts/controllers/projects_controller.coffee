class Projects extends Controller
  access_token: "CAACEdEose0cBAPZCuZBYicQrvEiN8QbF4fqfZA3sMT65ZBm2pBRRWIJbHLQtkLbR5dQq2yySw45cXEEl3PZBldPs84XGUOlZAVC3agryzbwbaSvvoUrJxwzs7DDKi4WcWRUxQIl5U6odQ0Gd8cPTfTQTRk0PXUYWW7QcQzRHa4YMvoBNWmymeolDxIvkBZCbqqswoVs8XZCMZAgZDZD"
  page_id: 493474410666717

  constructor: (@$scope, @$rootScope, @facebookPageService) ->
    @$rootScope.$broadcast 'show_loader'

    do @get_facebook_data
      
  get_facebook_data: ->
    @facebookPageService.get 
      access_token: @access_token
      page_id: @page_id
    .success (response) =>
      @$scope.facebook_posts = response.data
      @$rootScope.$broadcast 'hide_loader'