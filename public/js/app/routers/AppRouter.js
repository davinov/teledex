define(['marionette', 'controllers/Controller'],
    function(Marionette, Controller) {
        return Marionette.AppRouter.extend({
            appRoutes: {
                "": "home",
                "group/:id": "group"
            }
        });
    }
);