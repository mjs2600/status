$(document).ready ->
  Post =
    initialize: () ->
      @uploadStatuses(@newPostStream())
      @newPostStream().onValue (e) ->
        console.log e

    newPostStream: ->
      newPostFormStream = $("#new-post").submitE()
      newPostFormStream.onValue((e) -> e.preventDefault())
      newPostFormStream.map (e) ->
        $(e.target).find("#status-input").val()


    uploadStatuses: (stream) ->
      statusRequest = stream.map (status) ->
        type: "POST"
        url: "/post/new"
        data: {status: status}
      statusRequest.onValue (request) ->
        console.log "hey"
        $.ajax(request)

  Post.initialize()
