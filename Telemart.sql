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



CREATE table automotives(
    item_id int primary key auto_increment,
    item_name varchar(100),
    item_price int
);

-- Main Automotive table table 

insert into automotives(item_name,item_price)
values
("Car dashboard cruise ship", 2700),
("GPS tracker", 5000),
("helicopter dashboard", 8000),
("Pakwheel spot less wash shampoo", 2000),
("Susuzi cultus pvc coat", 30000),
("Universal arm rest", 25000),
("Universal sunviser tissue box", 15000),
("Mother's cutting compound", 10000),
("Scratch guard", 8000),
("sonax plastic shine", 20000),
("Transparent door holder", 1200),
("Car pu holder", 1000),
("Sun visor storage pouch", 20000),
("Snowflake", 25000),
("wiper", 1500),
("Forumula polish tube", 15000),
("Dashboard camera", 18000);




CREATE table Tvs(
    item_id int primary key auto_increment,
    item_name varchar(100),
    brand_name varchar(100),
    item_price int
);
-- Main Automotive table table 

INSERT INTO Tvs(item_name, brand_name, item_price)
VALUES
("LED TV 32 inches", "Samsung", 150000),
("Smart TV 42 inches", "LG", 250000),
("4K Ultra HD TV 55 inches", "Sony", 400000),
("OLED TV 65 inches", "Samsung", 600000),
("QLED TV 75 inches", "Sony", 800000),
("Android TV 55 inches", "LG", 350000),
("Curved TV 65 inches", "Samsung", 550000),
("Plasma TV 50 inches", "Panasonic", 300000),
("LCD TV 40 inches", "Sony", 200000),
("HD Ready TV 32 inches", "LG", 120000),
("Full HD TV 43 inches", "Samsung", 280000),
("Ultra Slim TV 50 inches", "Sony", 320000),
("3D TV 55 inches", "LG", 450000),
("Mini LED TV 38 inches", "Samsung", 180000),
("Portable TV 24 inches", "Sony", 80000),
("Outdoor TV 65 inches", "LG", 700000),
("Projector TV 100 inches", "Sony", 900000);

CREATE TABLE MedicalItems(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT(6)
);

-- Fill the MedicalItems table with medical items and their respective prices

INSERT INTO MedicalItems(item_name, brand_name, item_price)
VALUES
("Digital Thermometer", "Omron", 15000),
("Blood Pressure Monitor", "A&D Medical", 45000),
("Pulse Oximeter", "Contec", 30000),
("First Aid Kit", "Johnson & Johnson", 20000),
("Hot Water Bag", "Vissco", 8000),
("Nebulizer", "Philips", 60000),
("Infrared Ear Thermometer", "Braun", 25000),
("Medical Gloves (Box of 100)", "Safeguard", 12000),
("Medical Face Mask (Pack of 50)", "3M", 15000),
("Digital Blood Glucose Meter", "Accu-Chek", 35000),
("Electric Heating Pad", "Dr. Trust", 20000),
("Orthopedic Walker", "Vissco", 40000),
("Digital Baby Scale", "Seca", 50000),
("Reusable Ice Pack", "FlexiKold", 10000),
("Orthopedic Knee Brace", "DonJoy", 30000),
("Medical Compression Socks (Pair)", "Sockwell", 18000),
("Medical Stethoscope", "Littmann", 40000);

CREATE TABLE MedicalSales(
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT(5),
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES MedicalItems(item_id)
);
INSERT INTO MedicalSales(item_id, quantity, total_price, sale_date)
VALUES
(1, 3, 4500, '2024-05-01'),
(3, 2, 6000, '2024-05-03'),
(5, 1, 800, '2024-05-05'),
(7, 4, 10000, '2024-05-07'),
(9, 5, 7500, '2024-05-10'),
(11, 2, 8000, '2024-05-12'),
(13, 3, 15000, '2024-05-15'),
(15, 2, 2000, '2024-05-18'),
(17, 1, 4000, '2024-05-20');

CREATE TABLE gaming_and_computer(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT(6)
); 



INSERT INTO gaming_and_computer(item_name, brand_name, item_price)
VALUES
("Gaming Mouse", "Logitech", 6000),
("Mechanical Keyboard", "Razer", 12000),
("Gaming Headset", "SteelSeries", 8000),
("Gaming Monitor", "ASUS", 25000),
("Gaming Laptop", "MSI", 80000),
("Graphics Card", "NVIDIA", 50000),
("Gaming Chair", "DXRacer", 15000),
("Gaming Mouse Pad", "Corsair", 2000),
("Gaming Console", "Sony", 35000),
("Gaming Router", "Netgear", 10000),
("VR Headset", "Oculus", 30000),
("PC Case", "NZXT", 7000),
("Mechanical Gaming Keyboard", "Corsair", 13000),
("Gaming Desk", "Arozzi", 25000),
("Gaming Speakers", "Logitech", 6000),
("Gaming Laptop Cooling Pad", "Cooler Master", 5000),
("Streaming Microphone", "Blue", 8000),
("Gaming Chair with RGB Lighting", "Secretlab", 30000);

CREATE TABLE GamingSales(
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT(6),
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES gaming_and_computer(item_id)
);
INSERT INTO GamingSales(item_id, quantity, total_price, sale_date)
VALUES
(1, 2, 12000, '2024-05-01'),
(3, 1, 8000, '2024-05-03'),
(5, 1, 80000, '2024-05-05'),
(7, 3, 75000, '2024-05-07'),
(9, 2, 30000, '2024-05-10'),
(11, 1, 25000, '2024-05-12'),
(13, 4, 52000, '2024-05-15'),
(15, 2, 12000, '2024-05-18'),
(17, 3, 15000, '2024-05-20');

CREATE TABLE mobile_and_tablets(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT(6)
); 


INSERT INTO mobile_and_tablets(item_name, brand_name, item_price)
VALUES
("iPhone 13 Pro Max", "Apple", 120000),
("Samsung Galaxy S21 Ultra", "Samsung", 100000),
("Google Pixel 6 Pro", "Google", 90000),
("OnePlus 9 Pro", "OnePlus", 80000),
("iPad Pro 12.9-inch", "Apple", 80000),
("Samsung Galaxy Tab S7+", "Samsung", 70000),
("Microsoft Surface Pro 8", "Microsoft", 85000),
("Xiaomi Mi Pad 5", "Xiaomi", 50000),
("Sony Xperia 1 III", "Sony", 95000),
("Huawei MatePad Pro 12.6", "Huawei", 60000),
("Asus ROG Phone 5", "Asus", 70000),
("Lenovo Tab P11 Pro", "Lenovo", 45000),
("Apple iPad Air", "Apple", 60000),
("Google Pixel Slate", "Google", 55000),
("Samsung Galaxy Tab S6 Lite", "Samsung", 40000),
("OnePlus 8T", "OnePlus", 55000),
("Xiaomi Redmi Note 11 Pro", "Xiaomi", 30000),
("Huawei MatePad 11", "Huawei", 35000),
("Sony Xperia 10 III", "Sony", 40000);

CREATE TABLE MobileSales(
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT(6),
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES mobile_and_tablets(item_id)
);

INSERT INTO MobileSales(item_id, quantity, total_price, sale_date)
VALUES
(1, 2, 240000, '2024-05-01'),
(3, 1, 90000, '2024-05-03'),
(5, 1, 80000, '2024-05-05'),
(7, 3, 45000, '2024-05-07'),
(9, 2, 160000, '2024-05-10'),
(11, 1, 70000, '2024-05-12'),
(13, 4, 220000, '2024-05-15'),
(15, 2, 120000, '2024-05-18'),
(17, 3, 165000, '2024-05-20');

CREATE TABLE men_fashion(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT(6)
); 


INSERT INTO men_fashion(item_name, brand_name, item_price)
VALUES
("Cotton Crewneck T-Shirt", "H&M", 1500),
("Slim Fit Jeans", "Levi's", 4000),
("Classic Leather Belt", "Dockers", 2500),
("Casual Sneakers", "Nike", 6000),
("Cotton Polo Shirt", "Ralph Lauren", 3500),
("Chino Pants", "Gap", 3000),
("Oxford Button-Down Shirt", "Banana Republic", 4500),
("Denim Jacket", "Wrangler", 5500),
("Leather Wallet", "Fossil", 2000),
("Leather Dress Shoes", "Clarks", 7000),
("Wool Blend Overcoat", "Calvin Klein", 8000),
("Sports Watch", "Timex", 3000),
("Cotton Blend Shorts", "Under Armour", 2500),
("Crew Socks (Pack of 6)", "Adidas", 1500),
("V-Neck Sweater", "Tommy Hilfiger", 4500),
("Cotton Chinos", "Express", 3500),
("Casual Loafers", "Sperry", 6000),
("Leather Briefcase", "Coach", 9000),
("Aviator Sunglasses", "Ray-Ban", 5000);

CREATE TABLE FashionSales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT(5),
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES men_fashion(item_id)
);

INSERT INTO FashionSales (item_id, quantity, total_price, sale_date)
VALUES
(1, 3, 4500, '2024-05-01'),
(3, 2, 6000, '2024-05-03'),
(5, 1, 3500, '2024-05-05'),
(7, 4, 18000, '2024-05-07'),
(9, 5, 10000, '2024-05-10'),
(11, 2, 9000, '2024-05-12'),
(13, 3, 13500, '2024-05-15'),
(15, 2, 9000, '2024-05-18'),
(17, 1, 4500, '2024-05-20');


CREATE TABLE sports_items(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT(6)
);  



INSERT INTO sports_items (item_name, brand_name, item_price)
VALUES
("Running Shoes", "Nike", 8000),
("Basketball", "Spalding", 2000),
("Yoga Mat", "Lululemon", 5000),
("Gym Bag", "Under Armour", 4000),
("Swimming Goggles", "Speedo", 2500),
("Football Jersey", "Adidas", 3000),
("Tennis Racket", "Wilson", 6000),
("Dumbbell Set", "Bowflex", 10000),
("Cycling Helmet", "Giro", 3500),
("Soccer Cleats", "Puma", 7000),
("Golf Club Set", "Callaway", 12000),
("Jump Rope", "Everlast", 1500),
("Compression Leggings", "Nike", 4500),
("Water Bottle", "CamelBak", 2000),
("Sweatband Set", "Nike", 1000),
("Resistance Bands", "TheraBand", 3000),
("Sports Sunglasses", "Oakley", 6000),
("Wrist Support Brace", "McDavid", 2500),
("Treadmill", "NordicTrack", 50000);








