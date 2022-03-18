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


//app.get('/', function(req, res) {
  //res.send("../web/home.html");
//});

function getAllEmpleados() {
  
  let rawdata = fs.readFileSync('./empleados.json');
  let data = JSON.parse(rawdata);
  return data;
}

function getEmpleado(id) {
  let dato = getAllEmpleados().find(empleado => empleado.id === parseInt(id));
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
  if (dato) {
    return res.json({
        msg: "Usuario filtrado por id",
        body: `Datos: ${dato}`,
        data: dato
    });
  } else {
    return res.json({
        msg: "Usuario filtrado por id",
        body: `No existe id empleado 1-100 es el rango.`,
        data: dato
    });
  }
})
app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(express.static('static'));

// depósito de datos temporal

let clientes = []; 

app.post('/api/clientes/add', (req, res, next) => {
  const cliente = req.body;
  if(!cliente) {
    return res.status(400).json({error: 'No hay datos'});
  }
  cliente.no = clientes.length + 1;
  console.log(cliente);
  clientes.push(cliente);
 
  return res.status(200).json(clientes);
});


app.all('/', (req, res, next) => {
  return res.status(200).json({message: 'Servidor listo'})
});

//app.listen(8080);
app.listen(port);

module.exports = getAllEmpleados, getEmpleado;