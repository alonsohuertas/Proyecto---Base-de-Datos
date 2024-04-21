
--INSTRUCCIONES DML - Inserción de Datos

INSERT INTO Cliente (Cedula, Nombre, Apellido, Direccion, Telefono)
VALUES
();


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