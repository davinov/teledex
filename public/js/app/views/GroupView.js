define( [ 'App', 'marionette', 'handlebars', 'models/Group', 'text!templates/group.html'],
    function( App, Marionette, Handlebars, GroupModel, template) {
        //ItemView provides some default rendering logic
        return Marionette.ItemView.extend( {
            //Template HTML string
            template: Handlebars.compile(template),
            initialize: function() {
                this.listenTo(this.model, "change", this.render);
            },
            model: new GroupModel({
                id: this.id
            }),
            // View Event Handlers
            events: {

            }
        });
    });