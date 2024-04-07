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
PK: ID_Producto, Atributos: Nombre, Descripci�n, Costo, ID_Proveedor (FK)