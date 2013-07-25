WidgetType = require('../models/widget_type').WidgetType


exports.index = (req, res, next) ->
	WidgetType.find {}, (err, widget_types) ->
		console.log "Error in WidgetTypesController#index: #{err}" if err
		res.send widget_types
	next()