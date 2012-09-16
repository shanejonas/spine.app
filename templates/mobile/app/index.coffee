require './lib/setup'

Spine   = require('spine')
{Stage} = require('spine.mobile')

class App extends Stage.Global
  constructor: ->
    super
    @footer.html require './views/navbar/navbar'
    @log 'booted'

module.exports = App
