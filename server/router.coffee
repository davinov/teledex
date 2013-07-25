widget_types_controller = require './controllers/widget_types_controller'
widgets_controller = require './controllers/widgets_controller'

class Router
	constructor: (@server) ->
		console.log 'Setting up routes'
		@setup_routes()

	setup_routes: ->
		# GET /hello
		# test route (should be removed somedays)
		@server.get '/hello', (req, res, next) ->
			res.send 'Hi!'
			next()

		# GET /api/widget_types
		# Return the list of available widget types
		@server.get '/api/widget_types', widget_types_controller.index

		# POST /api/widgets
		# Create a new widget
		@server.post '/api/widgets', widgets_controller.create
	

exports.Router = Router