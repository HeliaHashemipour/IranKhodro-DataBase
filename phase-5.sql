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




ALTER TABLE costumers
RENAME COLUMN id TO id_c;
ALTER TABLE Suppliers
RENAME COLUMN id TO id_Sp;

CREATE VIEW customer_orders_vehicle AS
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

CREATE VIEW customer_orders_spareparts AS
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

