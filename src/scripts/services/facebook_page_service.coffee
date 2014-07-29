class FacebookPage extends Service
  access_token: "CAACEdEose0cBAPZCuZBYicQrvEiN8QbF4fqfZA3sMT65ZBm2pBRRWIJbHLQtkLbR5dQq2yySw45cXEEl3PZBldPs84XGUOlZAVC3agryzbwbaSvvoUrJxwzs7DDKi4WcWRUxQIl5U6odQ0Gd8cPTfTQTRk0PXUYWW7QcQzRHa4YMvoBNWmymeolDxIvkBZCbqqswoVs8XZCMZAgZDZD"
  page_id: 493474410666717
  url: "https://graph.facebook.com/v2.0/~PAGE_ID/feed?method=GET&format=json&suppress_http_code=1&access_token=~ACCESS_TOKEN"

  constructor: (@$http) ->

  get: ->
    url = do @rewrite_url

    @$http(
      method: "GET"
      url: url
    )

  rewrite_url: ->
    url = @url.replace('~PAGE_ID', @page_id)
    url = url.replace('~ACCESS_TOKEN', @access_token)