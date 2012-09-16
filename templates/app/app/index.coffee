require './lib/setup'

Spine = require 'spine'

class App extends Spine.Controller
  constructor: ->
    @log 'booted'
    super

module.exports = App
