mongoose = require 'mongoose'
WidgetType = require('../models/widget_type').WidgetType


# Asynchronous validator which checks wether the given WidgetType id exists in database
widgetTypeExists = (id, respond) ->
	WidgetType.findById @widgetTypeId, (err, widget_type) -> respond widget_type?

# Schema
schema = new mongoose.Schema 
	widgetTypeId: 
		type: mongoose.Schema.ObjectId
		required: true
		validate: [widgetTypeExists, 'unknown widgetTypeId']
	name: 
		type: String
		require: true


exports.Widget = mongoose.model 'widgets', schema