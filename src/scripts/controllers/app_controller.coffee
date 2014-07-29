class App extends Controller
  access_token: "CAACEdEose0cBAPZCuZBYicQrvEiN8QbF4fqfZA3sMT65ZBm2pBRRWIJbHLQtkLbR5dQq2yySw45cXEEl3PZBldPs84XGUOlZAVC3agryzbwbaSvvoUrJxwzs7DDKi4WcWRUxQIl5U6odQ0Gd8cPTfTQTRk0PXUYWW7QcQzRHa4YMvoBNWmymeolDxIvkBZCbqqswoVs8XZCMZAgZDZD"
  page_id: 493474410666717
  
  constructor: (@$scope, @$rootScope, @$location, @facebookPageService) ->
    if @$rootScope.initial_render isnt false
      do @initial_path
      do @get_facebook_data

  get_facebook_data: ->
    @facebookPageService.get 
      access_token: @access_token
      page_id: @page_id
    .success (response) =>
      @$rootScope.main_data = response.data
      
      do @init_app

  initial_path: ->
    @initial_path = @$location.$$path
    @$location.path "/"
    @$rootScope.initial_render = false

  init_app: ->
    if @initial_path is '/' then path = '/home' else path = @initial_path
    @$location.path path