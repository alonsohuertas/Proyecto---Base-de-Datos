
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
('Vacunación', 4500),
('Cirugía menor', 42700),
('Cirugía mayor', 63700),
('Hospitalización', 82000),
('Radiografía', 24650),
('Ecografía', 31000),
('Análisis de laboratorio', 17600),
('Peluquería canina', 9000);
('Limpieza dental', 13500),
('Corte de uñas', 2500);


INSERT INTO Cita (Fecha, Hora, Cedula_Cliente, ID_Mascota, Cedula_Empleado) 
VALUES
('2024-04-29', '15:30:00', '101700655', 11, '208040975', 6),
('2024-04-30', '09:00:00', '202790933', 1, '10490456', 1),
('2024-05-03', '16:00:00', '106420358', 9, '302450485', 4),
('2024-05-04', '10:00:00', '201700653', 3, '204060507', 3),
('2024-05-06', '09:30:00', '202790935', 10, '104740904', 5),
('2024-05-06', '10:30:00', '401700654', 8, '204060507', 3),
('2024-05-06', '15:00:00', '106420357', 5, '104740904', 5),
('2024-05-07', '14:00:00', '202790934', 7, '207340954', 2);



INSERT INTO Proveedor (ID_Proveedor, Nombre, Direccion, Telefono) 
VALUES 
('3-101-150452', 'Alimentos San Rafael', 'Alajuela', '22404086'),
('3-105-430489', 'Suministros Veterinarios S.A.', 'Alajuela, Costa Rica', '64504756'),
('3-101-467704', 'Laboratorios H&H', 'Cartago, Costa Rica', '22904534'),
('3-101-128761', 'Zoofarmaceutica', 'Heredia, Costa Rica', '83107060'),
('3-102-514394', 'NutriPet', 'San José', '22705684'),
('3-105-217496', 'Solis Agropecuarios', 'Limón, Costa Rica', '86461657'),
('3-101-234704', 'VetPharma Solutions', 'Cartago', '86106575');


INSERT INTO Producto (Marca, Nombre, Descripción, Costo, ID_Proveedor, ID_Tipo_Producto)
VALUES 
('NutriSource', 'Chicken & Rice', 'Alimento Adultos', 11200, '3-102-514394', 1),
('NutriSource', 'S&M Chicken & Rice', 'Alimento Cachorros', 13000, '3-102-514394', 1),
('NutriSource', 'Lamb Meal & Rice', 'Alimento Adultos', 12000, '3-102-514394', 1),
('Purina', 'Pro Plan Sensitive Skin', 'Alimento Adultos', 16250, '3-102-514394', 1),
('Propet', 'Adulto', 'Alimento Adultos', 2500, '3-101-150452', 1),
('Purina', 'Alpo', 'Alimento Adultos', 3500, '3-101-150452', 1),
('Pedigree', 'Adulto Nutricion Completa', 'Alimento Adultos', 6000, '3-101-150452', 1),
('Ascan', 'Adulto', 'Alimento Adultos', 4200, '3-101-150452', 1),
('Ascan', 'Cachorro', 'Alimento Cachorros', 3900, '3-101-150452', 1),
('NutriSource', 'Cat & Kitten Chicken & Rice', 'Alimento Adultos', 12200, '3-102-514394', 2),
('1st Choice', 'Indoor Vitality', 'Alimento Adultos', 14200, '3-102-514394', 2),
('1st Choice', 'Healthy Start', 'Alimento Cachorros', 12200, '3-102-514394', 2),
('Purina', 'Cat Chow Adultos Hogareños', 'Alimento Adultos', 6100, '3-101-150452', 2),
('Purina', 'Cat Chow Gatitos', 'Alimento Cachorros', 7100, '3-101-150452', 2),
('Whiskas', 'Pescado', 'Alimento Adultos', 5700, '3-101-150452', 2),
('Whiskas', 'Carne', 'Alimento Adultos', 5600, '3-101-150452', 2),
('Easygroom', 'Shampoo Madero Negro', 'Producto de Aseo', 7000, '3-105-217496', 7),
('Bayer', 'Bolfo Anti-pulgas', 'Producto de Aseo', 9000, '3-105-217496', 7),
('Propet', 'Talco', 'Producto de Aseo', 1800, '3-105-217496', 7),
('NexGard', 'Tabletas', 'Antiparasitario', 11300, '3-101-234704', 5),
('Bravecto', 'Tabletas', 'Antiparasitario', 12300, '3-101-234704', 5),
('Bravecto', 'Plus', 'Antiparasitario', 10700, '3-101-234704', 6),
('Bayer', 'Advantage Multi', 'Antiparasitario', 9100, '3-101-234704', 6),
('Nobivac', 'Rabia', 'Vacuna', 11300, '3-101-128761', 3),
('Nobivac', 'Puppy DP', 'Vacuna', 10650, '3-101-128761', 3),
('Nobivac', 'DAPPvL2', 'Vacuna', 10700, '3-101-128761', 3),
('Vanguard', 'Plus 5', 'Vacuna', 8450, '3-101-128761', 4),
('Canigen', 'MHA2L Triple', 'Vacuna', 9300, '3-101-128761', 4);



INSERT INTO Tipo_Producto (Descripción, Especie) 
VALUES 
('Alimento', 'Perro'),
('Alimento', 'Gato'),
('Vacuna', 'Perro'),
('Vacuna', 'Gato'),
('Medicamento Antiparasitario', 'Perro'),
('Medicamento Antiparasitario', 'Gato'),
('Producto de Aseo', 'Perro'),
('Producto de Aseo', 'Gato'),



INSERT INTO Inventario (ID_Producto, Cantidad) 
VALUES 
(1, 50),
(2, 40),
(3, 60),
(4, 35),
(5, 80),
(6, 75),
(7, 70),
(8, 65),
(9, 55),
(10, 45),
(11, 50),
(12, 40),
(13, 60),
(14, 35),
(15, 80),
(16, 75),
(17, 70),
(18, 65),
(19, 55),
(20, 45),
(21, 50),
(22, 40),
(23, 60),
(24, 35),
(25, 80),
(26, 75),
(27, 70),
(28, 65);


INSERT INTO Factura (Fecha, Total, ID_Cliente) 
VALUES 
();


INSERT INTO Factura_Servicio (ID_Factura, ID_Servicio, Cantidad) VALUES 
();