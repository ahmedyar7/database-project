CREATE database telemart;
use telemart;

SET FOREIGN_KEY_CHECKS=0; -- use if any error cause becuase of PK or FK composite key

CREATE table applicances(

    item_id int auto_increment,
    item_type VARCHAR(50) DEFAULT 'appliance',
    
    item_name varchar(100),
    item_price int,
    
     PRIMARY KEY (item_id, item_type)
);


insert into applicances(item_name,item_price)

values
("Deulux Iron", 2700),
("Jescqo gold generator", 112700),
("WestPoint fan heater", 8700),
("Rechargeable juice squeezer", 3700),
("Electric gas geyser", 34200),
("Rice and grain cooker", 34400),
("Microwave oven", 23400),
("Air fryer", 13400),
("Noon east coffee machine", 12400),
("Automatic washing machine", 33400),
("Juice blender", 1400),
("Scarlet hand mixer", 1200),
("Philips espresso machine", 27400),
("Godrej Electric Kettle", 32100),
("Coffee grinder", 1400),
("Steam iron", 23400),
("Toaster", 3400),
("Vacuum cleaner", 14900),
("Dishwasher", 52000),
("Hair dryer", 4500),
("Food processor", 15800),
("Sandwich maker", 2500),
("Portable air conditioner", 69000),
("Electric skillet", 6200),
("Bread maker", 9800),
("Electric grill", 7500),
("Hand blender", 3200),
("Ice cream maker", 11400),
("Electric pressure cooker", 21400),
("Slow cooker", 9400);

-- Sub appliance table
Create table washing_machines(

-- PK 
item_id int auto_increment,
item_type VARCHAR(50) DEFAULT 'appliance',
-- FK
washing_machines_item_id INT  , 

item_name varchar(100),
item_price int,

PRIMARY KEY (item_id, item_type) , 
FOREIGN KEY(washing_machines_item_id) REFerences applicances(item_id)

);
insert into washing_machines(washing_machines_item_id, item_name,item_price) 
values
(1, "Dawlance Fully loaded Automatic washing machine", 100000),
(2, "Kenwood spin dryer washing machine", 124521),
(3, "Haier Fully loaded Automatic washing machine", 541242),
(4, "Portable mini washing machine", 431421),
(5, "Gaba national mini washing machine", 431351),
(6, "Nasgas copper washing machine", 32531),
(7, "Super asia washing machine", 435123),
(8, "Samsung front load washing machine", 198000),
(9, "LG top load washing machine", 179900),
(10, "Panasonic semi-automatic washing machine", 142000),
(11, "Bosch fully automatic washing machine", 210000),
(12, "Whirlpool twin tub washing machine", 89000),
(13, "Electrolux front load washing machine", 185000),
(14, "Midea top load washing machine", 163000),
(15, "IFB fully automatic washing machine", 198500),
(16, "Hitachi automatic washing machine", 170000),
(17, "Sharp top load washing machine", 158000),
(18, "Toshiba semi-automatic washing machine", 138000),
(19, "Beko front load washing machine", 175000),
(20, "Hisense top load washing machine", 147000),
(21, "Akira fully automatic washing machine", 99000),
(22, "Daewoo top load washing machine", 159000),
(23, "Candy front load washing machine", 162000),
(24, "Vestel semi-automatic washing machine", 135000),
(25, "Kelvinator top load washing machine", 149000),
(26, "Sanyo fully automatic washing machine", 172000),
(27, "Frigidaire front load washing machine", 200000),
(28, "Westpoint top load washing machine", 135000),
(29, "Blue Star semi-automatic washing machine", 122000),
(30, "General Electric automatic washing machine", 210000);


Create table cooling_and_heating(
-- PK 
item_id int auto_increment,
item_type VARCHAR(50) DEFAULT 'appliance',

cooling_and_heating_item_id int,
item_name varchar(100),
item_price int,

PRIMARY KEY (item_id, item_type) , 
FOREIGN KEY(cooling_and_heating_item_id) REFerences applicances(item_id)
);

insert into cooling_and_heating(cooling_and_heating_item_id , item_name,item_price) 
values
(1, "Hot tap water free installation", 100000),
(2, "Gree eco series inverter ac", 224521),
(3, "Gree fairy series inverter split ac", 241242),
(4, "Gree inverter ac 1 ton", 331421),
(5, "Super asia semi instant gas geyser", 331351),
(6, "Ball design room heater and cooler", 12531),
(7, "Daikin split air conditioner", 280000),
(8, "Mitsubishi heavy duty ac", 315000),
(9, "Panasonic inverter air conditioner", 220000),
(10, "Samsung wind-free ac", 295000),
(11, "LG dual inverter ac", 310000),
(12, "Carrier split air conditioner", 270000),
(13, "TCL smart inverter ac", 190000),
(14, "Orient split air conditioner", 180000),
(15, "Kenwood eEco plus inverter ac", 205000),
(16, "Haier thunder inverter ac", 245000),
(17, "Toshiba split ac", 265000),
(18, "Sharp inverter split ac", 250000),
(19, "General split ac", 275000),
(20, "Hitachi split ac", 285000),
(21, "Philips room heater", 35000),
(22, "Dyson bladeless fan heater", 125000),
(23, "Delonghi oil filled radiator", 55000),
(24, "Usha quartz room heater", 25000),
(25, "Bajaj fan heater", 30000),
(26, "Havells ceramic heater", 45000),
(27, "V-Guard room heater", 20000),
(28, "Havells oil filled radiator", 60000),
(29, "Black & Decker fan heater", 28000),
(30, "Morphy Richards fan heater", 32000);



CREATE TABLE power_and_lighting (
    item_id INT AUTO_INCREMENT,
    item_type VARCHAR(50) DEFAULT 'appliance',
    power_and_lighting_item_id INT,
    item_name VARCHAR(100),
    item_price INT,
    PRIMARY KEY (item_id), 
    FOREIGN KEY (power_and_lighting_item_id) REFERENCES appliances(item_id)
);

-- Inserting data into power_and_lighting table
INSERT INTO power_and_lighting (power_and_lighting_item_id, item_name, item_price) 
VALUES
    (1, "Jesco Titanium series generator", 100000),
    (2, "Jesco Titanium series generator TXL-5000", 224521),
    (3, "Jasco 9 KVA Soundproof Canopy Epa 3 Standard Dual Generator With Official Warranty", 241242),
    (4, "Jasco 9 KVA Soundproof Canopy Epa 3 Standard Single Generator With Official Warranty", 331421),
    (5, "Super Asia 9 KVA Soundproof Canopy Epa 3 Standard Dual Generator With Official Warranty", 331351),
    (6, "Gree 9 KVA Soundproof Canopy Epa 3 Standard Single Generator With Official Warranty", 12531),
    (7, "Daikin 12 KVA Soundproof Generator", 215000),
    (8, "Panasonic 10 KVA Portable Generator", 198500),
    (9, "Mitsubishi 15 KVA Silent Generator", 290000),
    (10, "Samsung Heavy-Duty 11 KVA Generator", 270000),
    (11, "Hitachi 8 KVA Diesel Generator", 160000),
    (12, "Toshiba 9 KVA Backup Generator", 220000),
    (13, "LG 10 KVA Eco-Friendly Generator", 230000),
    (14, "Sharp 7 KVA Compact Generator", 150000),
    (15, "Fuji 14 KVA High-Performance Generator", 300000),
    (16, "Yamaha 6 KVA Inverter Generator", 140000),
    (17, "Suzuki 5 KVA Portable Generator", 120000),
    (18, "Honda 12 KVA Industrial Generator", 250000),
    (19, "Nissan 8 KVA Silent Generator", 175000),
    (20, "Kawasaki 10 KVA Heavy-Duty Generator", 210000),
    (21, "Hyundai 11 KVA Multi-Fuel Generator", 245000),
    (22, "Kia 13 KVA Durable Generator", 265000),
    (23, "Isuzu 9 KVA Long-Lasting Generator", 190000),
    (24, "Mazda 7 KVA Reliable Generator", 160000),
    (25, "Subaru 8 KVA Rugged Generator", 180000),
    (26, "Mitsubishi 10 KVA Silent Generator", 230000),
    (27, "Toyota 15 KVA High Capacity Generator", 310000),
    (28, "Daihatsu 6 KVA Economy Generator", 135000),
    (29, "Sony 5 KVA Efficient Generator", 125000),
    (30, "Sanyo 9 KVA Advanced Generator", 220000);


CREATE table automotives(

item_id int auto_increment,
item_type VARCHAR(50) DEFAULT 'automotives',

item_name varchar(100),
item_price int,

PRIMARY KEY (item_id, item_type) 
);

-- Main Automotive table table 

INSERT INTO automotives(item_name, item_price)
VALUES
("Car dashboard cruise ship", 2700),
("GPS tracker", 5000),
("Helicopter dashboard", 8000),
("Pakwheel spot less wash shampoo", 2000),
("Suzuki Cultus PVC coat", 30000),
("Universal arm rest", 25000),
("Universal sunvisor tissue box", 15000),
("Mother's cutting compound", 10000),
("Scratch guard", 8000),
("Sonax plastic shine", 20000),
("Transparent door holder", 1200),
("Car PU holder", 1000),
("Sun visor storage pouch", 20000),
("Snowflake", 25000),
("Wiper", 1500),
("Formula polish tube", 15000),
("Dashboard camera", 18000),
("Toyota Genuine Oil Filter", 3000),
("Honda Spark Plug Set", 4500),
("Nissan Brake Pads", 8500),
("Hyundai Seat Cover", 12000),
("Kia LED Headlights", 22000),
("Mitsubishi Mud Flaps", 1800),
("Mazda Steering Wheel Cover", 2500),
("Subaru Car Cover", 27000),
("Isuzu Roof Rack", 35000),
("Daihatsu Floor Mats", 8000),
("Mitsubishi Car Battery", 15000),
("Toyota Windshield Washer Fluid", 1000),
("Honda Tire Pressure Gauge", 3000),
("Kawasaki Motorcycle Helmet", 12000);




CREATE table Tvs(
	item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'Tvs',

    item_name varchar(100),
    brand_name varchar(100),
    item_price int,
    
    PRIMARY KEY (item_id, item_type) 

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
("Projector TV 100 inches", "Sony", 900000),
("LED TV 40 inches", "Toshiba", 170000),
("Smart TV 50 inches", "Sharp", 380000),
("4K Ultra HD TV 65 inches", "Panasonic", 620000),
("OLED TV 55 inches", "TCL", 340000),
("QLED TV 55 inches", "Hisense", 330000),
("Android TV 43 inches", "Xiaomi", 220000),
("Curved TV 49 inches", "Haier", 270000),
("Plasma TV 60 inches", "Philips", 420000),
("LCD TV 32 inches", "Acer", 140000),
("HD Ready TV 28 inches", "Changhong", 90000),
("Full HD TV 40 inches", "Hitachi", 200000),
("Ultra Slim TV 48 inches", "Skyworth", 290000),
("3D TV 47 inches", "Konka", 310000);


CREATE TABLE MedicalItems(
	item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'MedicalItems',

    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT,
    
	PRIMARY KEY (item_id, item_type) 

);

-- Fill the MedicalItems table with medical items and their respective prices

INSERT INTO MedicalItems(item_name, brand_name, item_price)
VALUES("Digital Thermometer", "Omron", 15000),
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
("Medical Stethoscope", "Littmann", 40000),
("Electric Wheelchair", "Karma", 150000),
("Sphygmomanometer", "Yuwell", 22000),
("Portable Oxygen Concentrator", "Inogen", 120000),
("Medical Ultrasound Machine", "Mindray", 300000),
("Surgical Sutures", "Dolphin Sutures", 18000),
("Medical Examination Table", "KaWe", 70000),
("Digital Otoscope", "Firefly", 35000),
("Infrared Forehead Thermometer", "Microlife", 25000),
("Blood Lancets (Pack of 100)", "BD", 8000),
("Portable ECG Machine", "Bionet", 90000),
("Fingertip Pulse Oximeter", "Zacurate", 15000),
("IV Stand", "Hicks", 12000),
("Patient Monitor", "Nihon Kohden", 250000),
("Surgical Mask (Pack of 100)", "Winner Medical", 20000);

CREATE TABLE MedicalSales(
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT,
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
(17, 1, 4000, '2024-05-20'),
(19, 1, 150000, '2024-05-21'),
(2, 3, 135000, '2024-05-22'),
(4, 1, 30000, '2024-05-23'),
(6, 2, 120000, '2024-05-24'),
(8, 5, 100000, '2024-05-25'),
(10, 3, 45000, '2024-05-26'),
(12, 2, 80000, '2024-05-27'),
(14, 4, 40000, '2024-05-28'),
(16, 1, 18000, '2024-05-29'),
(18, 2, 80000, '2024-05-30'),
(20, 3, 66000, '2024-06-01'),
(21, 2, 60000, '2024-06-02'),
(22, 4, 72000, '2024-06-03'),
(23, 1, 180000, '2024-06-04'),
(24, 5, 70000, '2024-06-05'),
(25, 2, 50000, '2024-06-06'),
(26, 3, 24000, '2024-06-07'),
(27, 4, 60000, '2024-06-08'),
(28, 1, 90000, '2024-06-09'),
(29, 5, 60000, '2024-06-10'),
(30, 3, 75000, '2024-06-11');

CREATE TABLE gaming_and_computer(
	item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'gaming_and_computer',

    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT,
    
	PRIMARY KEY (item_id, item_type) 
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
("Gaming Chair with RGB Lighting", "Secretlab", 30000),
("Gaming Headset", "HyperX", 9000),
("Gaming Monitor", "Acer", 27000),
("Gaming Mouse", "Redragon", 4000),
("Mechanical Keyboard", "Ducky", 11000),
("Gaming Mouse Pad", "Razer", 3000),
("Gaming Chair", "Anda Seat", 20000),
("Gaming Desk", "Eureka", 22000),
("Graphics Card", "AMD", 45000),
("Gaming Console", "Nintendo", 40000),
("VR Headset", "HTC", 35000),
("Gaming Laptop", "Gigabyte", 85000),
("Gaming Monitor", "BenQ", 28000);

CREATE TABLE GamingSales(
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT,
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
(17, 3, 15000, '2024-05-20'),
(19, 1, 3000, '2024-05-21'),
(2, 3, 36000, '2024-05-22'),
(4, 2, 50000, '2024-05-23'),
(6, 1, 50000, '2024-05-24'),
(8, 4, 8000, '2024-05-25'),
(10, 2, 70000, '2024-05-26'),
(12, 1, 20000, '2024-05-27'),
(14, 3, 15000, '2024-05-28'),
(16, 2, 10000, '2024-05-29'),
(18, 1, 30000, '2024-05-30'),
(20, 3, 90000, '2024-06-01'),
(21, 2, 54000, '2024-06-02'),
(22, 4, 80000, '2024-06-03'),
(23, 1, 30000, '2024-06-04'),
(24, 3, 66000, '2024-06-05'),
(25, 2, 80000, '2024-06-06'),
(26, 1, 8000, '2024-06-07'),
(27, 3, 24000, '2024-06-08'),
(28, 2, 160000, '2024-06-09'),
(29, 1, 25000, '2024-06-10'),
(30, 2, 56000, '2024-06-11');


CREATE TABLE mobile_and_tablets(
	item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'mobile_and_tablets',
	PRIMARY KEY (item_id, item_type),
    
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT
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
("Sony Xperia 10 III", "Sony", 40000),
("Vivo X70 Pro", "Vivo", 80000),
("Oppo Find X5 Pro", "Oppo", 90000),
("Realme GT Neo 3", "Realme", 70000),
("Xiaomi Mi 12 Ultra", "Xiaomi", 120000),
("OnePlus Nord 2T", "OnePlus", 60000),
("Asus Zenfone 9", "Asus", 55000),
("Lenovo Legion Phone 3", "Lenovo", 85000),
("Xiaomi Redmi 11", "Xiaomi", 25000),
("Huawei P50 Pro", "Huawei", 100000),
("Oppo Reno 7 Pro", "Oppo", 75000);


CREATE TABLE MobileSales(
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT,
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES mobile_and_tablets(item_id)
);


INSERT INTO MobileSales (item_id, quantity, total_price, sale_date)
VALUES

  (1, 2, 240000, '2024-05-01'),
    (3, 1, 90000, '2024-05-03'),
    (5, 1, 80000, '2024-05-05'),
    (7, 3, 45000, '2024-05-07'),
    (9, 2, 160000, '2024-05-10'),
    (11, 1, 70000, '2024-05-12'),
    (13, 4, 220000, '2024-05-15'),
    (15, 2, 120000, '2024-05-18'),
    (17, 3, 165000, '2024-05-20'),
    (19, 2, 240000, '2024-05-21'),
    (21, 1, 70000, '2024-05-22'),
    (23, 1, 95000, '2024-05-23'),
    (25, 3, 240000, '2024-05-24'),
    (27, 2, 100000, '2024-05-25'),
    (29, 1, 60000, '2024-05-26'),
    (2, 4, 400000, '2024-05-27'),
    (4, 3, 240000, '2024-05-28'),
    (6, 1, 70000, '2024-05-29'),
    (8, 2, 170000, '2024-05-30'),
    (10, 1, 80000, '2024-06-01'),
    (12, 3, 210000, '2024-06-02'),
    (14, 2, 190000, '2024-06-03'),
    (16, 1, 120000, '2024-06-04'),
    (18, 4, 400000, '2024-06-05'),
    (20, 3, 300000, '2024-06-06'),
    (22, 2, 180000, '2024-06-07'),
    (24, 1, 95000, '2024-06-08'),
    (26, 3, 270000, '2024-06-09'),
    (28, 2, 330000, '2024-06-10'),
    (30, 1, 60000, '2024-06-11');



CREATE TABLE men_fashion(
	item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'men_fashion',
	PRIMARY KEY (item_id, item_type),  
    
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT
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
("Aviator Sunglasses", "Ray-Ban", 5000),
("Cotton Crewneck T-Shirt", "Uniqlo", 1200),
("Slim Fit Jeans", "Muji", 3500),
("Classic Leather Belt", "Hush Puppies", 2000),
("Casual Sneakers", "Skechers", 4500),
("Cotton Polo Shirt", "Giordano", 2800),
("Chino Pants", "Zara", 3200),
("Oxford Button-Down Shirt", "Charles & Keith", 3800),
("Denim Jacket", "Uniqlo", 4800),
("Leather Wallet", "Samsonite", 1800),
("Leather Dress Shoes", "Bata", 6000);

CREATE TABLE FashionSales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity INT,
    total_price INT,
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES men_fashion(item_id)
);
-- Check the existing entries in men_fashion
SELECT * FROM men_fashion;-- 


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
(17, 1, 4500, '2024-05-20'),
(19, 3, 3600, '2024-05-21'),
(21, 2, 5600, '2024-05-22'),
(23, 1, 3200, '2024-05-23'),
(25, 4, 20000, '2024-05-24'),
(27, 5, 14000, '2024-05-25'),
(29, 2, 3000, '2024-05-26'),
(2, 3, 12000, '2024-05-27'),
(4, 4, 14000, '2024-05-28'),
(6, 2, 6400, '2024-05-29'),
(8, 3, 13500, '2024-05-30'),
(10, 1, 7000, '2024-06-01'),
(12, 4, 18000, '2024-06-02'),
(14, 3, 21000, '2024-06-03'),
(16, 2, 9000, '2024-06-04'),
(18, 5, 17500, '2024-06-05'),
(20, 2, 5600, '2024-06-06'),
(22, 3, 8400, '2024-06-07'),
(24, 1, 4800, '2024-06-08'),
(26, 4, 20000, '2024-06-09'),
(28, 2, 10000, '2024-06-10'),
(30, 3, 13500, '2024-06-11');


CREATE TABLE sports_items(
    item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'sports_items',
	PRIMARY KEY (item_id, item_type) ,
    
    item_name VARCHAR(100),
    brand_name VARCHAR(50),
    item_price INT
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
("Treadmill", "NordicTrack", 50000),
("Badminton Racket", "Yonex", 7000),
("Cricket Bat", "SG", 4000),
("Table Tennis Racket", "Butterfly", 6000),
("Karate Gi", "Tokaido", 8000),
("Taekwondo Uniform", "Mooto", 7000),
("Kendo Shinai", "Mizuno", 4500),
("Sumo Belt", "Tatami", 3000),
("Kendo Bogu Set", "Tozando", 15000),
("Judo Gi", "Mizuno", 9000),
("Boxing Gloves", "Fairtex", 5500);




-- Primary table for kids product
CREATE TABLE Kids_Product (
	item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'Kids_Product',
	PRIMARY KEY (item_id, item_type) ,
    
	item_name Varchar(200),
	item_price INT
 );

INSERT INTO Kids_Product (item_name, item_price) VALUES

("Mini Merc Car", 5000),
("Writing Tablet", 499),
("Nail Trimmer", 499),
("RC Metal Car", 3699),
("Torch Lamp", 299),
("Shooter Glove Toy", 2599),
("Panda Plush Toy", 899),
("Educational Building Blocks", 1499),
("Dollhouse Set", 3499),
("Remote Control Helicopter", 1999),
("Animal Puzzle Mat", 799),
("Musical Keyboard Toy", 1299),
("Colorful Play Tent", 1599),
("Wooden Train Set", 2499),
("Baby Activity Gym", 1799),
("Magic Drawing Board", 599),
("Toy Kitchen Playset", 2899),
("Cartoon Backpack", 699),
("Bubble Blower Machine", 999),
("Kids' Smartwatch", 1999),
("Miniature Doctor Kit", 1199),
("DIY Craft Kit", 799),
("Kids' Bicycle", 3499),
("Cartoon Character Lunch Box", 499),
("Plush Animal Slippers", 399),
("Water Gun Toy", 699),
("Kids' Binoculars", 599),
("Building Construction Set", 1999),
("Children's Fishing Rod Set", 799);

-- sub table for kids product 

CREATE TABLE Ride_On_Toys (
	item_id int auto_increment,
	item_type VARCHAR(50) DEFAULT 'MedicalItems',
	PRIMARY KEY (item_id, item_type) ,
    
	Ride_On_Toys_item_ID INT ,
	item_name Varchar(200),
	item_price INT,
 
 FOREIGN KEY(Ride_On_Toys_item_ID) REFerences Kids_Product(item_id)
 );
 

INSERT INTO Kids_Product (item_name, item_price) VALUES
("Mercedes Ride On Jeep", 35999),
("BMW Kids Ride On Jeep", 74999),
("Kids 4 Wheels Ride On Jeep", 40000),
("BMW Kids Ride On Car", 28999),
("Minions Theme Ride On Car", 19000),
("Yamaha RR Ride On Bike", 54000),
("Toyota Kids Ride On Car", 32000),
("Honda Kids Ride On Bike", 48000),
("Suzuki Kids Ride On Jeep", 38000),
("Mitsubishi Kids Ride On Car", 26000),
("Kawasaki Kids Ride On Bike", 42000),
("Hyundai Kids Ride On Car", 30000),
("Nissan Kids Ride On Jeep", 35000),
("Subaru Kids Ride On Car", 27000),
("Mazda Kids Ride On Bike", 45000),
("Lexus Kids Ride On Car", 31000),
("Infiniti Kids Ride On Jeep", 37000),
("Acura Kids Ride On Car", 28000),
("Proton Kids Ride On Bike", 43000),
("Perodua Kids Ride On Car", 33000),
("SsangYong Kids Ride On Jeep", 36000),
("Kia Kids Ride On Car", 29000),
("Daewoo Kids Ride On Bike", 46000),
("Geely Kids Ride On Car", 34000),
("Chery Kids Ride On Jeep", 37000),
("Chang'an Kids Ride On Car", 30000),
("Great Wall Kids Ride On Bike", 47000),
("BYD Kids Ride On Car", 32000),
("Dongfeng Kids Ride On Jeep", 38000);


 
 
 -- User account table 
 
 CREATE TABLE Users (
 User_ID INT Auto_increment Primary Key ,
 User_Name Varchar(50),
 User_Email Varchar(100),
 User_Password Varchar(255),
 User_Address Varchar(255)
 );


INSERT INTO Users (User_Name, User_Email, User_Password, User_Address) VALUES
("Hamza", "Hamza@example.com", "2342sdf", "XYZ Street Quetta"),
("Ahmed", "Ahmed@example.com", "2342sdf", "XYZ Street Quetta"),
("Ali", "Ali@example.com", "sdaf987", "ABC Road Lahore"),
("Fatima", "Fatima@example.com", "kjsdf238", "DEF Street Karachi"),
("Usman", "Usman@example.com", "dfg5643", "GHI Road Islamabad"),
("Ayesha", "Ayesha@example.com", "sdj3428", "JKL Street Lahore"),
("Bilal", "Bilal@example.com", "hjk7892", "MNO Road Karachi"),
("Zainab", "Zainab@example.com", "asj3214", "PQR Street Islamabad"),
("Kashif", "Kashif@example.com", "oiu8765", "STU Road Lahore"),
("Sana", "Sana@example.com", "qwe3245", "VWX Street Karachi"),
("Imran", "Imran@example.com", "lkm8745", "YZA Road Islamabad"),
("Hira", "Hira@example.com", "iop4321", "BCD Street Lahore"),
("Tariq", "Tariq@example.com", "hgf2342", "EFG Road Karachi"),
("Sadia", "Sadia@example.com", "zxcv9087", "HIJ Street Islamabad"),
("Rizwan", "Rizwan@example.com", "bvn5643", "KLM Road Lahore"),
("Farah", "Farah@example.com", "plm9876", "NOP Street Karachi"),
("Omar", "Omar@example.com", "rew3245", "QRS Road Islamabad"),
("Nida", "Nida@example.com", "uty8745", "TUV Street Lahore"),
("Junaid", "Junaid@example.com", "pok4321", "WXY Road Karachi"),
("Sadia", "Sadia2@example.com", "mnb2342", "ZAB Street Islamabad"),
("Azhar", "Azhar@example.com", "zxcv9087", "CDE Road Lahore"),
("Nimra", "Nimra@example.com", "ghj5643", "EFG Street Karachi"),
("Asad", "Asad@example.com", "zxcv3245", "HIJ Road Islamabad"),
("Hina", "Hina@example.com", "rty8745", "KLM Street Lahore"),
("Asma", "Asma@example.com", "qwe4321", "NOP Road Karachi"),
("Sajjad", "Sajjad@example.com", "bnm5643", "QRS Street Islamabad"),
("Sadia", "Sadia3@example.com", "yui3245", "TUV Road Lahore"),
("Khurram", "Khurram@example.com", "rtyu8745", "WXY Street Karachi"),
("Sara", "Sara@example.com", "wert4321", "ZAB Road Islamabad");




-- Table for order --> order Tracker 
CREATE TABLE Orders (
 Order_id INT Auto_increment Primary Key ,
 User_id INT,
 
 item_type VARCHAR(50), 
 item_id INT,

 payment_method Varchar(100),
 Total_amount INT,
 shipping_address Varchar(255),
 quantity INT,
 order_date  Varchar(255), 
 
	-- FK is the PK of users . ponting which user place xyz order    
	FOREIGN KEY (User_id) REFERENCES Users(User_ID),    -- Links the order to the user who placed it
 
 
	-- The composite foreign key links the order to the specific item (based on item_id and item_type)
    -- The item_type helps select the appropriate table (e.g., appliances, Tvs, etc.) for tracking the item
	FOREIGN KEY (item_id, item_type) REFERENCES applicances(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES  kids_product (item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES automotives(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES cooling_and_heating(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES  mobile_and_tablets(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES medicalitems(item_id, item_type),

	FOREIGN KEY (item_id, item_type) REFERENCES washing_machines(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES gaming_and_computer(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES power_and_lighting(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES sports_items(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES tvs(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES ride_on_toys(item_id, item_type),	
    FOREIGN KEY (item_id, item_type) REFERENCES  men_fashion(item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES gaming_and_computer (item_id, item_type),
	FOREIGN KEY (item_id, item_type) REFERENCES washing_machines(item_id, item_type)
    );


INSERT INTO Orders (User_id, item_type, item_id, payment_method, Total_amount, shipping_address, order_date) VALUES
(1, 'appliance', 2, "Card", 50000, "XYZ Street Quetta", "2-2-2024"),
(1, 'washing_machines', 2, "Card", 50000, "XYZ Street Quetta", "2-2-2024"),
(2, 'ride_on_toys', 2, "Card", 50000, "XYZ Street Quetta", "2-2-2024"),
(3, 'electronics', 4, "Cash", 150000, "ABC Road Lahore", "2-2-2024"),
(4, 'clothing', 6, "Card", 3500, "DEF Street Karachi", "2-2-2024"),
(5, 'electronics', 8, "Card", 45000, "GHI Road Islamabad", "2-2-2024"),
(6, 'kids', 10, "Cash", 7000, "JKL Street Lahore", "2-2-2024"),
(7, 'sports', 12, "Card", 12000, "MNO Road Karachi", "2-2-2024"),
(8, 'appliances', 14, "Cash", 2500, "PQR Street Islamabad", "2-2-2024"),
(9, 'electronics', 16, "Card", 8000, "STU Road Lahore", "2-2-2024"),
(10, 'fashion', 18, "Card", 5000, "VWX Street Karachi", "2-2-2024"),
(11, 'kids', 20, "Cash", 6000, "YZA Road Islamabad", "2-2-2024"),
(12, 'sports', 22, "Card", 7000, "BCD Street Lahore", "2-2-2024"),
(13, 'appliances', 24, "Card", 30000, "EFG Road Karachi", "2-2-2024"),
(14, 'electronics', 26, "Cash", 95000, "HIJ Street Islamabad", "2-2-2024"),
(15, 'fashion', 28, "Card", 7500, "KLM Road Lahore", "2-2-2024"),
(16, 'kids', 30, "Cash", 8500, "NOP Street Karachi", "2-2-2024"),
(17, 'sports', 32, "Card", 6000, "QRS Road Islamabad", "2-2-2024"),
(18, 'appliances', 34, "Cash", 18000, "TUV Street Lahore", "2-2-2024"),
(19, 'electronics', 36, "Card", 3000, "WXY Road Karachi", "2-2-2024"),
(20, 'fashion', 38, "Card", 4500, "ZAB Street Islamabad", "2-2-2024"),
(21, 'kids', 40, "Cash", 5000, "CDE Road Lahore", "2-2-2024"),
(22, 'sports', 42, "Card", 8500, "EFG Street Karachi", "2-2-2024"),
(23, 'appliances', 44, "Cash", 42000, "HIJ Road Islamabad", "2-2-2024"),
(24, 'electronics', 46, "Card", 28000, "KLM Street Lahore", "2-2-2024"),
(25, 'fashion', 48, "Card", 6000, "NOP Road Karachi", "2-2-2024"),
(26, 'kids', 50, "Cash", 7500, "QRS Street Islamabad", "2-2-2024"),
(27, 'sports', 52, "Card", 20000, "TUV Road Lahore", "2-2-2024"),
(28, 'appliances', 54, "Cash", 32000, "WXY Street Karachi", "2-2-2024"),
(29, 'electronics', 56, "Card", 48000, "ZAB Road Islamabad", "2-2-2024"),
(30, 'fashion', 58, "Card", 9000, "CDE Street Lahore", "2-2-2024");


