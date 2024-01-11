--Registros para la tabla clientes
INSERT INTO CLIENTES (ID_CLIENTE, NOM_CLIENTE, AP_PATERNO, CALLE, COLONIA, DELEGACION, CODIGO_POSTAL, TELEFONO, EMAIL)
VALUES 
(1, 'Juan', 'Pérez', 'Calle 1', 'Colonia A', 'Delegacion X', '12345', '555-1234', 'juan@example.com'),
(2, 'María', 'López', 'Calle 2', 'Colonia B', 'Delegacion Y', '54321', '555-5678', 'maria@example.com'),
(3, 'Carlos', 'González', 'Calle 3', 'Colonia C', 'Delegacion Z', '67890', '555-9876', 'carlos@example.com'),
(4, 'Laura', 'Martínez', 'Calle 4', 'Colonia D', 'Delegacion W', '34567', '555-2345', 'laura@example.com'),
(5, 'Roberto', 'Sánchez', 'Calle 5', 'Colonia E', 'Delegacion V', '78901', '555-6789', 'roberto@example.com'),
(6, 'Ana', 'Ramírez', 'Calle 6', 'Colonia F', 'Delegacion U', '45678', '555-3456', 'ana@example.com'),
(7, 'Javier', 'Torres', 'Calle 7', 'Colonia G', 'Delegacion T', '01234', '555-7890', 'javier@example.com'),
(8, 'Sofía', 'Hernández', 'Calle 8', 'Colonia H', 'Delegacion S', '23456', '555-4567', 'sofia@example.com'),
(9, 'Diego', 'Díaz', 'Calle 9', 'Colonia I', 'Delegacion R', '89012', '555-8901', 'diego@example.com'),
(10, 'Lucía', 'Gómez', 'Calle 10', 'Colonia J', 'Delegacion Q', '76543', '555-1234', 'lucia@example.com'),
(11, 'Miguel', 'Luna', 'Calle 11', 'Colonia K', 'Delegacion P', '32109', '555-5678', 'miguel@example.com'),
(12, 'Carmen', 'Suárez', 'Calle 12', 'Colonia L', 'Delegacion O', '09876', '555-2345', 'carmen@example.com'),
(13, 'Daniel', 'Rodríguez', 'Calle 13', 'Colonia M', 'Delegacion N', '54321', '555-6789', 'daniel@example.com'),
(14, 'Isabel', 'Castro', 'Calle 14', 'Colonia N', 'Delegacion M', '23456', '555-3456', 'isabel@example.com'),
(15, 'Alejandro', 'García', 'Calle 15', 'Colonia O', 'Delegacion L', '78901', '555-7890', 'alejandro@example.com'),
(16, 'Adriana', 'Flores', 'Calle 16', 'Colonia P', 'Delegacion K', '56789', '555-4567', 'adriana@example.com'),
(17, 'Héctor', 'Vargas', 'Calle 17', 'Colonia Q', 'Delegacion J', '01234', '555-8901', 'hector@example.com'),
(18, 'Paula', 'Ortega', 'Calle 18', 'Colonia R', 'Delegacion I', '34567', '555-1234', 'paula@example.com'),
(19, 'Ricardo', 'Jiménez', 'Calle 19', 'Colonia S', 'Delegacion H', '89012', '555-5678', 'ricardo@example.com'),
(20, 'Elena', 'Reyes', 'Calle 20', 'Colonia T', 'Delegacion G', '45678', '555-2345', 'elena@example.com');

--Registros para la tabla mascotas 
INSERT INTO MASCOTAS (ID_MASCOTA, ID_CLIENTE, NOM_MASCOTA, RAZA, GENERO, ESPECIE, FEC_NAC, COLOR, PESO, TATUAJE)
VALUES
(1, 1, 'Firulais', 'Labrador', 'M', 'Perro', TO_DATE('01/01/2010', 'DD/MM/YYYY'), 'Negro', '25 kg', 'T123'),
(2, 1, 'Luna', 'Siamesa', 'H', 'Gato', TO_DATE('05/03/2015', 'DD/MM/YYYY'), 'Blanco y negro', '4 kg', 'T456'),
(3, 2, 'Max', 'Golden Retriever', 'M', 'Perro', TO_DATE('12/11/2018', 'DD/MM/YYYY'), 'Dorado', '30 kg', 'T789'),
(4, 2, 'Cleo', 'Persa', 'H', 'Gato', TO_DATE('20/07/2017', 'DD/MM/YYYY'), 'Gris', '5 kg', 'T012'),
(5, 3, 'Rocky', 'Bulldog', 'M', 'Perro', TO_DATE('08/04/2014', 'DD/MM/YYYY'), 'Atigrado', '28 kg', 'T345'),
(6, 3, 'Mochi', 'Maine Coon', 'H', 'Gato', TO_DATE('10/09/2019', 'DD/MM/YYYY'), 'Naranja', '6 kg', 'T678'),
(7, 4, 'Bella', 'Chihuahua', 'H', 'Perro', TO_DATE('14/02/2016', 'DD/MM/YYYY'), 'Marrón', '2 kg', 'T901'),
(8, 4, 'Simba', 'León', 'M', 'Felino', TO_DATE('03/06/2018', 'DD/MM/YYYY'), 'Amarillo', '35 kg', 'T234'),
(9, 5, 'Chico', 'Poodle', 'M', 'Perro', TO_DATE('25/12/2013', 'DD/MM/YYYY'), 'Blanco', '15 kg', 'T567'),
(10, 5, 'Misty', 'Angora', 'H', 'Gato', TO_DATE('17/10/2016', 'DD/MM/YYYY'), 'Blanco', '3 kg', 'T890'),
(11, 6, 'Bruno', 'Doberman', 'M', 'Perro', TO_DATE('22/09/2017', 'DD/MM/YYYY'), 'Negro y marrón', '32 kg', 'T123'),
(12, 6, 'Nina', 'Siamés', 'H', 'Gato', TO_DATE('11/11/2015', 'DD/MM/YYYY'), 'Blanco y marrón', '4.5 kg', 'T456'),
(13, 7, 'Daisy', 'Cavalier King Charles', 'H', 'Perro', TO_DATE('30/03/2019', 'DD/MM/YYYY'), 'Tricolor', '8 kg', 'T789'),
(14, 7, 'Whiskers', 'Ragdoll', 'H', 'Gato', TO_DATE('02/05/2014', 'DD/MM/YYYY'), 'Azul bicolor', '6.5 kg', 'T012'),
(15, 8, 'Oscar', 'Basset Hound', 'M', 'Perro', TO_DATE('19/08/2016', 'DD/MM/YYYY'), 'Marrón y blanco', '20 kg', 'T345'),
(16, 8, 'Mittens', 'Bombay', 'H', 'Gato', TO_DATE('07/01/2018', 'DD/MM/YYYY'), 'Negro', '3.8 kg', 'T678'),
(17, 9, 'Buddy', 'Shih Tzu', 'M', 'Perro', TO_DATE('28/06/2015', 'DD/MM/YYYY'), 'Blanco y negro', '12 kg', 'T901'),
(18, 9, 'Sasha', 'Siberiano', 'H', 'Gato', TO_DATE('15/04/2018', 'DD/MM/YYYY'), 'Gris y blanco', '5.5 kg', 'T234'),
(19, 10, 'Rusty', 'Dálmata', 'M', 'Perro', TO_DATE('04/03/2017', 'DD/MM/YYYY'), 'Blanco y negro', '27 kg', 'T567'),
(20, 10, 'Shadow', 'Scottish Fold', 'H', 'Gato', TO_DATE('09/09/2015', 'DD/MM/YYYY'), 'Gris atigrado', '4.2 kg', 'T890');

--Registro para la tabla de veterinarios
INSERT INTO VETERINARIOS (NUM_CEDULA, NOM_VET, AP_PATERNO, CALLE, COLONIA, DELEGACION, CODIGO_POSTAL, TELEFONO, ESPECIALIDAD)
VALUES
('VET001', 'Dr. Rodríguez', 'González', 'Calle 1', 'Colonia A', 'Delegacion X', '12345', '555-1234', 'Cirugía'),
('VET002', 'Dra. Martínez', 'López', 'Calle 2', 'Colonia B', 'Delegacion Y', '54321', '555-5678', 'Cardiología'),
('VET003', 'Dr. Sánchez', 'Ramírez', 'Calle 3', 'Colonia C', 'Delegacion Z', '67890', '555-9876', 'Dermatología'),
('VET004', 'Dra. Flores', 'Hernández', 'Calle 4', 'Colonia D', 'Delegacion W', '34567', '555-2345', 'Oftalmología'),
('VET005', 'Dr. Gómez', 'Torres', 'Calle 5', 'Colonia E', 'Delegacion V', '78901', '555-6789', 'Ortopedia'),
('VET006', 'Dra. Vargas', 'Suárez', 'Calle 6', 'Colonia F', 'Delegacion U', '45678', '555-3456', 'Neurología'),
('VET007', 'Dr. Castro', 'Gutiérrez', 'Calle 7', 'Colonia G', 'Delegacion T', '01234', '555-7890', 'Odontología'),
('VET008', 'Dra. Ortega', 'Díaz', 'Calle 8', 'Colonia H', 'Delegacion S', '23456', '555-4567', 'Endocrinología'),
('VET009', 'Dr. Jiménez', 'Luna', 'Calle 9', 'Colonia I', 'Delegacion R', '89012', '555-8901', 'Nutrición'),
('VET010', 'Dra. Reyes', 'García', 'Calle 10', 'Colonia J', 'Delegacion Q', '76543', '555-1234', 'Radiología'),
('VET011', 'Dr. Díaz', 'Mendoza', 'Calle 11', 'Colonia K', 'Delegacion P', '32109', '555-5678', 'Urología'),
('VET012', 'Dra. Mora', 'Fernández', 'Calle 12', 'Colonia L', 'Delegacion O', '09876', '555-2345', 'Oncología'),
('VET013', 'Dr. Núñez', 'Hernández', 'Calle 13', 'Colonia M', 'Delegacion N', '54321', '555-6789', 'Psiquiatría'),
('VET014', 'Dra. Soto', 'Sánchez', 'Calle 14', 'Colonia N', 'Delegacion M', '23456', '555-3456', 'Cuidados Intensivos'),
('VET015', 'Dr. Mendoza', 'Ortega', 'Calle 15', 'Colonia O', 'Delegacion L', '78901', '555-7890', 'Oftalmología');
/

--registro para los proveedores de prodcutos.
INSERT INTO PROVEEDOR_PRODUCTOS (ID_PRO_PROD, NOMBRE_PROV, CALLE, COLONIA, DELEGACION, CODIGO_POSTAL, TELEFONO, EMAIL)
VALUES
(1, 'Productos Veterinarios XYZ', 'Calle Principal 123', 'Colonia Animalia', 'Delegacion Veterinaria', '56789', '555-1234', 'info@productosxyz.com'),
(2, 'Suministros Mascotas ABC', 'Avenida Mascotera 456', 'Colonia PetCity', 'Delegacion PetFriendly', '67890', '555-5678', 'ventas@suministrosabc.com'),
(3, 'Distribuidora Canina S.A.', 'Calle Canina 789', 'Colonia Perriana', 'Delegacion Dogtown', '78901', '555-2345', 'info@distribuidoracanina.com'),
(4, 'Pets & Care Supplies', 'Avenida Petparadise 012', 'Colonia PawLand', 'Delegacion Woofville', '89012', '555-8901', 'contact@petscaresupplies.com'),
(5, 'Animal Wellness Inc.', 'Calle Wellness 345', 'Colonia VetGrove', 'Delegacion HealthVet', '90123', '555-4567', 'info@animalwellness.com'),
(6, 'Mundo de Mascotas', 'Avenida PetWorld 678', 'Colonia AmigosPeludos', 'Delegacion AnimalCity', '01234', '555-7890', 'ventas@mundomascotas.com'),
(7, 'VetShop Central', 'Calle Central 901', 'Colonia PetHub', 'Delegacion VetPlaza', '12345', '555-0123', 'info@vetshopcentral.com'),
(8, 'Furry Friends Supply', 'Avenida Furry 234', 'Colonia Purrville', 'Delegacion CatHaven', '23456', '555-3456', 'contact@furryfriendssupply.com'),
(9, 'PawPrints Store', 'Calle PawPrints 567', 'Colonia DogLovers', 'Delegacion PetParade', '34567', '555-6789', 'sales@pawprintsstore.com'),
(10, 'PetEssentials Co.', 'Avenida Essentials 890', 'Colonia PetVille', 'Delegacion AnimalSquare', '45678', '555-9012', 'info@petessentialsco.com'),
(11, 'Doggy Delights', 'Calle Delights 123', 'Colonia TailWaggers', 'Delegacion BarkTown', '56789', '555-2345', 'orders@doggydelights.com'),
(12, 'Kitty Corner Supplies', 'Avenida Corner 456', 'Colonia MeowStreet', 'Delegacion WhiskerVista', '67890', '555-5678', 'info@kittycornersupplies.com'),
(13, 'Happy Pets Emporium', 'Calle Happy 789', 'Colonia JoyfulTails', 'Delegacion WagCity', '78901', '555-8901', 'customerservice@happypetsemporium.com'),
(14, 'Paws and Claws Store', 'Avenida Paws 012', 'Colonia ClawValley', 'Delegacion PawPark', '89012', '555-1234', 'info@pawsandclawsstore.com'),
(15, 'VetCare Direct', 'Calle VetCare 345', 'Colonia PetWellness', 'Delegacion VetSquare', '90123', '555-5678', 'support@vetcaredirect.com');

--Registro para los prodcutos
INSERT INTO PRODUCTOS (ID_PRODUCTO, ID_PRO_PROD, NOM_PROD, PRECIO, CANTIDAD)
VALUES
('P001', 1, 'Comida para perros Premium', 30.00, 100),
('P002', 2, 'Juguete para gatos con catnip', 15.50, 50),
('P003', 3, 'Shampoo antialérgico para mascotas', 25.00, 80),
('P004', 4, 'Cama ortopédica para perros grandes', 50.00, 30),
('P005', 5, 'Collar antipulgas y garrapatas para gatos', 12.99, 120),
('P006', 6, 'Juguete masticable para perros', 8.75, 200),
('P007', 7, 'Arenero automático para gatos', 45.50, 20),
('P008', 8, 'Alimento balanceado para cachorros', 35.00, 150),
('P009', 9, 'Correa retráctil para perros', 18.99, 100),
('P010', 10, 'Casa para hamsters con laberinto', 22.50, 40),
('P011', 11, 'Peine deslanador para perros y gatos', 9.25, 80),
('P012', 12, 'Arnés para paseo de gatos', 14.75, 60),
('P013', 13, 'Comedero automático para perros y gatos', 28.00, 70),
('P014', 14, 'Snacks saludables para perros', 5.99, 250),
('P015', 15, 'Rascador para gatos con escondite', 32.50, 25);

--Registro para los proveedores de vacunas.
INSERT INTO PROVEEDOR_VACUNAS (ID_PRO_VAC, NOMBRE_PROV, CALLE, COLONIA, DELEGACION, CODIGO_POSTAL, TELEFONO, EMAIL)
VALUES
('PV001', 'Laboratorio Veterinario VacMax', 'Calle Vacuna 321', 'Colonia Inmunidad', 'Delegacion Sanidad', '45678', '555-7890', 'info@vacmax.com'),
('PV002', 'Vacunas PetCare', 'Avenida Prevención 987', 'Colonia AnimalHealth', 'Delegacion VaccineCity', '56789', '555-0123', 'ventas@petcarevaccines.com'),
('PV003', 'Laboratorio BioVet', 'Calle Bioseguridad 654', 'Colonia Virología', 'Delegacion VetLab', '67890', '555-3456', 'contacto@labobivet.com'),
('PV004', 'VetVax Innovations', 'Avenida Vax 789', 'Colonia Immunotech', 'Delegacion VetInnovate', '78901', '555-9012', 'info@vetvaxinnovations.com'),
('PV005', 'AnimalGuard Labs', 'Calle Guard 012', 'Colonia SafePaws', 'Delegacion VetShield', '89012', '555-2345', 'sales@animalguardlabs.com'),
('PV006', 'VetImmune Solutions', 'Avenida Immune 345', 'Colonia VetDefender', 'Delegacion VetSafeguard', '90123', '555-5678', 'info@vetimmune.com'),
('PV007', 'VaccineXpress', 'Calle Xpress 678', 'Colonia RapidVet', 'Delegacion SwiftCare', '01234', '555-8901', 'customerservice@vaccinexpress.com'),
('PV008', 'PreventiVet Labs', 'Avenida PreventiVet 901', 'Colonia VetPrevent', 'Delegacion VetGuard', '12345', '555-1234', 'info@preventivetlabs.com'),
('PV009', 'GuardianVax Co.', 'Calle Guardian 234', 'Colonia VetGuardian', 'Delegacion VetSafety', '23456', '555-5678', 'orders@guardianvax.com'),
('PV010', 'VetSafe Immunizations', 'Avenida VetSafe 567', 'Colonia SafePaws', 'Delegacion VetWellness', '34567', '555-9012', 'info@vetsafeimmunizations.com'),
('PV011', 'VetShield Innovations', 'Calle Shield 890', 'Colonia VetDefend', 'Delegacion VetSecurity', '45678', '555-2345', 'support@vetshieldinnovations.com'),
('PV012', 'HealthVet Solutions', 'Avenida HealthVet 123', 'Colonia VetWellbeing', 'Delegacion VetHealth', '56789', '555-5678', 'info@healthvetsolutions.com'),
('PV013', 'SafeVet Labs', 'Calle SafeVet 456', 'Colonia VetGuard', 'Delegacion VetSafe', '67890', '555-8901', 'contact@safetvetlabs.com'),
('PV014', 'QuickVax Pharmaceuticals', 'Avenida QuickVax 789', 'Colonia RapidVet', 'Delegacion VetQuick', '78901', '555-1234', 'info@quickvaxpharma.com'),
('PV015', 'VetWellness Essentials', 'Calle Wellness 012', 'Colonia VetEssentials', 'Delegacion VetWellness', '89012', '555-5678', 'sales@vetwellnessessentials.com');

--Registros para las Vacunas
INSERT INTO VACUNAS (ID_VACUNA, ID_PRO_VAC, NOM_VAC, PRECIO)
VALUES
('V001', 'PV001', 'Vacuna contra la rabia', 20.00),
('V002', 'PV002', 'Vacuna polivalente para perros', 30.50),
('V003', 'PV003', 'Vacuna contra la leptospirosis', 25.00),
('V004', 'PV004', 'Vacuna contra la tos de las perreras', 15.00),
('V005', 'PV005', 'Vacuna contra el parvovirus canino', 18.99),
('V006', 'PV006', 'Vacuna contra la rinotraqueítis felina', 22.75),
('V007', 'PV007', 'Vacuna contra la panleucopenia felina', 40.50),
('V008', 'PV008', 'Vacuna contra la hepatitis canina', 35.00),
('V009', 'PV009', 'Vacuna contra la giardiasis en perros', 12.99),
('V010', 'PV010', 'Vacuna contra la sarna en roedores', 10.50),
('V011', 'PV011', 'Vacuna contra la enfermedad de Lyme', 28.25),
('V012', 'PV012', 'Vacuna contra la gripe felina', 14.75),
('V013', 'PV013', 'Vacuna contra el virus del moquillo canino', 32.00),
('V014', 'PV014', 'Vacuna contra la alergia a pulgas en gatos', 8.99),
('V015', 'PV015', 'Vacuna antiparasitaria para aves', 25.50);

--Resgiros para las CONSULTAS
INSERT INTO CONSULTAS (ID_CONSULTA, ID_MASCOTA, NUM_CEDULA, FECHA, TIPO_CONSULTA, COSTO_CONSULTA)
VALUES
(1, 1, 'VET001', TO_DATE('2024-01-15', 'YYYY-MM-DD'), 'Consulta General', 50.00),
(2, 2, 'VET002', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'Vacunación', 25.00),
(3, 3, 'VET003', TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Análisis de Sangre', 80.00),
(4, 4, 'VET004', TO_DATE('2024-04-05', 'YYYY-MM-DD'), 'Cirugía de Esterilización', 120.00),
(5, 5, 'VET005', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 'Radiografía', 60.50),
(6, 6, 'VET006', TO_DATE('2024-06-22', 'YYYY-MM-DD'), 'Control de Peso y Nutrición', 35.00),
(7, 7, 'VET007', TO_DATE('2024-07-14', 'YYYY-MM-DD'), 'Ecografía', 70.99),
(8, 8, 'VET008', TO_DATE('2024-08-30', 'YYYY-MM-DD'), 'Tratamiento para Parásitos', 30.00),
(9, 9, 'VET009', TO_DATE('2024-09-09', 'YYYY-MM-DD'), 'Exámenes de Orina', 45.75),
(10, 10, 'VET010', TO_DATE('2024-10-12', 'YYYY-MM-DD'), 'Cirugía de Emergencia', 150.00);

--Regitro de la tabla servicio mascota
INSERT INTO SERVICIO_MASCOTA (ID_MASCOTA, ID_SERVICIO, TIPO_SERVICIO, DESCRIPCION, FECHA)
VALUES
(1, 'S001', 'Consulta General', 'Examen de rutina y chequeo de salud', TO_DATE('2024-01-20', 'YYYY-MM-DD')),
(2, 'S002', 'Vacunación', 'Aplicación de vacunas preventivas', TO_DATE('2024-02-25', 'YYYY-MM-DD')),
(3, 'S003', 'Análisis de Sangre', 'Pruebas sanguíneas para detectar posibles enfermedades', TO_DATE('2024-03-15', 'YYYY-MM-DD')),
(4, 'S004', 'Cirugía de Esterilización', 'Procedimiento quirúrgico para esterilización', TO_DATE('2024-04-10', 'YYYY-MM-DD')),
(5, 'S005', 'Radiografía', 'Imagen por rayos X para diagnosticar problemas internos', TO_DATE('2024-05-23', 'YYYY-MM-DD')),
(6, 'S006', 'Limpieza Dental', 'Procedimiento para mantener la salud dental', TO_DATE('2024-06-27', 'YYYY-MM-DD')),
(7, 'S007', 'Tratamiento para Parásitos', 'Medicación para eliminar parásitos internos y externos', TO_DATE('2024-07-19', 'YYYY-MM-DD')),
(8, 'S008', 'Exámenes de Orina', 'Análisis de orina para evaluar la salud renal', TO_DATE('2024-08-05', 'YYYY-MM-DD')),
(9, 'S009', 'Cirugía de Emergencia', 'Procedimiento quirúrgico urgente', TO_DATE('2024-09-15', 'YYYY-MM-DD')),
(10, 'S010', 'Ecografía', 'Imágenes de ultrasonido para diagnóstico', TO_DATE('2024-10-18', 'YYYY-MM-DD'));

--Registro de ventas
INSERT INTO VENTAS (ID_VENTA, ID_CLIENTE, ID_PRODUCTO, DESCRIPCION, CANTIDAD)
VALUES
(1, 1, 'P001', 'Comida para perros Premium', 2),
(2, 2, 'P003', 'Shampoo antialérgico para mascotas', 1),
(3, 3, 'P005', 'Collar antipulgas y garrapatas para gatos', 3),
(4, 4, 'P007', 'Arenero automático para gatos', 1),
(5, 5, 'P009', 'Correa retráctil para perros', 2),
(6, 6, 'P011', 'Peine deslanador para perros y gatos', 1),
(7, 7, 'P013', 'Comedero automático para perros y gatos', 2),
(8, 8, 'P015', 'Rascador para gatos con escondite', 1),
(9, 9, 'P002', 'Juguete para gatos con catnip', 4),
(10, 10, 'P004', 'Cama ortopédica para perros grandes', 1);

--Registro de Vacunas
INSERT INTO VACUNACIONES (ID_MASCOTA, ID_VACUNA, FECHA_PROGRAMADA, FECHA_APLICACION, CANTIDAD, UNIDAD)
VALUES
(1, 'V001', TO_DATE('2024-01-30', 'YYYY-MM-DD'), TO_DATE('2024-01-30', 'YYYY-MM-DD'), 1, 'Dosis'),
(2, 'V002', TO_DATE('2024-03-05', 'YYYY-MM-DD'), TO_DATE('2024-03-05', 'YYYY-MM-DD'), 1, 'Dosis'),
(3, 'V003', TO_DATE('2024-04-20', 'YYYY-MM-DD'), TO_DATE('2024-04-20', 'YYYY-MM-DD'), 1, 'Dosis'),
(4, 'V004', TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'), 1, 'Dosis'),
(5, 'V005', TO_DATE('2024-06-25', 'YYYY-MM-DD'), TO_DATE('2024-06-25', 'YYYY-MM-DD'), 1, 'Dosis'),
(6, 'V006', TO_DATE('2024-07-10', 'YYYY-MM-DD'), TO_DATE('2024-07-10', 'YYYY-MM-DD'), 1, 'Dosis'),
(7, 'V007', TO_DATE('2024-08-15', 'YYYY-MM-DD'), TO_DATE('2024-08-15', 'YYYY-MM-DD'), 1, 'Dosis'),
(8, 'V008', TO_DATE('2024-09-30', 'YYYY-MM-DD'), TO_DATE('2024-09-30', 'YYYY-MM-DD'), 1, 'Dosis'),
(9, 'V009', TO_DATE('2024-10-10', 'YYYY-MM-DD'), TO_DATE('2024-10-10', 'YYYY-MM-DD'), 1, 'Dosis'),
(10, 'V010', TO_DATE('2024-11-12', 'YYYY-MM-DD'), TO_DATE('2024-11-12', 'YYYY-MM-DD'), 1, 'Dosis');

--Registro para los servicio
INSERT INTO SERVICIOS (ID_SERVICIO, NOM_SER, PRECIO)
VALUES
('S001', 'Consulta General', 50.00),
('S002', 'Vacunación', 25.00),
('S003', 'Análisis de Sangre', 80.00),
('S004', 'Radiografía', 60.50),
('S005', 'Cirugía de Esterilización', 120.00),
('S006', 'Limpieza Dental', 40.00),
('S007', 'Tratamiento para Parásitos', 30.00),
('S008', 'Exámenes de Orina', 45.75),
('S009', 'Cirugía de Emergencia', 150.00),
('S010', 'Ecografía', 70.99),
('S011', 'Rehabilitación Física', 55.25),
('S012', 'Endoscopia', 90.00),
('S013', 'Odontología Veterinaria', 65.50),
('S014', 'Control de Peso y Nutrición', 35.00),
('S015', 'Hospitalización', 75.00);

