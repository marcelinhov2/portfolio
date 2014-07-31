class App extends Controller
  constructor: (@$scope, @$rootScope, @$element) ->
    do @cache_DOM_elements
    do @adjust_layout

    do @set_triggers

    @$rootScope.$on 'show_loader', @show_loader
    @$rootScope.$on 'hide_loader', @hide_loader

  cache_DOM_elements: ->
    @window = $(window)
    @content = @$element.find '#content'
    @view = @content.find '#ng_view'
    @loader = @content.find '#loader'

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

  hide_loader: =>
    @loader.fadeOut 'slow'