let funciones = require('./index');
let fs = require('fs');

function recogerJson(json) {
    let rawdata;
    let data = null;
    if(json == './empleados.json') {
        rawdata = fs.readFileSync(json);
        data = JSON.parse(rawdata);
    }
    return data;
}


describe('Comprobaciones de ejemplos de datos JSON', () => {
    test('JSON recogerJson es correcto', () => {
        expect(recogerJson('./empleados.json')).toStrictEqual(funciones.getAllEmpleados());
    });

    test('JSON recogerJson es incorrecto', () => {
        expect(recogerJson('./urlIncorrecta.json')).toBeNull();
    });
  });

  describe('Comprobaciones de ejemplos de datos valores detalle', () => {
    test('nombre del empleado 2 está vacío', () => {
        console.log(funciones.getEmpleado(Number(1)['nombre']))
        expect(funciones.getEmpleado(2)['nombre']).toBe("");
    });

    test('nombre del empleado 3 es Lillian', () => {
        expect(funciones.getEmpleado(3)['nombre']).toBe("Lilliam");
    });

    test('dirección del empleado 5 es 196 Battery Avenue, Manila, New York, 8213', () => {
        expect(funciones.getEmpleado(5)['direccion']).toBe("196 Battery Avenue, Manila, New York, 8213");
    });

    test('dirección del empleado 5 no es Granada', () => {
        expect(funciones.getEmpleado(5)['direccion']).not.toBe("Granada");
    });

    test('teléfono del empleado 7 no es +33 567567567', () => {
        expect(funciones.getEmpleado(7)['telefono']).not.toBe("+33 567567567");
    });

    test('teléfono del empleado 7 es igual a +34 (935) 517-2887', () => {
        expect(funciones.getEmpleado(7)['telefono']).toEqual("+34 (935) 517-2887");
    });

    test('password empleado 57 es estrictamente igual a 46717813', () => {
        expect(funciones.getEmpleado(57)['login'][0]['password']).toStrictEqual(Number(46717813));
    });

    test('user empleado 27 no es igual a userA23', () => {
        expect(funciones.getEmpleado(27)['login'][0]['username']).not.toEqual("userA23");
    });

    test('user empleado 27 es igual a user90', () => {
        expect(funciones.getEmpleado(27)['login'][0]['username']).toEqual("user90");
    });

    test('edad empleado 22 contiene es 38', () => {
        expect(funciones.getEmpleado(22)['edad']).toBe(38);
    });

    test('edad empleado 210 es nula', () => {
        expect(funciones.getEmpleado(210)).toBeNull();
    });
  });