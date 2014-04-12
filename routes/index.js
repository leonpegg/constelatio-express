var express, router;

express = require("express");

router = express.Router().get("/", function (req, res) {
    res.render("homepage", {
        currentUser: ""
    });
}).get('/partials/:name', function (req, res) {
    res.render('partials/' + req.params.name);
}).get("/explore", function (req, res) {
    res.render("explore", {
        currentUser: ""
    });
}).get("/login", function (req, res) {
    res.render("login", {
        currentUser: ""
    });
}).get("/register", function (req, res) {
    res.render("register", {
        currentUser: ""
    });
}).get("/profile", function (req, res) {
    res.render("profile", {
        currentUser: ""
    });
}).get("/asteroid", function (req, res) {
    res.render("asteroid", {
        currentUser: ""
    });
});

module.exports = router;