class Header extends Controller
  constructor: (@$scope, @$rootScope, @$element, @$location) ->
    @handle_route_change @$location.$$path

    @$rootScope.$on "$routeChangeStart", (e, next, current) =>
      @handle_route_change next.originalPath

  handle_route_change: (@path) ->
    do @reset_active
    do @make_active

  reset_active: ->
    @$element.find('ul li a').removeClass 'active'

  make_active: ->
    @$element.find("ul li a[href='#{@path}']").addClass 'active'