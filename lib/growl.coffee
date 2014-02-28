GrowlView = require './growl-view'
GrowlNotification = require './growl-notification'

module.exports =
  growlView: null

  activate: (state) ->
    @growlView = new GrowlView(state.growlViewState)

  deactivate: ->
    @growlView.destroy()

  serialize: ->
    growlViewState: @growlView.serialize()
