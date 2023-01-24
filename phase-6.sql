ALTER TABLE Vehicles
ADD is_sold BOOLEAN default FALSE;

SELECT *
FROM vehicles;
SELECT COUNT(*)
     FROM vehicle_orders
        where VIN=vehicle_orders.vehicle_id;

UPDATE Vehicles
SET is_sold = TRUE
WHERE VIN IN
    (SELECT vehicle_id
     FROM vehicle_orders
        where counts=1);


SELECT *
FROM Vehicles
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

