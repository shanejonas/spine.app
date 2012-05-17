class Helper
  require: (path) ->
    require('../app/' + path)

root.helper = new Helper
