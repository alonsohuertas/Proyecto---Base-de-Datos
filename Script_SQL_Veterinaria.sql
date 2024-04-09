CREATE DATABASE Veterinaria


CREATE TABLE Cliente (
Cedula VARCHAR(25),
Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Direccion VARCHAR(100),
Telefono VARCHAR(20),
CONSTRAINT PK_Cliente PRIMARY KEY (Cedula)
);



CREATE TABLE Mascota (
ID_Mascota INT,
Nombre VARCHAR(50) NOT NULL,
Especie VARCHAR(50),
Raza VARCHAR(50),
Genero CHAR(1),
Fecha_Nacimiento DATE,
Cedula_Cliente varchar(25),
CONSTRAINT PK_Mascota PRIMARY KEY (ID_Mascota),
CONSTRAINT FK_Mascota_Cliente FOREIGN KEY (Cedula_Cliente) REFERENCES Cliente (Cedula),
CONSTRAINT CHK_Genero CHECK (Genero IN ('M', 'F'))
);


CREATE TABLE Empleado (
Cedula VARCHAR(25),
Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Posicion VARCHAR(50),
CONSTRAINT PK_Empleado PRIMARY KEY (Cedula)
);


CREATE TABLE Servicio (
ID_Servicio INT,
Descripcion VARCHAR(100),
Costo DECIMAL(10, 2),
CONSTRAINT PK_Servicio PRIMARY KEY (ID_Servicio)
);


CREATE TABLE Cita (
ID_Cita INT,
Fecha DATE,
Hora TIME,
Cedula_Cliente VARCHAR(25),
ID_Mascota INT,
Cedula_Empleado VARCHAR(25),
CONSTRAINT PK_Cita PRIMARY KEY (ID_Cita),
CONSTRAINT FK_Cita_Cliente FOREIGN KEY (Cedula_Cliente) REFERENCES Cliente (Cedula),
CONSTRAINT FK_Cita_Mascota FOREIGN KEY (ID_Mascota) REFERENCES Mascota (ID_Mascota),
CONSTRAINT FK_Cita_Empleado FOREIGN KEY (Cedula_Empleado) REFERENCES Empleado (Cedula)
);



CREATE TABLE Proveedor (
ID_Proveedor VARCHAR(25),
Nombre VARCHAR(50) NOT NULL,
Direccion VARCHAR(100),
Telefono VARCHAR(20),
CONSTRAINT PK_Proveedor PRIMARY KEY (ID_Proveedor)
);



CREATE TABLE Producto
PK: ID_Producto, Atributos: Nombre, Descripción, Costo, ID_Proveedor (FK), ID_Tipo_Producto (FK)


CREATE TABLE Tipo_Producto
PK: ID_Tipo_Producto, Atributos: Descripción, Especie


CREATE TABLE Inventario
PK: ID_Inventario, Atributos: ID_Producto (FK), Cantidad


CREATE TABLE Factura
PK: ID_Factura, Atributos: Fecha, Total, ID_Cliente (FK)


CREATE TABLE Factura_Servicio
PK: ID_Factura (FK), ID_Servicio (FK), Atributos: Cantidad
