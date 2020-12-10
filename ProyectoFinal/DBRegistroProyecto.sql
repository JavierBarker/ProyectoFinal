drop database if exists DBRegistroProyecto;
create database DBRegistroProyecto;
use DBRegistroProyecto;

create table Persona(
	codigoPersona int not null auto_increment,
    DPI varchar(15) not null,
    nombrePersona varchar(125) not null,
    primary key PK_codigoPersona (codigoPersona)
);

create table Rol(
	codigoRol int not null auto_increment,
    rol varchar(25) not null,
    primary key PK_codigoRol(codigoRol)
);

create table Usuario(
	usuario varchar(80) not null,
    password0 varchar(80) not null,
    rol_codigoRol int not null,
    primary key PK_usuario(usuario),
    constraint FK_Usuario_Rol foreign key (rol_codigoRol) references Rol(codigoRol)
);

/*inserts*/
/*Persona*/
insert into Persona(DPI, nombrePersona) values ('1706402621547','Javier Barker');
insert into Persona(DPI, nombrePersona) values ('2326369966678','Jose Gongora');
insert into Persona(DPI, nombrePersona) values ('4898476516528','Jose Lopez');
insert into Persona(DPI, nombrePersona) values ('1996871313645','Pablo Lopez');
insert into Persona(DPI, nombrePersona) values ('9215213357798','Max Sanchez');

/*Rol*/
insert into Rol(rol) values ('Administrador');
insert into Rol(rol) values ('Usuario');

/*Usuario*/
insert into Usuario(usuario, password0, rol_codigoRol) values ('Admin', 'Admin', 1);
insert into Usuario(usuario, password0, rol_codigoRol) values ('User', 'User', 2);

select * from persona;
select * from rol;
select * from usuario;

select * from usuario where binary usuario = 'Admin' and password0 = 'Admin' and rol_codigoRol = 1;