express = require("express")
path = require("path")
favicon = require("static-favicon")
logger = require("morgan")
cookieParser = require("cookie-parser")
bodyParser = require("body-parser")
request = require("request")
routes = require("./routes/index")
app = express()

# view engine setup
app.set "views", path.join(__dirname, "views")
app.set "view engine", "jade"
app.use favicon()
app.use logger("dev")
app.use bodyParser.json()
app.use bodyParser.urlencoded()
app.use cookieParser()
app.use require('express-coffee')
  path: path.join(__dirname, "public")
app.use express.static(path.join(__dirname, "public"))

app.use "/api", (req, res) ->
  url = "www.asterank.com/api/" + req.url
  r = null
  if req.method is "POST"
    r = request.post(
      uri: url
      json: req.body
    )
  else
    r = request(url)
  req.pipe(r).pipe res

app.use "/", routes

#/ catch 404 and forwarding to error handler
app.use (req, res, next) ->
  err = new Error("Not Found")
  err.status = 404
  next err

#/ error handlers

# development error handler
# will print stacktrace
if app.get("env") is "development"
  app.use (err, req, res, next) ->
    res.status err.status or 500
    res.render "error",
      message: err.message
      error: err

# production error handler
# no stacktraces leaked to user
app.use (err, req, res, next) ->
  res.status err.status or 500
  res.render "error",
    message: err.message
    error: {}

module.exports = app
