--Práctica. Virginia Ordoño Bernier
-- Módulo SQL. Keepcoding
--DML

-------------------1. TABLE CURRENCY-------------------
INSERT INTO company.currency (name_curr, symbol_curr) 
VALUES ('Euro', '€'),
('Dollar', '$'),
('Pound', '£'),
('Yen', '¥'),
('Ruble', '₽'); 

--SELECT * FROM company.currency;

-------------------2. TABLE CHECK RESULT-------------------

INSERT INTO company.check_result (status_result, description_result)
VALUES ('True', 'El vehículo está en perfecto estado'),
('False', 'Daños en el parachoques delantero'),
('False', 'Daños en el parachoques trasero'),
('False', 'Daños en el parachoques trasero y delantero'),
('False', 'Daños en el parachoques trasero y delantero y en la puerta del conductor'),
('False', 'Daños en el parachoques trasero y delantero y en la puerta del conductor y del pasajero'),
('False', 'Daños en el parachoques trasero y delantero y en la puerta del conductor y del pasajero y en el capó'),
('False', 'Daños en el parachoques trasero y delantero y en la puerta del conductor y del pasajero y en el capó y en la puerta del conductor y del pasajero'),
('False', 'Daños en el parachoques trasero y delantero, puerta del conductor y del pasajero, capó');

--SELECT * FROM company.check_result;


-------------------3. TABLE CAR_TYPE-------------------

INSERT INTO company.car_type (company, brand, model, color)
VALUES ('BNW Group', 'BMW', 'X5', 'Negro'),
('BNW Group', 'Rolls Royce', 'Phantom', 'Blanco'),
('Volkswagen Group', 'Audi', 'A4', 'Negro'),
('Volkswagen Group', 'Porsche', 'Cayenne', 'Blanco'),
('FCA', 'Fiat', '500', 'Rojo'),
('FCA', 'Alfa Romeo', 'Giulia', 'Blanco'),
('Ford', 'Ford', 'Focus', 'Negro'),
('Ford', 'Ford', 'Fiesta', 'Azul'),
('Ford', 'Ford', 'Mondeo', 'Blanco'),
('Toyota', 'Toyota', 'Corolla', 'Negro'
);

--SELECT * FROM company.car_type;


-------------------4. TABLE CAR_INS_POL-------------------

INSERT INTO company.ip (id_curr, comp_name_ip, 
type_ip, number_ip, price_ip,
start_date_ip, end_date_ip)
VALUES (1, 'Mapfre', 'Cobertura básica', 'IP-Map-1234', 1000.00, '2020-04-04', '2025-04-04'),
(1, 'Mapfre', 'Cobertura básica', 'IP-Map-1289', 1000.00, '2018-03-31', '2023-03-31'),
(1, 'Mapfre', 'Cobertura plus', 'IP-Map-5643', 3000.00, '2020-05-12', '2025-05-12'),
(1, 'Mapfre', 'Cobertura plus', 'IP-Map-1399', 3000.00, '2019-10-11', '2023-10-11'),
(1, 'Zurich', 'Cobertura básica', 'IP-Zur-1100', 1000.00, '2020-05-14', '2025-05-14'),
(1, 'Zurich', 'Cobertura básica', 'IP-Zur-4234', 1000.00, '2022-01-01', '2027-01-01'),
(1, 'Zurich', 'Cobertura amplia', 'IP-Zur-8734', 2000.00, '2020-12-31', '2025-12-31'),
(1, 'Zurich', 'Cobertura amplia', 'IP-Zur-9843', 2000.00, '2019-02-02', '2024-02-02'),
(1, 'Mapfre', 'Cobertura amplia', 'IP-Map-8734', 2000.00, '2020-01-01', '2020-12-31'),
(1, 'Mapfre', 'Cobertura amplia', 'IP-Map-9843', 2000.00, '2020-11-17', '2025-11-17'
);

--SELECT * FROM company.ip;

-------------------5. TABLE CAR-------------------

INSERT INTO company.car (id_car_type, id_ip, id_curr, num_plate, total_km, acq_date, acq_price, status_car)
VALUES (1, 1, 1, '5566QTW', 1928.00, '2019-01-01', 10000.00, 'Disponible'),
(1, 2, 1, '6483YWC', 2200.00, '2016-01-01', 10000.00, 'Disponible'),
(1, 3, 1, '3134PHB', 1837.00, '2019-01-01', 10000.00, 'Disponible'),
(1, 4, 1, '9196JEY', 8476.50, '2017-01-01', 10000.00, 'No disponible'),
(1, 5, 1, '8904TJB', 900.20, '2016-01-01', 10000.00, 'Disponible'),
(1, 6, 1, '1240XMR', 846.90, '2017-01-01', 10000.00, 'Disponible'),
(1, 7, 1, '5609ZVE', 2332.34, '2013-01-01', 10000.00, 'No disponible'),
(1, 8, 1, '8746HDT', 1837.98, '2012-01-01', 10000.00, 'Disponible'),
(1, 9, 1, '9453GFU', 1837.98, '2011-01-01', 10000.00, 'Disponible'),
(1, 10, 1, '1287MND', 1837.98, '2010-01-01', 10000.00, 'Disponible'
);

--SELECT * FROM company.car;

-------------------6. TABLE HISTORY CAR CHECK-------------------

INSERT INTO company.hist_check (id_car, date_hc, id_curr, id_check_result, km_hc, price_hc)
VALUES (1, '2019-01-01', 1, 1, 1928.00, 1000.00),
(2, '2016-01-01', 1, 1, 2200.00, 1000.00),
(3, '2019-01-01', 1, 1, 1837.00, 1000.00),
(4, '2019-01-01', 1, 1, 8476.50, 1000.00),
(5, '2019-01-01', 1, 1, 900.20, 1000.00),
(6, '2019-01-01', 1, 1, 846.90, 1000.00),
(7, '2019-01-01', 1, 1, 2332.34, 1000.00),
(8, '2019-01-01', 1, 1, 1837.98, 1000.00),
(9, '2019-01-01', 1, 1, 1837.98, 1000.00),
(10, '2019-01-01', 1, 1, 1837.98, 1000.00
);


--Query
-- Nombre modelo, marca y grupo de coches (los nombre de todos)
-- Fecha de compra
-- Matricula
-- Nombre del color del coche
-- Total kilómetros
-- Nombre empresa que esta asegurado el coche
-- Numero de póliza
SELECT model as modelo, brand as marca, 
company as grupo, 
to_char(c.acq_date, 'DD/MM/YYYY') as fecha_compra,
num_plate as matrícula,
t.color as color,
c.total_km as kilómetros,
ip.comp_name_ip as empresa_aseguradora,
ip.number_ip as número_póliza
FROM company.car_type t INNER JOIN company.car c
on t.id_car_type = c.id_car
INNER JOIN company.ip ip
on c.id_ip = ip.id_ip;
