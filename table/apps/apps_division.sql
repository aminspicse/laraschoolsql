CREATE TABLE apps_division (
	division_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	country_id INT (11),
	division_name VARCHAR (600),
	local_name VARCHAR (600),
	division_status INT (11),
	
	FOREIGN KEY(country_id) REFERENCES apps_country(country_id),
    foreign key(division_status) references mst_status(status_id)
); 

/*
INSERT INTO apps_division (division_id, country_id, division_name, local_name) 
VALUES
(1, 19, 'Barishal', 'বরিশাল'),
(2, 19, 'Chattogram', 'চট্টগ্রাম'),
(3, 19, 'Dhaka', 'ঢাকা'),
(4, 19, 'Khulna', 'খুলনা'),
(5, 19, 'Rajshahi', 'রাজশাহী'),
(6, 19, 'Rangpur', 'রংপুর'),
(7, 19, 'Sylhet', 'সিলেট'),
(8, 19, 'Mymensingh', 'ময়মনসিংহ'),
(9, 19, 'New Delli', NULL);
*/