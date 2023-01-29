USE IranKhodro_DB;

CREATE TABLE Brands (
    id_b VARCHAR(20) NOT NULL,
    name VARCHAR(20) ,
    PRIMARY KEY (id_b)
);

CREATE TABLE Colors (
    id_co      VARCHAR(20) NOT NULL,
    ncolor  VARCHAR(20),
    PRIMARY KEY (id_co),
    UNIQUE (ncolor)
);

CREATE TABLE geartype (
    id_g VARCHAR(20) NOT NULL,
    ngeartype VARCHAR(20) ,
    PRIMARY KEY (id_g)
);

CREATE TABLE Models (
    id_m VARCHAR(20) NOT NULL,
    name VARCHAR(20) ,
    brand_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_m),
    FOREIGN KEY (brand_id)
        REFERENCES Brands (id_b)
);

CREATE TABLE Costumers_Address (
    zip CHAR(10) NOT NULL,
    province VARCHAR(20),
    city VARCHAR(20),
    street VARCHAR(20),
    PRIMARY KEY (zip)
);

CREATE TABLE Suppliers_Address (
    zip CHAR(10) NOT NULL,
    province VARCHAR(20),
    city VARCHAR(20),
    street VARCHAR(20),
    PRIMARY KEY (zip)
);

CREATE TABLE Suppliers (
    id_s VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    begindate TIMESTAMP,
    enddate TIMESTAMP,
    manager_name VARCHAR(20),
    zip CHAR(10) NOT NULL,
    PRIMARY KEY (id_s),
    FOREIGN KEY (zip)
        REFERENCES Suppliers_Address (zip)
        ON DELETE CASCADE
);

CREATE TABLE Vehicles (
    VIN CHAR(8) NOT NULL,
    brand_id VARCHAR(20) NOT NULL,
    model_id VARCHAR(20) NOT NULL,
    geartype_id VARCHAR(20) NOT NULL,
    color_id VARCHAR(20) NOT NULL,
    FOREIGN KEY (brand_id)
        REFERENCES Brands (id_b)
        ON DELETE CASCADE,
    FOREIGN KEY (model_id)
        REFERENCES models (id_m)
        ON DELETE CASCADE,
    FOREIGN KEY (geartype_id)
        REFERENCES geartype (id_g)
        ON DELETE CASCADE,
    FOREIGN KEY (color_id)
        REFERENCES Colors (id_co)
        ON DELETE CASCADE,
    PRIMARY KEY (VIN)
);

CREATE TABLE SparePart (
    id_sp VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    price NUMERIC(5 , 2),
    stock INT,
    supplier_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_sp),
    FOREIGN KEY (supplier_id)
        REFERENCES Suppliers (id_s)
);

CREATE TABLE Costumers (
    id_c CHAR(12) NOT NULL,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    zip CHAR(10) NOT NULL,
    phonenumber CHAR(20),
    PRIMARY KEY (id_c),
    FOREIGN KEY (zip)
        REFERENCES Costumers_Address (zip)
        ON DELETE CASCADE
);


CREATE TABLE vehicle_orders (
    id_vo VARCHAR(20) NOT NULL,
    costumer_id CHAR(12) NOT NULL,
    counts INT,
    vehicle_id CHAR(8) NOT NULL,
    PRIMARY KEY (id_vo),
    FOREIGN KEY (costumer_id)
        REFERENCES Costumers (id_c)
        ON DELETE CASCADE,
    FOREIGN KEY (vehicle_id)
        REFERENCES Vehicles (VIN)
);

CREATE TABLE sparepart_orders (
    id_so VARCHAR(20) NOT NULL,
    costumer_id CHAR(12) NOT NULL,
    counts INT,
    sparepart_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_so),
    FOREIGN KEY (costumer_id)
        REFERENCES Costumers (id_c),
    FOREIGN KEY (sparepart_id)
        REFERENCES Sparepart (id_sp)
);
