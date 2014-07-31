class AboutDirective extends Directive
  constructor: ->
    return {
      restrict: 'E'
      controller: 'aboutController'
    }