--Práctica. Virginia Ordoño Bernier
-- Módulo SQL. Keepcoding
--DDL

CREATE SCHEMA company AUTHORIZATION vnmxeoyc;

--DROP TABLE IF EXISTS company.hist_check;
--DROP TABLE IF EXISTS company.car;
--DROP TABLE IF EXISTS company.ip;
--DROP TABLE IF EXISTS company.car_type;
--DROP TABLE IF EXISTS company.check_result;
--DROP TABLE IF EXISTS company.currency;

-------------------1. TABLE CURRENCY-------------------
CREATE TABLE company.currency (
    id_curr SERIAL not null,
    name_curr VARCHAR(50) NOT NULL,
    symbol_curr VARCHAR(5) NOT NULL
);

--PK
ALTER TABLE company.currency 
ADD CONSTRAINT currency_PK PRIMARY KEY (id_curr);

--Created at and updated at
ALTER TABLE ONLY company.currency ADD COLUMN created_at TIMESTAMP DEFAULT NOW();
ALTER TABLE ONLY company.currency ADD COLUMN updated_at TIMESTAMP DEFAULT NOW();

-------------------2. TABLE CHECK RESULT-------------------
CREATE TABLE company.check_result (
    id_check_result SERIAL not null,
    status_result boolean not null,
    description_result varchar(200) not null
);

--PK
ALTER TABLE company.check_result
ADD CONSTRAINT check_result_PK PRIMARY KEY (id_check_result);

--Created at and updated at
ALTER TABLE ONLY company.check_result ADD COLUMN "created_at" TIMESTAMP DEFAULT NOW();
ALTER TABLE ONLY company.check_result ADD COLUMN "updated_at" TIMESTAMP DEFAULT NOW();


-------------------3. TABLE CAR_TYPE-------------------
CREATE TABLE company.car_type (
    id_car_type SERIAL not null,
    company varchar(50) not null,
    brand varchar(50) not null,
    model varchar(50) not null,
    color varchar(50) not null
);

--PK
ALTER TABLE company.car_type
ADD CONSTRAINT car_type_PK PRIMARY KEY (id_car_type);

--Created at and updated at
ALTER TABLE ONLY company.car_type ADD COLUMN created_at TIMESTAMP DEFAULT NOW();
ALTER TABLE ONLY company.car_type ADD COLUMN updated_at TIMESTAMP DEFAULT NOW();

-------------------4. TABLE CAR_INS_POL-------------------
CREATE TABLE company.ip (
    id_ip SERIAL not null,
    id_curr integer not null,
    comp_name_ip varchar(50) not null,
    type_ip varchar(50) not null,
    number_ip varchar(50) not null,
    price_ip numeric(10,2) not null,
    start_date_ip date not null,
    end_date_ip date not null
);

--PK
ALTER TABLE company.ip 
ADD CONSTRAINT ip_PK PRIMARY KEy (id_ip);

--FK
ALTER TABLE company.ip
ADD CONSTRAINT ip_curr_FK FOREIGN KEY (id_curr) 
REFERENCES company.currency (id_curr);

--Created_at and updated_at
ALTER TABLE ONLY company.ip ADD COLUMN created_at TIMESTAMP DEFAULT NOW();
ALTER TABLE ONLY company.ip ADD COLUMN updated_at TIMESTAMP DEFAULT NOW();

-------------------5. TABLE CAR-------------------

CREATE TABLE company.car (
    id_car SERIAL not null,
    id_car_type integer not null,
    id_ip integer not null,
    id_curr integer not null,
    num_plate varchar(50) not null,
    total_km int not null,
    acq_date date not null,
    acq_price numeric(10,2) not null,
    status_car varchar(50) not null
);

--PK
ALTER TABLE company.car
ADD CONSTRAINT car_PK PRIMARY KEY (id_car);

--FK
ALTER TABLE company.car
ADD CONSTRAINT id_car_type_FK FOREIGN KEY (id_car_type)
REFERENCES company.car_type (id_car_type);

--FK
ALTER TABLE company.car
ADD CONSTRAINT id_ip_FK FOREIGN KEY (id_ip)
REFERENCES company.ip (id_ip);

--FK
ALTER TABLE company.car
ADD CONSTRAINT id_curr_FK FOREIGN KEY (id_curr)
REFERENCES company.currency (id_curr);

--Created_at and updated_at
ALTER TABLE ONLY company.car ADD COLUMN created_at TIMESTAMP DEFAULT NOW();
ALTER TABLE ONLY company.car ADD COLUMN updated_at TIMESTAMP DEFAULT NOW();

-------------------6. TABLE HISTORY CAR CHECK-------------------
CREATE TABLE company.hist_check (
    id_car SERIAL not null, --PK, FK
    date_hc date not null, --PK
    id_curr integer not null, --FK
    id_check_result integer not null, --FK
    km_hc numeric(10,2) not null,
    price_hc numeric(10,2) not null
);

--PK
ALTER TABLE company.hist_check
ADD CONSTRAINT hist_check_PK PRIMARY KEY (id_car, date_hc);

--FK
ALTER TABLE company.hist_check
ADD CONSTRAINT id_car_FK FOREIGN KEY (id_car)
REFERENCES company.car (id_car);

--FK
ALTER TABLE company.hist_check
ADD CONSTRAINT id_curr_FK FOREIGN KEY (id_curr)
REFERENCES company.currency (id_curr);

--FK
ALTER TABLE company.hist_check
ADD CONSTRAINT id_check_result_FK FOREIGN KEY (id_check_result)
REFERENCES company.check_result (id_check_result);

--Add created_at and updated_at 
ALTER TABLE ONLY company.hist_check ADD COLUMN created_at TIMESTAMP DEFAULT NOW();
ALTER TABLE ONLY company.hist_check ADD COLUMN updated_at TIMESTAMP DEFAULT NOW();