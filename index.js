const express = require("express");
const app = express();
const port = process.env.PORT || 3001;

var distDir = __dirname + "/web/";
 app.use(express.static(distDir));

// Motor de plantilla
const hbs = require('hbs');
hbs.registerPartials(__dirname + '/views/partials', function (err) {});
app.set('view engine', 'hbs');
app.set("views", __dirname + "/views");

app.use(express.static(__dirname + "/public"));

// Leer fichero
const fs = require('fs');

function getAllEmpleados() {  
  let rawdata = fs.readFileSync('./empleados.json');
  let data = JSON.parse(rawdata);
  return data;
}

function getEmpleado(id) {
  let dato = null;
  if(Number(id) >= Number(1) && Number(id) <= Number(100)) {
    dato = getAllEmpleados().find(empleado => empleado.id === parseInt(id));
  }
  return dato;
}

app.get('/equipo', function(req, res) {
  res.render('equipo');

  
});
app.get('/service', function(req, res) {
  res.render('service');

});

app.get('/', function(req, res) {
  res.render('home');

});

app.get('/contacto', function(req, res) {
  res.render('contacto');

});


app.get('/empleados', function(req, res) {
  res.setHeader('Content-Type', 'application/json');
  res.send(getAllEmpleados());
});


app.get("/empleados/:id", (req, res) => {
  const { id } = req.params;
  let dato = getEmpleado(id);
  if (dato != null) {
    return res.json({
        msg: "Empleado:",
        body: `Datos: ${dato}`,
        data: dato
    });
  } else {
    return res.status(404).json({body: `Empleado no encontrado dentro del rango 1-100`}).end();
  }
})
//app.listen(8080);
app.listen(port);

module.exports = {getAllEmpleados, getEmpleado};