fs = require 'fs'
jsdom = require 'jsdom'
global.document = jsdom.jsdom fs.readFileSync __dirname + '/../public/index.html'
global.window = window = document.createWindow()
global.$ = require 'jqueryify'

class Helper
  require: (path) ->
    require('../app/' + path)

root.helper = new Helper
