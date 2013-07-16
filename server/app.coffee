restify = require 'restify'
config = require('./config').config

server = restify.createServer name: config.server.name
server.use restify.queryParser()  # Parses the HTTP query string

server.listen config.server.port, -> console.log "#{server.name} listening on #{server.url}"