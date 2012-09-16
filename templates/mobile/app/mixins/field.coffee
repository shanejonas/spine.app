_ = require 'lodash/lodash'

# mixin for a better syntax for defining model fields
# looks like:
#
# class Player extends Model
#   @extend Field
#   @configure 'Player'
#   @field 'firstName', default: 'John'
#   @field 'lastName', default: 'Doe'
#
# TODO:
#  - add a `required: yes` param for auto validation for blank

Field =
  defaults: []

  field: (name, options) ->
    @attributes.push name
    if options?.default?
      @defaults[name] = options.default

  extended: ->
    @include
      load: (atts={}) ->
        atts = _(atts).defaults(@constructor.defaults)
        for key, value of atts
          if typeof @[key] is 'function'
            @[key](value)
          else
            @[key] = value
        this

module.exports = Field
