const express = require("express");
const app = express();
const port = process.env.PORT || 3001;

// Motor de plantilla
const hbs = require('hbs');
hbs.registerPartials(__dirname + '/views/partials', function (err) {});
app.set('view engine', 'hbs');
app.set("views", __dirname + "/views");

app.use(express.static(__dirname + "/public"));

// Leer fichero
const fs = require('fs');

let rawdata = fs.readFileSync('./empleados.json');
let data = JSON.parse(rawdata);

//app.get('/', function(req, res) {
  //res.send("../web/home.html");
//});

function getAllEmpleados() {
  return data;
}

app.get('/empleados', function(req, res) {
  res.setHeader('Content-Type', 'application/json');
  res.send(getAllEmpleados());
});

app.listen(8080);