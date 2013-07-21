// DEPENDENCIES
// ============
var express = require("express"),
    http = require("http"),
    port = (process.env.PORT || 8001),
    server = module.exports = express();

// SERVER CONFIGURATION
// ====================
server.configure(function () {

    server.use(express["static"](__dirname + "/../public"));

    /* TEST DATA */
    server.get('/api/group/:id', function (req, res, next) {
            var id = req.param("id");
            res.json({
                id: id,
                name: "Group #"+id,
                description: "The group which has the id "+id
            });
            return next();
        }
    );

    server.use(express.errorHandler({

        dumpExceptions:true,

        showStack:true

    }));

    server.use(server.router);
});

// SERVER
// ======

// Start Node.js Server
http.createServer(server).listen(port);

console.log('Teledex frontend test server :\n http://localhost:' + port);