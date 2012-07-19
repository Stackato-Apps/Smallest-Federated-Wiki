# **defaultargs.coffee** when called on the argv object this
# module will create reasonable defaults for options not supplied,
# based on what information is provided.
path = require 'path'

if process.env.VCAP_APPLICATION
  conf = JSON.parse(process.env.VCAP_APPLICATION)
  conf.url = conf["uris"][0]

module.exports = (argv) ->
  argv or= {}
  argv.o or= ''
  argv.p or= 3000
  argv.r or= path.join(__dirname, '..', '..', '..')
  argv.d or= path.join(argv.r, 'data')
  argv.c or= path.join(argv.r, 'client')
  argv.db or= path.join(argv.d, 'pages')
  argv.status or= path.join(argv.d, 'status')
  argv.u or= 'http://' + conf.url
  argv.s or= 'welcome-visitors'
  argv.id or= path.join(argv.status, 'open_id.identity')
  argv
