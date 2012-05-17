// source: https://gist.github.com/1712984

var hem = new (require('hem'));
var haml = require('haml');
var eco = require('eco');
var fs = require('fs');
var argv = process.argv.slice(2);

hem.compilers.haml = function(path) {
  var content = fs.readFileSync(path, 'utf8')
  var template;
  template = haml(content)()
  template = eco.precompile(template)

  return 'module.exports = ' + template;
};

hem.exec(argv[0]);