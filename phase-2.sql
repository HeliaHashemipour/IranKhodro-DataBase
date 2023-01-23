USE IranKhodro;

CREATE TABLE Vehicles (
    VIN CHAR(8) NOT NULL,
    brand_id VARCHAR(20) NOT NULL,
    model_id VARCHAR(20) NOT NULL,
    geartype_name VARCHAR(20) NOT NULL,
    color_name VARCHAR(20) NOT NULL,
    FOREIGN KEY (brand_id)
        REFERENCES Brands (id)
        ON DELETE CASCADE,
    FOREIGN KEY (model_id)
        REFERENCES models (id)
        ON DELETE CASCADE,
    FOREIGN KEY (geartype_name)
        REFERENCES geartype (ngeartype)
        ON DELETE CASCADE,
    FOREIGN KEY (color_name)
        REFERENCES Colors (ncolor)
        ON DELETE CASCADE,
    PRIMARY KEY (VIN)
);

CREATE TABLE Brands (
    id VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Colors (
    ncolor VARCHAR(20) NOT NULL,
    PRIMARY KEY (ncolor),
    UNIQUE (ncolor)
);
CREATE TABLE geartype (
    ngeartype VARCHAR(20) NOT NULL,
    PRIMARY KEY (ngeartype)
);

CREATE TABLE Models (
    id VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    brand_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (brand_id)
        REFERENCES Brands (id)
);

CREATE TABLE Suppliers (
    id VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    begindate TIMESTAMP,
    enddate TIMESTAMP,
    manager_name VARCHAR(20),
    zip CHAR(10) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (zip)
        REFERENCES Suppliers_Address (zip)
        ON DELETE CASCADE
);

CREATE TABLE SparePart (
    id VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    price NUMERIC(5 , 2 ),
    stock INT,
    supplier_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (supplier_id)
        REFERENCES Suppliers (id)
);

CREATE TABLE Costumers (
    id CHAR(12) NOT NULL,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    zip CHAR(10) NOT NULL,
    phonenumber CHAR(20),
    PRIMARY KEY (id),
    FOREIGN KEY (zip)
        REFERENCES Costumers_Address (zip)
        ON DELETE CASCADE
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

CREATE TABLE vehicle_orders (
    id VARCHAR(20) NOT NULL,
    costumer_id CHAR(12) NOT NULL,
    counts INT,
    vehicle_id CHAR(8) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (costumer_id)
        REFERENCES Costumers (id)
        ON DELETE CASCADE,
    FOREIGN KEY (vehicle_id)
        REFERENCES Vehicles (VIN)
);

CREATE TABLE sparepart_orders (
    id VARCHAR(20) NOT NULL,
    costumer_id CHAR(12) NOT NULL,
    counts INT,
    sparepart_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (costumer_id)
        REFERENCES Costumers (id),
    FOREIGN KEY (sparepart_id)
        REFERENCES Sparepart (id)
);
