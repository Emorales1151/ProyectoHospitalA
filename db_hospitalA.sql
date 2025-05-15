
create database db_hospitalA;

use db_hospitalA;

create table tbl_empleados
(
	CodigoEmpleado int primary key identity(1,1) not null,
	Nombres varchar(100),
	TipoTrabajo varchar(100),
	Especialidad varchar(100),
	Sueldo decimal(10,2),
	FechaAlta datetime,
	Estado varchar(20),
	UsuarioAuditoria varchar(100),
	FechaAuditoria datetime
);

create table tbl_usuarios
(
	CodigoUsuario int primary key identity(1,1) not null,
	CodigoEmpleado int not null,
	Usuario varchar(50),
	Clave varchar(256),
	TipoUsuario varchar(20),
	Estado varchar(20),
	UsuarioAuditoria varchar(100),
	FechaAuditoria datetime,
	Foreign key (CodigoEmpleado) references tbl_empleados(CodigoEmpleado)
);
