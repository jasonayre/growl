GrowlView = require './growl-view'

module.exports =
  growlView: null

  activate: (state) ->
    @growlView = new GrowlView(state.growlViewState)

  deactivate: ->
    @growlView.destroy()

  serialize: ->
    growlViewState: @growlView.serialize()
