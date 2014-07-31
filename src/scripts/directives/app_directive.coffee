class AppDirective extends Directive
  constructor: ->
    return {
      restrict: 'A'
      controller: 'appController'
    }