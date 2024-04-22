
--INSTRUCCIONES DML - Inserci�n de Datos


INSERT INTO Cliente (Cedula, Nombre, Apellido, Ciudad, Telefono)
VALUES
('202790933', 'Ana', 'Castro', 'Ciudad Quesada', '85728260'),
('201700653', 'Amy', 'Perez', 'Florencia', '60495621'),
('106420357', 'Mario', 'Rojas', 'Naranjo', '85017246'),
('202790934', 'Carlos', 'Morales', 'Ciudad Quesada', '85728261'),
('401700654', 'Luis', 'Fernandez', 'Zarcero', '60495622'),
('106420358', 'Patricia', 'Mendez', 'Quesada', '85017247'),
('202790935', 'Gabriela', 'Ramirez', 'Fortuna', '85728262'),
('101700655', 'Ricardo', 'Gonzalez', 'Venecia', '60495623'),
('106420359', 'Sofia', 'Navarro', 'Aguas Zarcas', '85017248'),
('202790936', 'Diego', 'Vargas', 'Pital', '85728263'),
('301700656', 'Andrea', 'Salazar', 'Santa Rosa', '60495624'),
('506420360', 'Jose', 'Ure�a', 'La Tigra', '85017249'),
('502790937', 'Daniela', 'Quesada', 'Los Chiles', '85728264');


INSERT INTO Mascota (Nombre, Especie, Raza, Genero, Fecha_Nacimiento, Cedula_Cliente) 
VALUES 
('Rosco', 'Perro', 'Labrador', 'M', '2020-01-01', '202790933'),
('Manchas', 'Gato', 'Siames', 'H', '2019-05-01', '202790933'),
('Rex', 'Perro', 'Golden Retriever', 'M', '2018-03-01', '201700653'),
('Pelusa', 'Gato', 'Persa', 'H', '2017-06-01', '106420357'),
('Luna', 'Gato', 'Angora', 'M', '2020-08-01', '106420357'),
('Boby', 'Perro', 'Poodle', 'M', '2019-07-01', '202790934'),
('Toby', 'Perro', 'Beagle', 'M', '2021-02-01', '202790934'),
('Max', 'Perro', 'Bulldog', 'M', '2018-04-01', '401700654'),
('Lucy', 'Perro', 'Pug', 'H', '2020-02-01', '106420358'),
('Charlie', 'Perro', 'Dalmata', 'M', '2019-09-01', '202790935'),
('Simba', 'Gato', 'Bengal', 'M', '2018-11-01', '101700655'),
('Rocky', 'Perro', 'Rottweiler', 'M', '2019-12-01', '106420359'),
('Coco', 'Perro', 'Chihuahua', 'M', '2020-03-01', '202790936'),
('Tiger', 'Gato', 'Persa', 'M', '2018-04-01', '202790936'),
('Oliver', 'Perro', 'Pomeranian', 'M', '2020-06-01', '301700656'),
('Sandy', 'Perro', 'Yorkshire Terrier', 'H', '2018-07-01', '506420360'),
('Bella', 'Perro', 'French Bulldog', 'H', '2020-09-01', '502790937'),
('Chloe', 'Gato', 'Angora', 'H', '2019-11-01', '502790937');


INSERT INTO Empleado (Cedula, Nombre, Apellido, Posicion)
VALUES
('10490456', 'Roberto', 'Gomez', 'Veterinario'),
('207340954', 'Maria', 'Lopez', 'Asistente'),
('204060507', 'Mateo', 'Martinez', 'Recepcionista'),
('302450485', 'Ana', 'Fernandez', 'Veterinario'),
('104740904', 'Carlos', 'Rodriguez', 'Asistente'),
('208040975', 'Fernanda', 'Morales', 'Recepcionista'),
('205040780', 'Sofia', 'Ramirez', 'Asistente'),
('207720466', 'Gabriela', 'Perez', 'Veterinario');


INSERT INTO Servicio (Descripcion, Costo) 
VALUES 
('Consulta Veterinaria', 8000),
('Vacunaci�n', 4500),
('Cirug�a menor', 42700),
('Cirug�a mayor', 63700),
('Hospitalizaci�n', 82000),
('Radiograf�a', 24650),
('Ecograf�a', 31000),
('An�lisis de laboratorio', 17600),
('Peluquer�a canina', 9000);
('Limpieza dental', 13500),
('Corte de u�as', 2500);


INSERT INTO Cita (Fecha, Hora, Cedula_Cliente, ID_Mascota, Cedula_Empleado) 
VALUES



INSERT INTO Proveedor (ID_Proveedor, Nombre, Direccion, Telefono) 
VALUES 
();


INSERT INTO Producto (Nombre, Descripci�n, Costo, ID_Proveedor, ID_Tipo_Producto)
VALUES 
();


INSERT INTO Tipo_Producto (Descripci�n, Especie) 
VALUES 
();


INSERT INTO Inventario (ID_Producto, Cantidad) 
VALUES 
();


INSERT INTO Factura (Fecha, Total, ID_Cliente) 
VALUES 
();


INSERT INTO Factura_Servicio (ID_Factura, ID_Servicio, Cantidad) VALUES 
();