# # FontAwesome button mixin
#
# usage:
#
# class Sup extends Panel
#   @include IconButton
#   constructor: ->
#     @addIconButton 'plus', @create
#     super

module.exports =

  addIconButton: (icon, callback) ->
    callback = @[callback] if typeof callback is 'string'
    button = @$('<button />').html("<i class=icon-#{icon}></i>")
    button.tap(@proxy(callback))
    @header.append(button)
    button
