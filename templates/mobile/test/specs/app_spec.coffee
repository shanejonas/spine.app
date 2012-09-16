App = helper.require 'index'

describe 'App', ->

  it 'should noop', ->
    App.should.not.be.undefined
