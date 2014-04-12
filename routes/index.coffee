express = require("express")
router = express.Router()

  # GET home page. 
  .get "/", (req, res) ->
    res.render "homepage",
      currentUser: ""

  # render partial templates
  .get '/partials/:name',  (req, res) ->
    res.render 'partials/' + req.params.name

  # GET explore 
  .get "/explore", (req, res) ->
    res.render "explore",
      currentUser: ""

  # GET login 
  .get "/login", (req, res) ->
    res.render "login",
      currentUser: ""

  # GET register 
  .get "/register", (req, res) ->
    res.render "register",
      currentUser: ""

  # GET register 
  .get "/profile", (req, res) ->
    res.render "profile",
      currentUser: ""

module.exports = router
