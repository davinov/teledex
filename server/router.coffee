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
	

exports.Router = Router