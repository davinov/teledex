mongoose = require 'mongoose'


class MongoConnector
	constructor: (@url) ->
		db = mongoose.connection
		db.on 'error', (err) -> console.log "Error while connecting to #{url}: #{err}"
		db.once 'open', -> console.log "Connected to database #{url}"

	connect: -> mongoose.connect @url


exports.MongoConnector = MongoConnector