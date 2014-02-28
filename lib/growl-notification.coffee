{View} = require 'atom'

module.exports =
class GrowlNotification extends View
  @content: ->
    @div class: 'item', =>
      @div "I am a growl notifcati", class: "message"

  initialize: (serializeState) ->
    console.log serializeState
    @add()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  add: ->
    console.log "adding notificaiton"
