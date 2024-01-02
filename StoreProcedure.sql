--Cracion de procedimientos almacendos para cada tabla
--Procedimiento para cliente
CREATE OR REPLACE PROCEDURE InsertarCliente(
    p_id_cliente NUMBER,
    p_nom_cliente VARCHAR2,
    p_ap_paterno VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_email VARCHAR2
)
AS
BEGIN
    INSERT INTO CLIENTES (
        ID_CLIENTE,
        NOM_CLIENTE,
        AP_PATERNO,
        CALLE,
        COLONIA,
        DELEGACION,
        CODIGO_POSTAL,
        TELEFONO,
        EMAIL
    ) VALUES (
        p_id_cliente,
        p_nom_cliente,
        p_ap_paterno,
        p_calle,
        p_colonia,
        p_delegacion,
        p_codigo_postal,
        p_telefono,
        p_email
    );
    COMMIT;
END InsertarCliente;
/
CREATE OR REPLACE PROCEDURE ActualizarCliente(
    p_id_cliente NUMBER,
    p_nom_cliente VARCHAR2,
    p_ap_paterno VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_email VARCHAR2
)
AS
BEGIN
    UPDATE CLIENTES
    SET
        NOM_CLIENTE = p_nom_cliente,
        AP_PATERNO = p_ap_paterno,
        CALLE = p_calle,
        COLONIA = p_colonia,
        DELEGACION = p_delegacion,
        CODIGO_POSTAL = p_codigo_postal,
        TELEFONO = p_telefono,
        EMAIL = p_email
    WHERE
        ID_CLIENTE = p_id_cliente;
    COMMIT;
END ActualizarCliente;
/
CREATE OR REPLACE PROCEDURE EliminarCliente(
    p_id_cliente NUMBER
)
AS
BEGIN
    DELETE FROM CLIENTES
    WHERE ID_CLIENTE = p_id_cliente;
    COMMIT;
END EliminarCliente;
/
CREATE OR REPLACE FUNCTION ObtenerClientePorID(
    p_id_cliente NUMBER
)
RETURN VARCHAR2
AS
    v_result VARCHAR2(255);
BEGIN
    SELECT NOM_CLIENTE || ' ' || AP_PATERNO
    INTO v_result
    FROM CLIENTES
    WHERE ID_CLIENTE = p_id_cliente;

    RETURN v_result;
END ObtenerClientePorID;
/
--procedimiento para mascota 
CREATE OR REPLACE PROCEDURE InsertarMascota(
    p_id_mascota NUMBER,
    p_id_cliente NUMBER,
    p_nom_mascota VARCHAR2,
    p_raza VARCHAR2,
    p_genero CHAR,
    p_especie VARCHAR2,
    p_fec_nac DATE,
    p_color VARCHAR2,
    p_peso VARCHAR2,
    p_tatuaje VARCHAR2
)
AS
BEGIN
    INSERT INTO MASCOTAS (
        ID_MASCOTA,
        ID_CLIENTE,
        NOM_MASCOTA,
        RAZA,
        GENERO,
        ESPECIE,
        FEC_NAC,
        COLOR,
        PESO,
        TATUAJE
    ) VALUES (
        p_id_mascota,
        p_id_cliente,
        p_nom_mascota,
        p_raza,
        p_genero,
        p_especie,
        p_fec_nac,
        p_color,
        p_peso,
        p_tatuaje
    );
    COMMIT;
END InsertarMascota;
/
CREATE OR REPLACE PROCEDURE ActualizarMascota(
    p_id_mascota NUMBER,
    p_nom_mascota VARCHAR2,
    p_raza VARCHAR2,
    p_genero CHAR,
    p_especie VARCHAR2,
    p_fec_nac DATE,
    p_color VARCHAR2,
    p_peso VARCHAR2,
    p_tatuaje VARCHAR2
)
AS
BEGIN
    UPDATE MASCOTAS
    SET
        NOM_MASCOTA = p_nom_mascota,
        RAZA = p_raza,
        GENERO = p_genero,
        ESPECIE = p_especie,
        FEC_NAC = p_fec_nac,
        COLOR = p_color,
        PESO = p_peso,
        TATUAJE = p_tatuaje
    WHERE
        ID_MASCOTA = p_id_mascota;
    COMMIT;
END ActualizarMascota;
/
CREATE OR REPLACE PROCEDURE EliminarMascota(
    p_id_mascota NUMBER
)
AS
BEGIN
    DELETE FROM MASCOTAS
    WHERE ID_MASCOTA = p_id_mascota;
    COMMIT;
END EliminarMascota;
/
--procedimiento para los veterinarios
CREATE OR REPLACE PROCEDURE InsertarVeterinario(
    p_num_cedula VARCHAR2,
    p_nom_vet VARCHAR2,
    p_ap_paterno VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_especialidad VARCHAR2
)
AS
BEGIN
    INSERT INTO VETERINARIOS (
        NUM_CEDULA,
        NOM_VET,
        AP_PATERNO,
        CALLE,
        COLONIA,
        DELEGACION,
        CODIGO_POSTAL,
        TELEFONO,
        ESPECIALIDAD
    ) VALUES (
        p_num_cedula,
        p_nom_vet,
        p_ap_paterno,
        p_calle,
        p_colonia,
        p_delegacion,
        p_codigo_postal,
        p_telefono,
        p_especialidad
    );
    COMMIT;
END InsertarVeterinario;
/
CREATE OR REPLACE PROCEDURE ActualizarVeterinario(
    p_num_cedula VARCHAR2,
    p_nom_vet VARCHAR2,
    p_ap_paterno VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_especialidad VARCHAR2
)
AS
BEGIN
    UPDATE VETERINARIOS
    SET
        NOM_VET = p_nom_vet,
        AP_PATERNO = p_ap_paterno,
        CALLE = p_calle,
        COLONIA = p_colonia,
        DELEGACION = p_delegacion,
        CODIGO_POSTAL = p_codigo_postal,
        TELEFONO = p_telefono,
        ESPECIALIDAD = p_especialidad
    WHERE
        NUM_CEDULA = p_num_cedula;
    COMMIT;
END ActualizarVeterinario;
/
CREATE OR REPLACE PROCEDURE EliminarVeterinario(
    p_num_cedula VARCHAR2
)
AS
BEGIN
    DELETE FROM VETERINARIOS
    WHERE NUM_CEDULA = p_num_cedula;
    COMMIT;
END EliminarVeterinario;
/
--Para proveedor de PRODUCTOS
CREATE OR REPLACE PROCEDURE InsertarProveedorProducto(
    p_id_pro_prod NUMBER,
    p_nombre_prov VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_email VARCHAR2
)
AS
BEGIN
    INSERT INTO PROVEEDOR_PRODUCTOS (
        ID_PRO_PROD,
        NOMBRE_PROV,
        CALLE,
        COLONIA,
        DELEGACION,
        CODIGO_POSTAL,
        TELEFONO,
        EMAIL
    ) VALUES (
        p_id_pro_prod,
        p_nombre_prov,
        p_calle,
        p_colonia,
        p_delegacion,
        p_codigo_postal,
        p_telefono,
        p_email
    );
    COMMIT;
END InsertarProveedorProducto;
/
CREATE OR REPLACE PROCEDURE ActualizarProveedorProducto(
    p_id_pro_prod NUMBER,
    p_nombre_prov VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_email VARCHAR2
)
AS
BEGIN
    UPDATE PROVEEDOR_PRODUCTOS
    SET
        NOMBRE_PROV = p_nombre_prov,
        CALLE = p_calle,
        COLONIA = p_colonia,
        DELEGACION = p_delegacion,
        CODIGO_POSTAL = p_codigo_postal,
        TELEFONO = p_telefono,
        EMAIL = p_email
    WHERE
        ID_PRO_PROD = p_id_pro_prod;
    COMMIT;
END ActualizarProveedorProducto;
/
CREATE OR REPLACE PROCEDURE EliminarProveedorProducto(
    p_id_pro_prod NUMBER
)
AS
BEGIN
    DELETE FROM PROVEEDOR_PRODUCTOS
    WHERE ID_PRO_PROD = p_id_pro_prod;
    COMMIT;
END EliminarProveedorProducto;
/
CREATE OR REPLACE FUNCTION ObtenerProveedorProductoPorID(
    p_id_pro_prod NUMBER
)
RETURN VARCHAR2
AS
    v_result VARCHAR2(255);
BEGIN
    SELECT NOMBRE_PROV
    INTO v_result
    FROM PROVEEDOR_PRODUCTOS
    WHERE ID_PRO_PROD = p_id_pro_prod;

    RETURN v_result;
END ObtenerProveedorProductoPorID;
/
--proveedor de vacunas
CREATE OR REPLACE PROCEDURE InsertarProveedorVacunas(
    p_id_pro_vac VARCHAR2,
    p_nombre_prov VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_email VARCHAR2
)
AS
BEGIN
    INSERT INTO PROVEEDOR_VACUNAS (
        ID_PRO_VAC,
        NOMBRE_PROV,
        CALLE,
        COLONIA,
        DELEGACION,
        CODIGO_POSTAL,
        TELEFONO,
        EMAIL
    ) VALUES (
        p_id_pro_vac,
        p_nombre_prov,
        p_calle,
        p_colonia,
        p_delegacion,
        p_codigo_postal,
        p_telefono,
        p_email
    );
    COMMIT;
END InsertarProveedorVacunas;
/
CREATE OR REPLACE PROCEDURE ActualizarProveedorVacunas(
    p_id_pro_vac VARCHAR2,
    p_nombre_prov VARCHAR2,
    p_calle VARCHAR2,
    p_colonia VARCHAR2,
    p_delegacion VARCHAR2,
    p_codigo_postal CHAR,
    p_telefono VARCHAR2,
    p_email VARCHAR2
)
AS
BEGIN
    UPDATE PROVEEDOR_VACUNAS
    SET
        NOMBRE_PROV = p_nombre_prov,
        CALLE = p_calle,
        COLONIA = p_colonia,
        DELEGACION = p_delegacion,
        CODIGO_POSTAL = p_codigo_postal,
        TELEFONO = p_telefono,
        EMAIL = p_email
    WHERE
        ID_PRO_VAC = p_id_pro_vac;
    COMMIT;
END ActualizarProveedorVacunas;
/
CREATE OR REPLACE PROCEDURE EliminarProveedorVacunas(
    p_id_pro_vac VARCHAR2
)
AS
BEGIN
    DELETE FROM PROVEEDOR_VACUNAS
    WHERE ID_PRO_VAC = p_id_pro_vac;
    COMMIT;
END EliminarProveedorVacunas;
/
CREATE OR REPLACE FUNCTION ObtenerProveedorVacunasPorID(
    p_id_pro_vac VARCHAR2
)
RETURN VARCHAR2
AS
    v_result VARCHAR2(255);
BEGIN
    SELECT NOMBRE_PROV
    INTO v_result
    FROM PROVEEDOR_VACUNAS
    WHERE ID_PRO_VAC = p_id_pro_vac;

    RETURN v_result;
END ObtenerProveedorVacunasPorID;
/
--para las consultas 
CREATE OR REPLACE PROCEDURE InsertarConsulta(
    p_id_consulta NUMBER,
    p_id_mascota NUMBER,
    p_num_cedula VARCHAR2,
    p_fecha DATE,
    p_tipo_consulta VARCHAR2,
    p_costo_consulta NUMBER
)
AS
BEGIN
    INSERT INTO CONSULTAS (
        ID_CONSULTA,
        ID_MASCOTA,
        NUM_CEDULA,
        FECHA,
        TIPO_CONSULTA,
        COSTO_CONSULTA
    ) VALUES (
        p_id_consulta,
        p_id_mascota,
        p_num_cedula,
        p_fecha,
        p_tipo_consulta,
        p_costo_consulta
    );
    COMMIT;
END InsertarConsulta;
/
CREATE OR REPLACE PROCEDURE ActualizarConsulta(
    p_id_consulta NUMBER,
    p_id_mascota NUMBER,
    p_num_cedula VARCHAR2,
    p_fecha DATE,
    p_tipo_consulta VARCHAR2,
    p_costo_consulta NUMBER
)
AS
BEGIN
    UPDATE CONSULTAS
    SET
        ID_MASCOTA = p_id_mascota,
        NUM_CEDULA = p_num_cedula,
        FECHA = p_fecha,
        TIPO_CONSULTA = p_tipo_consulta,
        COSTO_CONSULTA = p_costo_consulta
    WHERE
        ID_CONSULTA = p_id_consulta;
    COMMIT;
END ActualizarConsulta;
/
CREATE OR REPLACE PROCEDURE EliminarConsulta(
    p_id_consulta NUMBER
)
AS
BEGIN
    DELETE FROM CONSULTAS
    WHERE ID_CONSULTA = p_id_consulta;
    COMMIT;
END EliminarConsulta;
/
--para los prodcutos  
CREATE OR REPLACE PROCEDURE InsertarProducto(
    p_id_producto VARCHAR2,
    p_id_pro_prod NUMBER,
    p_nom_prod VARCHAR2,
    p_precio NUMBER,
    p_cantidad NUMBER
)
AS
BEGIN
    INSERT INTO PRODUCTOS (
        ID_PRODUCTO,
        ID_PRO_PROD,
        NOM_PROD,
        PRECIO,
        CANTIDAD
    ) VALUES (
        p_id_producto,
        p_id_pro_prod,
        p_nom_prod,
        p_precio,
        p_cantidad
    );
    COMMIT;
END InsertarProducto;
/
CREATE OR REPLACE PROCEDURE ActualizarProducto(
    p_id_producto VARCHAR2,
    p_id_pro_prod NUMBER,
    p_nom_prod VARCHAR2,
    p_precio NUMBER,
    p_cantidad NUMBER
)
AS
BEGIN
    UPDATE PRODUCTOS
    SET
        ID_PRO_PROD = p_id_pro_prod,
        NOM_PROD = p_nom_prod,
        PRECIO = p_precio,
        CANTIDAD = p_cantidad
    WHERE
        ID_PRODUCTO = p_id_producto;
    COMMIT;
END ActualizarProducto;
/
CREATE OR REPLACE PROCEDURE EliminarProducto(
    p_id_producto VARCHAR2
)
AS
BEGIN
    DELETE FROM PRODUCTOS
    WHERE ID_PRODUCTO = p_id_producto;
    COMMIT;
END EliminarProducto;
/
--para las vacunas
CREATE OR REPLACE PROCEDURE InsertarVacuna(
    p_id_vacuna VARCHAR2,
    p_id_pro_vac VARCHAR2,
    p_nom_vac VARCHAR2,
    p_precio NUMBER
)
AS
BEGIN
    INSERT INTO VACUNAS (
        ID_VACUNA,
        ID_PRO_VAC,
        NOM_VAC,
        PRECIO
    ) VALUES (
        p_id_vacuna,
        p_id_pro_vac,
        p_nom_vac,
        p_precio
    );
    COMMIT;
END InsertarVacuna;
/
CREATE OR REPLACE PROCEDURE ActualizarVacuna(
    p_id_vacuna VARCHAR2,
    p_id_pro_vac VARCHAR2,
    p_nom_vac VARCHAR2,
    p_precio NUMBER
)
AS
BEGIN
    UPDATE VACUNAS
    SET
        ID_PRO_VAC = p_id_pro_vac,
        NOM_VAC = p_nom_vac,
        PRECIO = p_precio
    WHERE
        ID_VACUNA = p_id_vacuna;
    COMMIT;
END ActualizarVacuna;
/
CREATE OR REPLACE PROCEDURE EliminarVacuna(
    p_id_vacuna VARCHAR2
)
AS
BEGIN
    DELETE FROM VACUNAS
    WHERE ID_VACUNA = p_id_vacuna;
    COMMIT;
END EliminarVacuna;
/
--para los servicios
CREATE OR REPLACE PROCEDURE InsertarServicio(
    p_id_servicio VARCHAR2,
    p_nom_serv VARCHAR2,
    p_precio NUMBER
)
AS
BEGIN
    INSERT INTO SERVICIOS (
        ID_SERVICIO,
        NOM_SER,
        PRECIO
    ) VALUES (
        p_id_servicio,
        p_nom_serv,
        p_precio
    );
    COMMIT;
END InsertarServicio;
/
CREATE OR REPLACE PROCEDURE ActualizarServicio(
    p_id_servicio VARCHAR2,
    p_nom_serv VARCHAR2,
    p_precio NUMBER
)
AS
BEGIN
    UPDATE SERVICIOS
    SET
        NOM_SER = p_nom_serv,
        PRECIO = p_precio
    WHERE
        ID_SERVICIO = p_id_servicio;
    COMMIT;
END ActualizarServicio;
/
CREATE OR REPLACE PROCEDURE EliminarServicio(
    p_id_servicio VARCHAR2
)
AS
BEGIN
    DELETE FROM SERVICIOS
    WHERE ID_SERVICIO = p_id_servicio;
    COMMIT;
END EliminarServicio;
/
--servicios de la mascota
CREATE OR REPLACE PROCEDURE InsertarServicioMascota(
    p_id_mascota NUMBER,
    p_id_servicio VARCHAR2,
    p_tipo_servicio VARCHAR2,
    p_descripcion VARCHAR2,
    p_fecha DATE
)
AS
BEGIN
    INSERT INTO SERVICIO_MASCOTA (
        ID_MASCOTA,
        ID_SERVICIO,
        TIPO_SERVICIO,
        DESCRIPCION,
        FECHA
    ) VALUES (
        p_id_mascota,
        p_id_servicio,
        p_tipo_servicio,
        p_descripcion,
        p_fecha
    );
    COMMIT;
END InsertarServicioMascota;
/
CREATE OR REPLACE PROCEDURE ActualizarServicioMascota(
    p_id_mascota NUMBER,
    p_id_servicio VARCHAR2,
    p_tipo_servicio VARCHAR2,
    p_descripcion VARCHAR2,
    p_fecha DATE
)
AS
BEGIN
    UPDATE SERVICIO_MASCOTA
    SET
        TIPO_SERVICIO = p_tipo_servicio,
        DESCRIPCION = p_descripcion,
        FECHA = p_fecha
    WHERE
        ID_MASCOTA = p_id_mascota
        AND ID_SERVICIO = p_id_servicio;
    COMMIT;
END ActualizarServicioMascota;
/
CREATE OR REPLACE PROCEDURE EliminarServicioMascota(
    p_id_mascota NUMBER,
    p_id_servicio VARCHAR2
)
AS
BEGIN
    DELETE FROM SERVICIO_MASCOTA
    WHERE ID_MASCOTA = p_id_mascota AND ID_SERVICIO = p_id_servicio;
    COMMIT;
END EliminarServicioMascota;
/
--ventas
CREATE OR REPLACE PROCEDURE InsertarVenta(
    p_id_venta NUMBER,
    p_id_cliente NUMBER,
    p_id_producto VARCHAR2,
    p_descripcion VARCHAR2,
    p_cantidad NUMBER
)
AS
BEGIN
    INSERT INTO VENTAS (
        ID_VENTA,
        ID_CLIENTE,
        ID_PRODUCTO,
        DESCRIPCION,
        CANTIDAD
    ) VALUES (
        p_id_venta,
        p_id_cliente,
        p_id_producto,
        p_descripcion,
        p_cantidad
    );
    COMMIT;
END InsertarVenta;
/
CREATE OR REPLACE PROCEDURE ActualizarVenta(
    p_id_venta NUMBER,
    p_id_cliente NUMBER,
    p_id_producto VARCHAR2,
    p_descripcion VARCHAR2,
    p_cantidad NUMBER
)
AS
BEGIN
    UPDATE VENTAS
    SET
        DESCRIPCION = p_descripcion,
        CANTIDAD = p_cantidad
    WHERE
        ID_VENTA = p_id_venta AND ID_CLIENTE = p_id_cliente AND ID_PRODUCTO = p_id_producto;
    COMMIT;
END ActualizarVenta;
/
CREATE OR REPLACE PROCEDURE EliminarVenta(
    p_id_venta NUMBER,
    p_id_cliente NUMBER,
    p_id_producto VARCHAR2
)
AS
BEGIN
    DELETE FROM VENTAS
    WHERE ID_VENTA = p_id_venta AND ID_CLIENTE = p_id_cliente AND ID_PRODUCTO = p_id_producto;
    COMMIT;
END EliminarVenta;
/
--vacunas
CREATE OR REPLACE PROCEDURE InsertarVacunacion(
    p_id_mascota NUMBER,
    p_id_vacuna VARCHAR2,
    p_fecha_programada DATE,
    p_fecha_aplicacion DATE,
    p_cantidad NUMBER,
    p_unidad VARCHAR2
)
AS
BEGIN
    INSERT INTO VACUNACIONES (
        ID_MASCOTA,
        ID_VACUNA,
        FECHA_PROGRAMADA,
        FECHA_APLICACION,
        CANTIDAD,
        UNIDAD
    ) VALUES (
        p_id_mascota,
        p_id_vacuna,
        p_fecha_programada,
        p_fecha_aplicacion,
        p_cantidad,
        p_unidad
    );
    COMMIT;
END InsertarVacunacion;
/
CREATE OR REPLACE PROCEDURE ActualizarVacunacion(
    p_id_mascota NUMBER,
    p_id_vacuna VARCHAR2,
    p_fecha_programada DATE,
    p_fecha_aplicacion DATE,
    p_cantidad NUMBER,
    p_unidad VARCHAR2
)
AS
BEGIN
    UPDATE VACUNACIONES
    SET
        FECHA_PROGRAMADA = p_fecha_programada,
        FECHA_APLICACION = p_fecha_aplicacion,
        CANTIDAD = p_cantidad,
        UNIDAD = p_unidad
    WHERE
        ID_MASCOTA = p_id_mascota AND ID_VACUNA = p_id_vacuna;
    COMMIT;
END ActualizarVacunacion;
/
CREATE OR REPLACE PROCEDURE EliminarVacunacion(
    p_id_mascota NUMBER,
    p_id_vacuna VARCHAR2
)
AS
BEGIN
    DELETE FROM VACUNACIONES
    WHERE ID_MASCOTA = p_id_mascota AND ID_VACUNA = p_id_vacuna;
    COMMIT;
END EliminarVacunacion;
/
