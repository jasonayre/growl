{View} = require 'atom'

module.exports =
class GrowlNotification extends View
  @content: (params) ->
    @li =>
      @div class: 'item', =>
        @div params.message, class: "message"

  add: ->
    console.log "adding notificaiton"

  message: =>
    @message
