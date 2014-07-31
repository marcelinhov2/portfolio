class Github extends Service
  constructor: (@$http) ->

  get_repos: ->
    @$http(
      method: "GET"
      url: "https://api.github.com/users/marcelinhov2/repos"
    )