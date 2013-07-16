widget_type = require '../models/widget_type'


exports.index = (req, res, next) ->
	widget_type.WidgetType.find {}, (err, widget_types) ->
		console.log "Error in WidgetTypesController#index: #{err}" if err
		res.send widget_types
	next()