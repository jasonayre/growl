{View} = require 'atom'
require './growl-notification'

module.exports =
class GrowlView extends View
  @content: ->
    @div class: 'growl overlay from-top', =>
      @h1 "Spacecraft"
      @ul outlet: "list", =>
        @li "Apollo"
        @li "Soyuz"
        @li "Space Shuttle"
        @subview 'growNotifications', new GrowlNotification(body: "whatever")

  initialize: (serializeState) ->
    atom.workspaceView.command "growl:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "GrowlView was toggled!"

    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
