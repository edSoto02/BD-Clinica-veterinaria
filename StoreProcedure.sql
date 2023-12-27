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