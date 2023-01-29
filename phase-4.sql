USE IranKhodro_DB;

INSERT INTO Costumers_Address
VALUES (87878,"London","London","212 Baker Street");
INSERT INTO Costumers
VALUES (123456781011,"sherlock","holmes",87878,"+44796268462");

select *
from vehicle_orders;

select *
from costumers;

UPDATE Costumers
SET phonenumber = '+447342780080'
WHERE (fname = "sherlock" and lname="holmes");

DELETE v,c
FROM costumers c inner join vehicle_orders v on c.id_c=v.costumer_id
WHERE v.counts=0;

