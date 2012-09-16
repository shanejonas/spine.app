describe 'App', ->
  App = helper.require 'index'

  it 'should noop', ->
    App.should.not.be.undefined
