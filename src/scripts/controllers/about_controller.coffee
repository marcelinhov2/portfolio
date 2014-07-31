class About extends Controller
  constructor: (@$scope, @$rootScope, @facebookPageService) ->
    @$rootScope.$broadcast 'show_loader'
    do @cache_DOM_elements
    do @get_facebook_data

  cache_DOM_elements: ->
    # @container = @$element.find '#about'

  get_facebook_data: ->
    @facebookPageService.get_description().success (response) =>
      @$scope.facebook_page = response
      @$rootScope.$broadcast 'hide_loader'

      do @in

  in: ->
    # @container.fadeIn 'fast'