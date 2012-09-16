# # IOS Back Button
#
# usage:
#
# class Sup extends Panel
#   @include BackButton
#   constructor: ->
#     @addBackButton "Back", @back
#     super

module.exports =

  addBackButton: (text, callback) ->
    callback = @[callback] if typeof callback is 'string'
    button = @$('<div class="backButton" />').text(text)
    button.tap(@proxy(callback))
    @header.append(button)
    button
