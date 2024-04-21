
--INSTRUCCIONES DDL

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
CONSTRAINT CHK_Especie CHECK (Especie IN ('Perro', 'Gato'))
CONSTRAINT CHK_Genero CHECK (Genero IN ('M', 'H'))
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


CREATE TABLE Producto (
ID_Producto INT,
Nombre VARCHAR(25),
Descripci�n VARCHAR(100),
Costo DECIMAL(10, 2),
ID_Proveedor VARCHAR(25),
ID_Tipo_Producto INT,
CONSTRAINT PK_Producto PRIMARY KEY (ID_Producto),
CONSTRAINT FK_Producto_Proveedor FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor (ID_Proveedor),
CONSTRAINT FK_Producto_Tipo FOREIGN KEY (ID_Tipo_Producto) REFERENCES Tipo_Producto (ID_Tipo_Producto)
);


CREATE TABLE Tipo_Producto (
ID_Tipo_Producto INT,
Descripci�n VARCHAR(100),
Especie VARCHAR(25),
CONSTRAINT PK_Tipo_Producto PRIMARY KEY (ID_Tipo_Producto)
);


CREATE TABLE Inventario (
ID_Inventario INT,
ID_Producto INT,
Cantidad INT,
CONSTRAINT PK_Inventario PRIMARY KEY (ID_Inventario),
CONSTRAINT FK_Inventario_Producto FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);


CREATE TABLE Factura (
ID_Factura INT,
Fecha DATE,
Total DECIMAL(10, 2),
ID_Cliente INT,
CONSTRAINT PK_Factura PRIMARY KEY (ID_Factura),
CONSTRAINT FK_Factura_Cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(C�dula)
);


CREATE TABLE Factura_Servicio (
ID_Factura_Servicio INT,
ID_Factura INT,
ID_Servicio INT,
Cantidad INT,
CONSTRAINT PK_Factura_Servicio PRIMARY KEY (ID_Factura_Servicio),
CONSTRAINT FK_Factura_Servicio_Factura FOREIGN KEY (ID_Factura) REFERENCES Factura(ID_Factura),
CONSTRAINT FK_Factura_Servicio_Servicio FOREIGN KEY (ID_Servicio) REFERENCES Servicio(ID_Servicio)
);