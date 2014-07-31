class App extends Controller
  constructor: (@$scope, @$rootScope, @$element) ->
    do @cache_DOM_elements
    do @adjust_layout

    do @set_triggers

    @$scope.$on 'show_loader', @show_loader
    @$scope.$on 'hide_loader', (event, callback) => 
      @hide_loader callback

  cache_DOM_elements: ->
    @window = $(window)
    @content = @$element.find '#content'
    @view = @content.find '#ng_view'
    @loader = @$element.find '#loader'

  set_triggers: ->
    @window.resize @adjust_layout

  adjust_layout: =>
    window_height = @window.height()
    header_height = 57
    footer_height = 60

    @content.height window_height - ( header_height + footer_height )
    @view.height window_height - ( header_height + footer_height )

  show_loader: =>
    @loader.fadeIn 'fast'

  hide_loader: (callback) =>
    @loader.fadeOut 'slow', ->
      do callback if callback