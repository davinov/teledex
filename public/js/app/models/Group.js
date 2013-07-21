define(["jquery", "backbone"],
    function ($, Backbone) {
        // Creates a new Backbone Model class object
        var Group = Backbone.Model.extend({
            urlRoot: "api/group",
            initialize:function () {
                this.fetch();
            },

            // Default values for all of the Model attributes
            defaults:{
                name: "Undefined group",
                description: "Description",
                icon: "",
                type: "",
                searchable: false,
                members:[],
                widgets: []
            },

            // Get's called automatically by Backbone when the set and/or save methods are called (Add your own logic)
            validate:function (attrs) {

            }
        });

        return Group;
    }
);