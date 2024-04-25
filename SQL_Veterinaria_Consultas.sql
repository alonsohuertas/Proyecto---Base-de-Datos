
--CONSULTAS


--Productos más vendidos por proveedor:
SELECT Pr.Nombre, P.Nombre, COUNT(*) as Cantidad
FROM Detalle_Factura DF
JOIN Producto P ON DF.ID_Producto = P.ID_Producto
JOIN Proveedor Pr ON P.ID_Proveedor = Pr.ID_Proveedor
GROUP BY Pr.Nombre, P.Nombre
ORDER BY Cantidad DESC;


--Servicios más solicitados por mascota:
SELECT M.Nombre, S.Descripcion, COUNT(*) as Cantidad
FROM Detalle_Factura DF
JOIN Servicio S ON DF.ID_Servicio = S.ID_Servicio
JOIN Cita C ON DF.ID_Factura = C.ID_Cita
JOIN Mascota M ON C.ID_Mascota = M.ID_Mascota
GROUP BY M.Nombre, S.Descripcion
ORDER BY Cantidad DESC;


--Cantidad de citas por empleado y cliente:
SELECT E.Nombre, Cl.Nombre, COUNT(*) as Cantidad
FROM Cita C
JOIN Empleado E ON C.Cedula_Empleado = E.Cedula
JOIN Cliente Cl ON C.Cedula_Cliente = Cl.Cedula
GROUP BY E.Nombre, Cl.Nombre;


--Cantidad de citas por mascota y servicio:
SELECT M.Nombre, S.Descripcion, COUNT(*) as Cantidad
FROM Cita C
JOIN Mascota M ON C.ID_Mascota = M.ID_Mascota
JOIN Servicio S ON C.ID_Servicio = S.ID_Servicio
GROUP BY M.Nombre, S.Descripcion;


--Total de ventas por cliente y producto:
SELECT Cl.Nombre, P.Nombre, SUM(F.Total) as Ventas
FROM Factura F
JOIN Detalle_Factura DF ON F.ID_Factura = DF.ID_Factura
JOIN Cliente Cl ON F.ID_Cliente = Cl.Cedula
JOIN Producto P ON DF.ID_Producto = P.ID_Producto
GROUP BY Cl.Nombre, P.Nombre;


--Cantidad de productos en inventario por tipo de producto y proveedor:
SELECT TP.Descripción, Pr.Nombre, SUM(I.Cantidad) as Total
FROM Inventario I
JOIN Producto P ON I.ID_Producto = P.ID_Producto
JOIN Tipo_Producto TP ON P.ID_Tipo_Producto = TP.ID_Tipo_Producto
JOIN Proveedor Pr ON P.ID_Proveedor = Pr.ID_Proveedor
GROUP BY TP.Descripción, Pr.Nombre;


--Cantidad de citas por cliente y servicio:
SELECT Cl.Nombre, S.Descripcion, COUNT(*) as Cantidad
FROM Cita C
JOIN Cliente Cl ON C.Cedula_Cliente = Cl.Cedula
JOIN Servicio S ON C.ID_Servicio = S.ID_Servicio
GROUP BY Cl.Nombre, S.Descripcion;


--Total de ventas por producto y servicio:
SELECT P.Nombre, S.Descripcion, SUM(F.Total) as Ventas
FROM Factura F
JOIN Detalle_Factura DF ON F.ID_Factura = DF.ID_Factura
JOIN Producto P ON DF.ID_Producto = P.ID_Producto
JOIN Servicio S ON DF.ID_Servicio = S.ID_Servicio
GROUP BY P.Nombre, S.Descripcion;


--Mascotas que han tenido más de 2 citas y cuyo dueño vive en ‘Ciudad Quesada’:
SELECT M.Nombre, COUNT(*) as Cantidad
FROM Cita C
JOIN Mascota M ON C.ID_Mascota = M.ID_Mascota
JOIN Cliente Cl ON M.Cedula_Cliente = Cl.Cedula
WHERE Cl.Ciudad = 'Ciudad Quesada'
GROUP BY M.Nombre
HAVING COUNT(*) > 2;


--Empleados que han atendido citas de mascotas de la especie ‘Perro’ más de 2 veces:
SELECT E.Nombre, COUNT(*) as Cantidad
FROM Cita C
JOIN Empleado E ON C.Cedula_Empleado = E.Cedula
JOIN Mascota M ON C.ID_Mascota = M.ID_Mascota
WHERE M.Especie = 'Perro'
GROUP BY E.Nombre
HAVING COUNT(*) > 2;


SELECT Cl.Nombre, COUNT(*) as Cantidad
FROM Factura F
JOIN Detalle_Factura DF ON F.ID_Factura = DF.ID_Factura
JOIN Cliente Cl ON F.ID_Cliente = Cl.Cedula
JOIN Producto P ON DF.ID_Producto = P.ID_Producto
WHERE P.Marca = 'NutriPet'
GROUP BY Cl.Nombre
HAVING COUNT(*) > 3;


--Clientes que han comprado productos de la marca ‘NutriSource’  y la cantidad adquirida:
SELECT Cl.Nombre, COUNT(*) as Cantidad
FROM Factura F
JOIN Detalle_Factura DF ON F.ID_Factura = DF.ID_Factura
JOIN Cliente Cl ON F.ID_Cliente = Cl.Cedula
JOIN Producto P ON DF.ID_Producto = P.ID_Producto
WHERE P.Marca = 'NutriSource'
GROUP BY Cl.Nombre