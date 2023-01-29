USE IranKhodro_DB;

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
VALUES (0,"meshki");
INSERT INTO colors
VALUES (1,"sefid");
INSERT INTO colors
VALUES (2,"ghermez");
INSERT INTO colors
VALUES (3,"doodi");
INSERT INTO colors
VALUES (4,"noghreyi");

INSERT INTO geartype
VALUES (0,"automat");
INSERT INTO geartype
VALUES (1,"dasti");

INSERT INTO Vehicles
VALUES (12345678,0,0,0,0);
INSERT INTO Vehicles
VALUES (13254768,4,13,0,4);
INSERT INTO Vehicles
VALUES (77777777,3,10,1,3);
INSERT INTO Vehicles
VALUES (88888888,4,14,1,4);
INSERT INTO Vehicles
VALUES (87654321,3,11,0,0);
INSERT INTO Vehicles
VALUES (23456890,1,4,1,2);
INSERT INTO Vehicles
VALUES (11223344,6,19,1,1);
INSERT INTO Vehicles
VALUES (22334455,6,20,0,3);
INSERT INTO Vehicles
VALUES (99887766,2,8,0,4);
INSERT INTO Vehicles
VALUES (44556677,1,3,1,2);
INSERT INTO Vehicles
VALUES (11223322,5,17,1,0);
INSERT INTO Vehicles
VALUES (18899551,5,16,0,3);

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
VALUES (0,9606996204,2,11223344);
INSERT INTO vehicle_orders
VALUES (1,7048104163,1,88888888);
INSERT INTO vehicle_orders
VALUES (2,5361231363,0,22334455);
