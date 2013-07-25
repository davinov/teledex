Widget = require('../models/widget').Widget
restify = require 'restify'


exports.create = (req, res, next) ->
	Widget.create req.params, (err, w) ->
		if err
			res.send 400, err.errors || err
		else
			res.send w
	next()