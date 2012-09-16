require './lib/setup'

Spine   = require('spine')
{Stage} = require('spine.mobile')

class App extends Stage.Global
  constructor: ->
    @log 'booted'
    super

module.exports = App
