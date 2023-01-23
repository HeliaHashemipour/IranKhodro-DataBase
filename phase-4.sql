INSERT INTO Costumers
VALUES (123456781011,"sherlock","holmes",87878,"+44796268462");
INSERT INTO Costumers_Address
VALUES (87878,"London","London","212 Baker Street");

UPDATE Costumers
SET phonenumber = '+447342780080'
WHERE (fname = "sherlock" and lname="holmes");

DELETE v,c
FROM costumers c inner join vehicle_orders v on c.id=v.costumer_id
WHERE v.counts=0;