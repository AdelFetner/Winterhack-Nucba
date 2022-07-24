DROP DATABASE winterhackbd; 
 
 CREATE DATABASE IF NOT EXISTS winterhackbd;
use winterhackbd;

CREATE TABLE usuarios (
    id_usuario int unsigned AUTO_INCREMENT,
    nombre_usuario varchar(30),
    apellido_usuario varchar(30),
    dni_usuario varchar(8),
    email varchar(30),
    pass_usuario varchar(10),
    telefono_usuario varchar(15),
    domicilio_usuario varchar(20),
    altura_usuario varchar(8),
    piso_usuario varchar(3),
    dept_usuario varchar(3),
    constraint pk_usuario  PRIMARY KEY (id_usuario),
    constraint unq_dni_usuario UNIQUE (dni_usuario)
);


CREATE TABLE cuentas(	
	id_cuentas int unsigned auto_increment,
	numero_cuenta varchar(30),
	id_usuario int,
	constraint pk_cuenta primary key(id_cuenta),
	constraint fk_idUsuario foreign key (id_usuario) references usuarios (id_usuario)
);

CREATE TABLE movimiento
(
	id_movimiento int unsigned AUTO_INCREMENT,
	id_usuario int,
	id_cuenta int,
	monto float,
	detalle varchar(12),
	credito bool,
	id_proveedor smallint unsigned,
	para_venta bool, #documentar potencial futuro
	minimo_unidades smallint,
	constraint pk_producto primary key (id_producto),
	constraint fk_proveedor foreign key (id_proveedor) references proveedores (id_proveedor)
);

 );