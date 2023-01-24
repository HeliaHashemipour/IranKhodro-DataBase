
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

drop table vehicle_orders;

INSERT INTO Costumers_Address
VALUES (26036,"Texas","Dawson","Sussex Court");
INSERT INTO Costumers_Address
VALUES (53075,"Oklahoma","Oklahoma City","Benson Park Drive");
INSERT INTO Costumers_Address
VALUES (06004,"Illinois","Chicago","4633 Kembery Drive");
INSERT INTO Costumers_Address
VALUES (41484,"Maryland","Rockville","Roane Avenue");
INSERT INTO Costumers_Address
VALUES (69498,"Michigan","Okemos","Elk Avenue");
INSERT INTO Costumers_Address
VALUES (48362,"Wisconsin","West Allis","Joseph Street");
INSERT INTO Costumers_Address
VALUES (12629,"Ohio","Dayton","Norma Avenue");
INSERT INTO Costumers_Address
VALUES (17722,"California","Walnut","Paradise Lane");
INSERT INTO Costumers_Address
VALUES (52293,"Florida","Miami","Golden Street");
INSERT INTO Costumers_Address
VALUES (23790,"Colorado","Denver","Snider Street");
INSERT INTO Costumers_Address
VALUES (86331,"Illinois","Arthur Avenue","Freeport");

INSERT INTO Suppliers_Address
VALUES (11519,"Washington","Seattle","Dale Avenue");
INSERT INTO Suppliers_Address
VALUES (24098,"Texas","Houston"," Margaret Street");
INSERT INTO Suppliers_Address
VALUES (96919,"Iowa","Sioux City","Clousson Road");
INSERT INTO Suppliers_Address
VALUES (81958,"New Jersey","Morristown","Jadewood Farms");
INSERT INTO Suppliers_Address
VALUES (01396,"Kentucky","Murray","Coffman Alley");
INSERT INTO Suppliers_Address
VALUES (37321,"Arizona","Phoenix","Farm Meadow Drive");

INSERT INTO Brands
VALUES (0,"haima");
INSERT INTO Brands
VALUES (1,"pezho 405");
INSERT INTO Brands
VALUES (2,"pezho 206");
INSERT INTO Brands
VALUES (3,"pezho 207");
INSERT INTO Brands
VALUES (4,"dena");
INSERT INTO Brands
VALUES (5,"saina");
INSERT INTO Brands
VALUES (6,"peride");


INSERT INTO Models
VALUES (0,"tip2",0);
INSERT INTO Models
VALUES (1,"tip3",0);
INSERT INTO Models
VALUES (2,"tip4",0);
INSERT INTO Models
VALUES (3,"tip2",1);
INSERT INTO Models
VALUES (4,"tip3",1);
INSERT INTO Models
VALUES (5,"tip4",1);
INSERT INTO Models
VALUES (6,"tip2",2);
INSERT INTO Models
VALUES (7,"tip3",2);
INSERT INTO Models
VALUES (8,"tip4",2);
INSERT INTO Models
VALUES (9,"tip2",3);
INSERT INTO Models
VALUES (10,"tip3",3);
INSERT INTO Models
VALUES (11,"tip4",3);
INSERT INTO Models
VALUES (12,"tip2",4);
INSERT INTO Models
VALUES (13,"tip3",4);
INSERT INTO Models
VALUES (14,"tip4",4);
INSERT INTO Models
VALUES (15,"tip2",5);
INSERT INTO Models
VALUES (16,"tip3",5);
INSERT INTO Models
VALUES (17,"tip4",5);
INSERT INTO Models
VALUES (18,"tip2",6);
INSERT INTO Models
VALUES (19,"tip3",6);
INSERT INTO Models
VALUES (20,"tip4",6);

INSERT INTO colors
VALUES ("meshki");
INSERT INTO colors
VALUES ("sefid");
INSERT INTO colors
VALUES ("ghermez");
INSERT INTO colors
VALUES ("doodi");
INSERT INTO colors
VALUES ("noghreyi");

INSERT INTO geartype
VALUES ("automat");
INSERT INTO geartype
VALUES ("dasti");

INSERT INTO Vehicles
VALUES (0,0,0,"dasti","meshki");
INSERT INTO Vehicles
VALUES (1,4,0,"dasti","noghreyi");
INSERT INTO Vehicles
VALUES (2,3,0,"automat","doodi");
INSERT INTO Vehicles
VALUES (3,4,0,"automat","noghreyi");
INSERT INTO Vehicles
VALUES (4,3,0,"dasti","meshki");
INSERT INTO Vehicles
VALUES (5,4,0,"automat","ghermez");
INSERT INTO Vehicles
VALUES (6,6,18,"automat","sefid");
INSERT INTO Vehicles
VALUES (7,6,20,"dasti","doodi");
INSERT INTO Vehicles
VALUES (8,6,19,"dasti","noghreyi");
INSERT INTO Vehicles
VALUES (9,6,20,"automat","ghermez");
INSERT INTO Vehicles
VALUES (10,5,19,"automat","meshki");
INSERT INTO Vehicles
VALUES (11,5,18,"dasti","doodi");

INSERT INTO Costumers_Address
VALUES (26036,"Texas","Dawson","Sussex Court");
INSERT INTO Costumers_Address
VALUES (53075,"Oklahoma","Oklahoma City","Benson Park Drive");
INSERT INTO Costumers_Address
VALUES (06004,"Illinois","Chicago","4633 Kembery Drive");
INSERT INTO Costumers_Address
VALUES (41484,"Maryland","Rockville","Roane Avenue");
INSERT INTO Costumers_Address
VALUES (69498,"Michigan","Okemos","Elk Avenue");
INSERT INTO Costumers_Address
VALUES (48362,"Wisconsin","West Allis","Joseph Street");
INSERT INTO Costumers_Address
VALUES (12629,"Ohio","Dayton","Norma Avenue");
INSERT INTO Costumers_Address
VALUES (17722,"California","Walnut","Paradise Lane");
INSERT INTO Costumers_Address
VALUES (52293,"Florida","Miami","Golden Street");
INSERT INTO Costumers_Address
VALUES (23790,"Colorado","Denver","Snider Street");
INSERT INTO Costumers_Address
VALUES (86331,"Illinois","Arthur Avenue","Freeport");


INSERT INTO Costumers
VALUES (5932694823,"Helia","Hashemipour",26036,09336659592);
INSERT INTO Costumers
VALUES (7020626343,"Joann","Harlan",53075,3047339912);
INSERT INTO Costumers
VALUES (5178711327,"Frank","Clevenger",06004,5732440631);
INSERT INTO Costumers
VALUES (6086221790,"Michael","Osborne",41484,6019779522);
INSERT INTO Costumers
VALUES (3674225298,"Brian","Park",69498,766342214);
INSERT INTO Costumers
VALUES (9894708099,"Srebrenka","Nikolić",48362,640233580);
INSERT INTO Costumers
VALUES (5404135522,"Bok'Ka","Velai",12629,767252043);
INSERT INTO Costumers
VALUES (9620375246,"D'Gara","Grendle",17722,0695317554);
INSERT INTO Costumers
VALUES (9606996204,"Tôn","Quốc",52293,0697068165);
INSERT INTO Costumers
VALUES (5361231363,"Sólveig","Bertelsson",23790,04956169150);
INSERT INTO Costumers
VALUES (7048104163,"Hjálmar","Kristmundsson",86331,02207555060);

INSERT INTO Suppliers_Address
VALUES (11519,"Washington","Seattle","Dale Avenue");
INSERT INTO Suppliers_Address
VALUES (24098,"Texas","Houston"," Margaret Street");
INSERT INTO Suppliers_Address
VALUES (96919,"Iowa","Sioux City","Clousson Road");
INSERT INTO Suppliers_Address
VALUES (81958,"New Jersey","Morristown","Jadewood Farms");
INSERT INTO Suppliers_Address
VALUES (01396,"Kentucky","Murray","Coffman Alley");
INSERT INTO Suppliers_Address
VALUES (37321,"Arizona","Phoenix","Farm Meadow Drive");

INSERT INTO Suppliers
VALUES (0,"Noel Esquibel","2005-05-09 10:45:15","2023-05-10 11:04:15","Gadiel Téllez",11519);
INSERT INTO Suppliers
VALUES (2,"Longoria","2010-03-23","2023-08-21 12:07:15","Margaret Cabán",24098);
INSERT INTO Suppliers
VALUES (1,"Sora Sepúlveda","2009-09-20","2022-10-13 12:07:15","Swen Schiffer",96919);
INSERT INTO Suppliers
VALUES (3,"Abel Semere","2012-06-25","2023-01-15 12:07:15","Jens E. Olesen",81958);
INSERT INTO Suppliers
VALUES (4,"Fre-Swera Sheshy","2011-04-13","2023-02-24 12:07:15","Tilde J. Gregersen",01396);
INSERT INTO Suppliers
VALUES (5,"Biniam Fikru","2010-03-23","2023-10-26 13:08:15","Silje Kristrsen",37321);

INSERT INTO SparePart
VALUES (0,"wing mirror","155.5","50",0);
INSERT INTO SparePart
VALUES (1,"windscreen","245.5","55",1);
INSERT INTO SparePart
VALUES (2,"brake","495.5","34",2);
INSERT INTO SparePart
VALUES (3,"doorhandle","105","67",3);
INSERT INTO SparePart
VALUES (4,"ignition","845","33",0);
INSERT INTO SparePart
VALUES (5,"accelerator","745","24",1);
INSERT INTO SparePart
VALUES (6,"clutch","937","76",2);
INSERT INTO SparePart
VALUES (7,"horn","554","98",3);



INSERT INTO sparepart_orders
VALUES (0,3674225298,104,7);
INSERT INTO sparepart_orders
VALUES (1,6086221790,86,3);

INSERT INTO vehicle_orders
VALUES (0,9606996204,2,0);
INSERT INTO vehicle_orders
VALUES (1,7048104163,1,6);
INSERT INTO vehicle_orders
VALUES (2,5361231363,0,6);

INSERT INTO vehicle_orders
VALUES (2,5932694823,0,6);

--
INSERT INTO Costumers
VALUES (123456781011,"sherlock","holmes",87878,"+44796268462");
INSERT INTO Costumers_Address
VALUES (87878,"London","London","212 Baker Street");

UPDATE Costumers
SET phonenumber = '+447342780080'
WHERE (fname = "sherlock" and lname="holmes");


DELETE v,c
FROM costumers c inner join vehicle_orders v on c.id_c=v.costumer_id
WHERE v.counts=0;





   SELECT
    *
FROM
    Suppliers s
        INNER JOIN
    sparepart sp ON s.id = sp.supplier_id


ALTER TABLE Suppliers
RENAME COLUMN name TO name_Sp;

ALTER TABLE Suppliers
RENAME COLUMN id TO id_Sp;

CREATE VIEW supplier_supplies AS
    SELECT
        *
    FROM
        Suppliers s
            INNER JOIN
        sparepart sp ON s.id_sp = sp.supplier_id;



SELECT
        *
    FROM
        sparepart_orders sp
            inner JOIN
        vehicle_orders vo ON vo.costumer_id = sp.costumer_id;


ALTER TABLE costumers
RENAME COLUMN id TO id_c;

ALTER TABLE Suppliers
RENAME COLUMN id TO id_Sp;

select *
from costumers;
CREATE VIEW customer_orders_vehicle AS
SELECT
        *
    FROM
        vehicle_orders sp
            inner JOIN
        costumers c ON sp.costumer_id = c.id_c
    WHERE
        sp.counts = 1;


SELECT
        *
    FROM
        vehicle_orders sp
            inner JOIN
        costumers c ON sp.costumer_id = c.id_c
            inner join
            Vehicles v on v.VIN=sp.vehicle_id
    WHERE
        sp.counts = 1;

select *
from costumers;

CREATE VIEW customer_orders_spareparts AS
    SELECT
        *
    FROM
        sparepart_orders sp
            INNER JOIN
        costumers c ON sp.costumer_id = c.id_c
    WHERE
        sp.counts = 1;


    SELECT
        *
    FROM
        sparepart_orders sp
            INNER JOIN
        costumers c ON sp.costumer_id = c.id_c
            INNER JOIN
        SparePart s ON s.id=sp.sparepart_id
    WHERE
        sp.counts = 1;


ALTER TABLE models
RENAME COLUMN brand_id TO brand_id_m;



CREATE VIEW car_brand_model AS
    SELECT
        *
    FROM
        vehicles v
            INNER JOIN
        models m ON m.id = v.model_id
            INNER JOIN
        brands b ON b.id_b = v.brand_id;


    SELECT
        *
    FROM
        vehicles v
            INNER JOIN
        models m ON m.id = v.model_id
            INNER JOIN
        brands b ON b.id_b = v.brand_id;


CREATE INDEX enddate_s
ON Suppliers (enddate);


CREATE INDEX stock_s
ON sparepart (stock);


CREATE INDEX phonenumber_c
ON costumers (phonenumber);

CREATE INDEX brandname
ON brands (name);

ALTER TABLE Vehicles
DROP COLUMN is_sold ;


ALTER TABLE Vehicles
ADD is_sold BOOLEAN default FALSE;

select *
from vehicles;
SELECT COUNT(*)
     FROM vehicle_orders
        where VIN=vehicle_orders.vehicle_id;

UPDATE Vehicles
SET is_sold = TRUE
WHERE VIN IN
    (SELECT vehicle_id
     FROM vehicle_orders
        where counts=1);

select *
from Vehicles
WHERE VIN IN
    (SELECT vehicle_id
     FROM vehicle_orders
        where counts=1);



START TRANSACTION;
SELECT @counts:= MAX(counts) FROM vehicle_orders;
INSERT INTO vehicle_orders
VALUES (4,3674225298,1,4);
select *
from Vehicles
WHERE VIN IN
    (SELECT vehicle_id
     FROM vehicle_orders
        where counts=1);
ROLLBACK;


START TRANSACTION;
SELECT @counts:= MAX(counts) FROM vehicle_orders;
INSERT INTO sparepart_orders
VALUES (4,9894708099,1,3);
UPDATE SparePart SET stock = SparePart.stock - 1 where  SparePart.stock > 0;
ROLLBACK;



CREATE USER 'john_doe'@'0.0.0.0' IDENTIFIED BY 'johndoe2000johndoe';
grant select on *
 to 'john_doe'@'0.0.0.0';



create table brand_logs(
    id   int,
brand_id  int,
old_name varchar(20),
new_name varchar(20),
changed_at  date,
        PRIMARY KEY (id)
);

create aseertion stock_asser(
CHECK(0 > (
    select *
from SparePart
where stock !=0;
    )

    )
);

create table Orders(
    order_id  int AUTO_INCREMENT PRIMARY KEY,
    sparepart_order_id VARCHAR(20) NOT NULL,
    vehicle_order_id VARCHAR(20) NOT NULL,
    foreign key (sparepart_order_id)  REFERENCES  sparepart_orders(id)         ON DELETE CASCADE,
    foreign key (vehicle_order_id)  REFERENCES  vehicle_orders(id)        ON DELETE CASCADE
);
drop table Orders;
select *
from Orders;

INSERT INTO Orders(sparepart_order_id,vehicle_order_id)
    SELECT  sparepart_orders.id, vehicle_orders.id FROM  sparepart_orders,vehicle_orders;

CREATE VIEW customer_orders AS
SELECT
        *
    FROM
        orders o
            inner JOIN
        costumers c ON sp.costumer_id = c.id_c
    WHERE
        sp.counts = 1;


SELECT
        *
    FROM
        orders o
            inner JOIN
        vehicle_orders v ON o.vehicle_order_id = v.id
            inner join sparepart_orders so on so.id =o.sparepart_order_id
            inner JOIN Costumers C on v.costumer_id = C.id_c



    WHERE
        v.counts = 1;

create assertion stock_assert
check (
    select count(*)
    from SparePart
    where
          stock<0
          )=0);


select stock
from SparePart
where stock>0
;
INSERT INTO SparePart
VALUES (10,"mirror","495.5",0,2);

    select count(*)
    from SparePart
    where
          stock=0;