{View} = require 'atom'

module.exports =
class GrowlNotification extends View
  @content: (params) ->
    @li =>
      @div class: 'growl-item', =>
        @div params.message, class: "alert #{params.type}"

  add: ->
    console.log "adding notificaiton"

  message: =>
    @message
