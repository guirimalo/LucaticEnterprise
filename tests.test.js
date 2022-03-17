const getAllEmpleados = require('./index');
describe('Comprobaciones de ejemplos de datos', () => {
    test('nombre del empleado 2 está vacío', () => {
        let nombre = getAllEmpleados()[1]['nombre'];
        expect(nombre).toBe("");
    });

    test('nombre del empleado 3 es Lillian', () => {
        let nombre = getAllEmpleados()[2]['nombre'];
        expect(nombre).toBe("Lillian");
    });

    test('dirección del empleado 5 es 986 Jewel Street, Bowie, Montana, 3606', () => {
        let direccion = getAllEmpleados()[4]['address'];
        expect(direccion).toBe("986 Jewel Street, Bowie, Montana, 3606");
    });
  
  });