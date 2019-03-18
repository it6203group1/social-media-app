var express = require("express");
var bodyParser = require("body-parser");
var compression = require("compression");
var cors = require("cors");
var app = express();

app.set("port", process.env.PORT || 3000);
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors({ credentials: true, origin: true }));
app.use(compression());

app.get("/api", function(req, res) {
  // res.json(version);
  res.send('Hello World!');
});

app.all("*", function(req, res) {
  res.redirect("/");
});

app.listen(app.get("port"), function() {
  console.log(
    "App is running at http://localhost:%d in %s mode",
    app.get("port"),
    app.get("env")
  );
});

module.exports = app;
