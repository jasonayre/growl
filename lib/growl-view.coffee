{View} = require 'atom'

GrowlNotification = require './growl-notification'

module.exports =
class GrowlView extends View
  @content: ->
    @div class: 'growl overlay from-top', =>
      @ul outlet: "list"
        # @li new GrowlNotification(body: "whatever")

        # @subview 'growNotifications', new GrowlNotification(body: "whatever")

  initialize: (serializeState) ->
    atom.workspaceView.command "growl:toggle", => @toggle()
    @add("blah", "blahhh")

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  add: (text, type) ->
    @list.append =>
      new GrowlNotification(message: text, type: type)

  toggle: ->
    console.log "GrowlView was toggled!"

    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
