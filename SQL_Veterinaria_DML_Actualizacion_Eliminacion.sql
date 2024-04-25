
--INSTRUCCIONES - Actualizacion y Eliminacion de Datos


UPDATE Cliente
SET Correo = 'amypr2000@gmail.com'
WHERE Cedula = '201700653';


UPDATE Cliente
SET Telefono = '68923053', Ciudad = 'Palmares'
WHERE Nombre = 'Carlos' AND Apellido = 'Morales';


UPDATE Mascota
SET Fecha_Nacimiento = '2020-05-01'
WHERE Nombre = 'Manchas';


DELETE FROM Mascota
WHERE Cedula_Cliente = '106420357';


UPDATE Empleado
SET Posicion = 'Recepcionista'
WHERE Cedula = '10490456';


UPDATE Servicio
SET Costo = Costo * 0.10
WHERE Descripcion = 'Consulta Veterinaria';


UPDATE Servicio
SET Costo = (SELECT Costo FROM Servicio WHERE Descripcion = 'Cirugía mayor')
WHERE Descripcion = 'Cirugía menor';


DELETE FROM Cita
WHERE Fecha = '2024-05-06';


DELETE FROM Cita
WHERE Hora = '15:30:00' AND Cedula_Cliente = '101700655';


UPDATE Proveedor
SET Nombre = 'ZooFarm', Telefono = '83107061'
WHERE ID_Proveedor = '3-101-128761';


UPDATE Proveedor
SET Ciudad = 'San Carlos'
WHERE Nombre = 'NutriPet';