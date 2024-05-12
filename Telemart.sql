CREATE database telemart;
use telemart;

CREATE table applicances(
    item_id int primary key auto_increment,
    item_name varchar(100),
    item_price int
);

-- Main Appliance table 

insert into applicances(item_name,item_price)
values
("Deulux Iron",2700),
("Jescqo gold generator",112700),
("WestPoint fan heater",8700),
("Rechargable juice squeezer",3700),
("Electric gas geser",34200),
("rice and grain cooker",34400),
("Microwave oven",23400),
("air fryer",13400),
("Noon east coffee machine",12400),
("Automatic washing machine",33400),
("Juice blender",1400),
("Scarlet hand mixer",1200),
("philip expresso machine",27400),
("Goderge Electic Kattle",32100),
("Coffee grinder",1400),
("Steam iron",23400),
("Exhaust metal fan",23400);

-- Sub appliance table
Create table washing_machines(
item_id int,
item_name varchar(100),
item_price int,
FOREIGN KEY(item_id) REFerences applicances(item_id)
);
insert into washing_machines(item_id, item_name,item_price) 
values
(1,"Dawalance Fully loaded Automatic washing machine",100000),
(2,"Kenwood spin dryer wasahing machine",124521),
(3,"Haier Fully loaded Automatic washing machine",541242),
(4,"Portable mini washing machine",431421),
(5,"Gaba national mini washing machine",431351),
(6,"Nasgas copper washing machine",32531),
(7,"Super asia washing machine",435123);



Create table cooling_and_heating(
item_id int,
item_name varchar(100),
item_price int,
FOREIGN KEY(item_id) REFerences applicances(item_id)
);
insert into cooling_and_heating(item_id, item_name,item_price) 
values
(1,"Hot tap water free installation",100000),
(2,"Gree eco series inverter ac",224521),
(3,"Gree fairy series inverter split ac",241242),
(4,"Gree inverter ac 1 ton",331421),
(5,"super asia semi instant gas geser",331351),
(6,"Ball design room heater and cooler",12531),
(7,"Speaker desing room heater",35123);

Create table power_and_lighting(
item_id int,
item_name varchar(100),
item_price int,
FOREIGN KEY(item_id) REFerences applicances(item_id)
);
insert into cooling_and_heating(item_id, item_name,item_price) 
values
(1,"Jesco Titanium series generator",100000),
(2,"Jesco Titanium series generator TXL-5000",224521),
(3,"Jasco 9  KVA Soundproof Canopy Epa 3 Standard Dual Generator With Official Warranty",241242),
(4,"Jasco 9  KVA Soundproof Canopy Epa 3 Standard Single Generator With Official Warranty",331421),
(5,"Super Asia 9  KVA Soundproof Canopy Epa 3 Standard Dual Generator With Official Warranty",331351),
(6,"Gree 9  KVA Soundproof Canopy Epa 3 Standard Single Generator With Official Warranty",12531),
(7,"Haier 9  KVA Soundproof Canopy Epa 3 Standard  Generator With Official Warranty",35123);


