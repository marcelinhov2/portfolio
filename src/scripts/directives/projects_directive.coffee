class ProjectsDirective extends Directive
  constructor: ->
    return {
      restrict: 'E'
      controller: 'projectsController'
    }