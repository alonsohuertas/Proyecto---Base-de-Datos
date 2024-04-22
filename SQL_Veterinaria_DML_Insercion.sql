
--INSTRUCCIONES DML - Inserción de Datos

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
('506420360', 'Jose', 'Ureña', 'La Tigra', '85017249'),
('502790937', 'Daniela', 'Quesada', 'Los Chiles', '85728264')
;


INSERT INTO Mascota (ID_Mascota, Nombre, Especie, Raza, Genero, Fecha_Nacimiento, Cedula_Cliente) 
VALUES 
();


INSERT INTO Empleado (Cedula, Nombre, Apellido, Posicion)
VALUES
();


INSERT INTO Servicio (ID_Servicio, Descripcion, Costo) 
VALUES 
();


INSERT INTO Cita (ID_Cita, Fecha, Hora, Cedula_Cliente, ID_Mascota, Cedula_Empleado) 
VALUES
();


INSERT INTO Proveedor (ID_Proveedor, Nombre, Direccion, Telefono) 
VALUES 
();


INSERT INTO Producto (ID_Producto, Nombre, Descripción, Costo, ID_Proveedor, ID_Tipo_Producto)
VALUES 
();


INSERT INTO Tipo_Producto (ID_Tipo_Producto, Descripción, Especie) 
VALUES 
();


INSERT INTO Inventario (ID_Inventario, ID_Producto, Cantidad) 
VALUES 
();


INSERT INTO Factura (ID_Factura, Fecha, Total, ID_Cliente) 
VALUES 
();


INSERT INTO Factura_Servicio (ID_Factura_Servicio, ID_Factura, ID_Servicio, Cantidad) VALUES 
();