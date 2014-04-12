var express = require('express');
var router = express.Router();


/* GET explore */
router.get('/explore', function(req, res) {
  res.render('explore', {});
});

module.exports = router;