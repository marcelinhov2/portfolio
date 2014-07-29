class FacebookPage extends Service
  url: "https://graph.facebook.com/v2.0/~PAGE_ID/feed?method=GET&format=json&suppress_http_code=1&access_token=~ACCESS_TOKEN"

  constructor: (@$http) ->

  get: (data) ->
    @url = @rewrite_url data.access_token, data.page_id

    @$http(
      method: "GET"
      url: @url
    )

  rewrite_url: (access_token, page_id) ->
    url = @url.replace('~PAGE_ID', page_id)
    url = url.replace('~ACCESS_TOKEN', access_token)