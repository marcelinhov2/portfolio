class App extends Controller
  constructor: (@$scope, @$rootScope, @$element) ->
    do @cache_DOM_elements
    do @adjust_layout

    do @set_triggers

  cache_DOM_elements: ->
    @window = $(window)
    @content = @$element.find '#content'

  set_triggers: ->
    @window.resize @adjust_layout

  adjust_layout: =>
    window_height = @window.height()
    header_height = 57
    footer_height = 60

    @content.height window_height - ( header_height + footer_height )