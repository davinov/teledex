restify = require 'restify'
config = require('./config').config
router = require './router'
db = require './db'


# Create the server
server = restify.createServer name: config.server.name
server.use restify.queryParser()  # Parses the HTTP query string

server.listen config.server.port, -> console.log "#{server.name} listening on #{server.url}"

# Connect to MongoDB
mongoose = new db.MongoConnector(config.db.url).connect()

# Set up the router
router = new router.Router server