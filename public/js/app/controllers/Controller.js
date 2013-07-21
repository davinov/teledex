define(['App', 'backbone', 'marionette', 'views/WelcomeView', 'views/HeaderView', 'models/Group', 'views/GroupView'],
    function (App, Backbone, Marionette, WelcomeView, HeaderView, GroupModel, GroupView) {
        return Backbone.Marionette.Controller.extend({
            initialize:function (options) {
                App.headerRegion.show(new HeaderView());
            },
            home:function () {
                App.mainRegion.show(new WelcomeView());
            },
            group:function (id) {
                App.mainRegion.show(
                    new GroupView({
                            model: new GroupModel({id: id})
                        }
                    )
                );
            }
        });
    }
);