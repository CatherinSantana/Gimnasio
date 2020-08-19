
/*========================================================*/
/* Table: CLIENTE                                         */
/*========================================================*/

create table Clientes (
Id_cliente int not null,
Nombre varchar (50),
Apellido varchar(50),
Genero varchar (10),
Correo varchar (30),
Direccion varchar (100),
Telefono varchar (10),
constraint pk_Id_cliente primary key (Id_cliente)
)
go

/*==============================================================*/
/* Table: INSTRUCTOR                                            */
/*==============================================================*/

create table Instructor(
Id_instructor int not null,
Nombre varchar (50),
Apellido varchar(50),
Genero varchar (10),
Correo varchar (30),
Direccion varchar (100),
Telefono varchar (10),
Especialidad varchar (50),
constraint pk_Id_instructor primary key (Id_instructor)
) 
go

/*==============================================================*/
/* Table: GRUPO                                                 */
/*==============================================================*/

 create table Grupo(
Id_grupo int not null,
Id_instructor int,
grupo varchar (50),
Horario varchar(50),
fecha_inicio date,
fecha_final date,
constraint pk_Id_grupo primary key (Id_grupo,Id_instructor)
)
go


/*==============================================================*/
/* Table: INSCRIPCION                                           */
/*==============================================================*/

create table Inscripcion(
Nro_inscripcion int not null,
Id_cliente int,
Id_grupo int,
Fecha_inscripcion date,
cuota float,
constraint pk_Nro_inscripcion primary key (Nro_inscripcion,Id_cliente,Id_grupo)
)
go
