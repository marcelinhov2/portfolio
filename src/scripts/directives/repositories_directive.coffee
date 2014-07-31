class RepositoriesDirective extends Directive
  constructor: ->
    return {
      restrict: 'E'
      controller: 'repositoriesController'
    }