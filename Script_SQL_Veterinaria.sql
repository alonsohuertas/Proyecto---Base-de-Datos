CREATE DATABASE Veterinaria


CREATE TABLE Cliente
PK: ID_Cliente, Atributos: Nombre, Direcci�n, Tel�fono


CREATE TABLE Mascota
PK: ID_Mascota, Atributos: Nombre, Especie, Raza, Fecha_Nacimiento, ID_Cliente (FK)


CREATE TABLE Personal
PK: ID_Personal, Atributos: Nombre, Posici�n, Especialidad


CREATE TABLE Servicio
PK: ID_Servicio, Atributos: Descripci�n, Costo


CREATE TABLE Cita
PK: ID_Cita, Atributos: Fecha, Hora, ID_Cliente (FK), ID_Mascota (FK), ID_Personal (FK)


CREATE TABLE Proveedor
PK: ID_Proveedor, Atributos: Nombre, Direcci�n, Tel�fono


CREATE TABLE Producto
PK: ID_Producto, Atributos: Nombre, Descripci�n, Costo, ID_Proveedor (FK), ID_Tipo_Producto (FK)


CREATE TABLE Tipo_Producto
PK: ID_Tipo_Producto, Atributos: Descripci�n, Especie


CREATE TABLE Inventario
PK: ID_Inventario, Atributos: ID_Producto (FK), Cantidad


CREATE TABLE Factura
PK: ID_Factura, Atributos: Fecha, Total, ID_Cliente (FK)


CREATE TABLE Factura_Servicio
PK: ID_Factura (FK), ID_Servicio (FK), Atributos: Cantidad
