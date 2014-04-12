var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res) {
    res.render('homepage', {
        currentUser: ''
    });
});

/* GET explore */
router.get('/explore', function (req, res) {
    res.render('explore', {
        currentUser: ''
    });
});

/* GET login */
router.get('/login', function (req, res) {
    res.render('login', {
        currentUser: ''
    });
});

/* GET explore */
router.get('/register', function (req, res) {
    res.render('register', {
        currentUser: ''
    });
});

module.exports = router;