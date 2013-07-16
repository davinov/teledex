mongoose = require 'mongoose'


schema = new mongoose.Schema {name: String}

exports.WidgetType = mongoose.model 'widget_types', schema