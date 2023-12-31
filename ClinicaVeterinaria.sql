CREATE TABLE CLIENTES (
	ID_CLIENTE NUMBER(5) NOT NULL,
	NOM_CLIENTE VARCHAR2(25) NOT NULL,
	AP_PATERNO VARCHAR2(25) NOT NULL,
	CALLE VARCHAR2(35) NOT NULL,
	COLONIA VARCHAR2(30) NOT NULL,
	DELEGACION VARCHAR2(25) NOT NULL,
	CODIGO_POSTAL CHAR(10) NOT NULL,
	TELEFONO VARCHAR2(13) NOT NULL,
	EMAIL VARCHAR2(30) NOT NULL,
	CONSTRAINT ID_CLIENTE_PK PRIMARY KEY (ID_CLIENTE)
);

CREATE TABLE MASCOTAS (
	ID_MASCOTA NUMBER(5) NOT NULL,
	ID_CLIENTE NUMBER(5) NOT NULL,
	NOM_MASCOTA VARCHAR2(25) NOT NULL,
	RAZA VARCHAR2(30) NOT NULL,
	GENERO CHAR(1) NOT NULL,
	ESPECIE VARCHAR2(30) NOT NULL,
	FEC_NAC DATE NOT NULL,
	COLOR VARCHAR2(50),
	PESO VARCHAR2(15) NOT NULL,
	TATUAJE VARCHAR2(5) NOT NULL,
	CONSTRAINT ID_MASCOTA_PK PRIMARY KEY (ID_MASCOTA),
	CONSTRAINT FK_ID_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE)
);

CREATE TABLE VETERINARIOS (
	NUM_CEDULA VARCHAR2(25) NOT NULL,
	NOM_VET VARCHAR2(25) NOT NULL,
	AP_PATERNO VARCHAR2(25) NOT NULL,
	CALLE VARCHAR2(35) NOT NULL,
	COLONIA VARCHAR2(30) NOT NULL,
	DELEGACION VARCHAR2(25) NOT NULL,
	CODIGO_POSTAL CHAR(10) NOT NULL,
	TELEFONO VARCHAR2(13) NOT NULL,
	ESPECIALIDAD VARCHAR2(80) NOT NULL,
	CONSTRAINT NUM_CEDULA_PK PRIMARY KEY (NUM_CEDULA)
);

CREATE TABLE PRODUCTOS (
	ID_PRODUCTO VARCHAR2(10) NOT NULL,
	ID_PRO_PROD NUMBER(10) NOT NULL,
	NOM_PROD VARCHAR2(50) NOT NULL,
	PRECIO NUMBER(7, 2) NOT NULL,
	CANTIDAD NUMBER(5) NOT NULL,
	CONSTRAINT ID_PRODUCTO_PK PRIMARY KEY (ID_PRODUCTO),
	CONSTRAINT FK_ID_PRO_PROD FOREIGN KEY (ID_PRO_PROD) REFERENCES PROVEEDOR_PRODUCTOS (ID_PRO_PROD)
);

CREATE TABLE PROVEEDOR_PRODUCTOS (
	ID_PRO_PROD NUMBER(10) NOT NULL,
	NOMBRE_PROV VARCHAR2(40) NOT NULL,
	CALLE VARCHAR2(60) NOT NULL,
	COLONIA VARCHAR2(30) NOT NULL,
	DELEGACION VARCHAR2(25) NOT NULL,
	CODIGO_POSTAL CHAR(10) NOT NULL,
	TELEFONO VARCHAR2(15) NOT NULL,
	EMAIL VARCHAR2(30) NOT NULL,
	CONSTRAINT ID_PRO_PROD_PK PRIMARY KEY (ID_PRO_PROD)
);

CREATE TABLE VACUNAS (
	ID_VACUNA VARCHAR2(10) NOT NULL,
	ID_PRO_VAC VARCHAR2(10) NOT NULL,
	NOM_VAC VARCHAR2(50) NOT NULL,
	PRECIO NUMBER(7, 2) NOT NULL,
	CONSTRAINT ID_VACUNA_PK PRIMARY KEY (ID_VACUNA),
	CONSTRAINT FK_ID_PRO_VAC FOREIGN KEY (ID_PRO_VAC) REFERENCES PROVEEDOR_VACUNAS (ID_PRO_VAC)
);

CREATE TABLE PROVEEDOR_VACUNAS (
	ID_PRO_VAC VARCHAR2(10) NOT NULL,
	NOMBRE_PROV VARCHAR2(40) NOT NULL,
	CALLE VARCHAR2(60) NOT NULL,
	COLONIA VARCHAR2(30) NOT NULL,
	DELEGACION VARCHAR2(25) NOT NULL,
	CODIGO_POSTAL CHAR(10) NOT NULL,
	TELEFONO VARCHAR2(15) NOT NULL,
	EMAIL VARCHAR2(30) NOT NULL,
	CONSTRAINT ID_PRO_VAC_PK PRIMARY KEY (ID_PRO_VAC)
);

CREATE TABLE SERVICIOS (
	ID_SERVICIO VARCHAR2(10) NOT NULL,
	NOM_SER VARCHAR2(40) NOT NULL,
	PRECIO NUMBER(7, 2) NOT NULL,
	CONSTRAINT ID_SERVICIO_PK PRIMARY KEY (ID_SERVICIO)
);

CREATE TABLE CONSULTAS (
	ID_CONSULTA NUMBER(10) NOT NULL,
	ID_MASCOTA NUMBER(5) NOT NULL,
	NUM_CEDULA VARCHAR2(25) NOT NULL,
	FECHA DATE NOT NULL,
	TIPO_CONSULTA VARCHAR2(100) NOT NULL,
	COSTO_CONSULTA NUMBER(7, 2) NOT NULL,
	CONSTRAINT PK_CONSULTAS PRIMARY KEY (ID_CONSULTA),
	CONSTRAINT FK_ID_MASCOTA FOREIGN KEY (ID_MASCOTA) REFERENCES MASCOTAS (ID_MASCOTA),
	CONSTRAINT FK_NUM_CEDULA FOREIGN KEY (NUM_CEDULA) REFERENCES VETERINARIOS (NUM_CEDULA)
);

CREATE TABLE SERVICIO_MASCOTA (
	ID_MASCOTA NUMBER(5) NOT NULL,
	ID_SERVICIO VARCHAR2(10) NOT NULL,
	TIPO_SERVICIO VARCHAR2(50) NOT NULL,
	DESCRIPCION VARCHAR2(200) NOT NULL,
	FECHA DATE NOT NULL,
	CONSTRAINT PK_SER_MASCOTA PRIMARY KEY (ID_MASCOTA, ID_SERVICIO),
	CONSTRAINT FK_MASCOTA FOREIGN KEY (ID_MASCOTA) REFERENCES MASCOTAS (ID_MASCOTA),
	CONSTRAINT FK_SERVICIO FOREIGN KEY (ID_SERVICIO) REFERENCES SERVICIOS (ID_SERVICIO)
);

CREATE TABLE VENTAS (
	ID_VENTA NUMBER(10) NOT NULL,
	ID_CLIENTE NUMBER(5) NOT NULL,
	ID_PRODUCTO VARCHAR2(10) NOT NULL,
	DESCRIPCION VARCHAR2(50) NOT NULL,
	CANTIDAD NUMBER(5) NOT NULL,
	CONSTRAINT PK_VENTAS PRIMARY KEY (ID_VENTA, ID_CLIENTE, ID_PRODUCTO),
	CONSTRAINT FK_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE),
	CONSTRAINT KF_PRD FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTOS (ID_PRODUCTO)
);

CREATE TABLE VACUNACIONES (
	ID_MASCOTA NUMBER(5) NOT NULL,
	ID_VACUNA VARCHAR2(10) NOT NULL,
	FECHA_PROGRAMADA DATE NOT NULL,
	FECHA_APLICACION DATE NOT NULL,
	CANTIDAD NUMBER(10) NOT NULL,
	UNIDAD VARCHAR2(10) NOT NULL,
	CONSTRAINT PK_VACUNACIONES PRIMARY KEY (ID_MASCOTA, ID_VACUNA),
	CONSTRAINT FK_IDMASC FOREIGN KEY (ID_MASCOTA) REFERENCES MASCOTAS (ID_MASCOTA),
	CONSTRAINT FK_IDVACU FOREIGN KEY (ID_VACUNA) REFERENCES VACUNAS (ID_VACUNA)
);