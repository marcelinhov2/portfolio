class App extends Controller
  constructor: (@$scope, @$rootScope) ->
    @$rootScope.$on 'show_loader', @show_loader
    @$rootScope.$on 'hide_loader', @hide_loader

  show_loader: ->
    console.log 'show_loader'

  hide_loader: ->
    console.log 'hide_loader'