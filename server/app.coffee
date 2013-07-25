restify = require 'restify'
config = require('./config').config
Router = require('./router').Router
MongoConnector = require('./db').MongoConnector


# Create the server
server = restify.createServer name: config.server.name
server.use restify.queryParser()  # Parses the HTTP query string

server.listen config.server.port, -> console.log "#{server.name} listening on #{server.url}"
server.on 'after', (e) -> 
	d = new Date()
	r = e.connection.parser.incoming.route
	console.log "#{d.getFullYear()}-#{d.getMonth()}-#{d.getDate()} #{d.getHours()}:#{d.getMinutes()} :: #{r.method} #{r.path}"

# Connect to MongoDB
new MongoConnector(config.db.url).connect()

# Set up the router
router = new Router server