module.exports = app => {

    const posts = require("../controllers/app.js");
    var router = require("express").Router();
    // Create a new Post
    router.post("/", app.post);
    // Retrieve all Posts
    router.get("/", app.get);
    // Update a Post with id
    router.put("/:id", app.update);
    // Delete a Post with id
    router.delete("/:id", app.delete);
    
    app.use('/api/posts', router);
};