

/* Create Tables */

CREATE TABLE Basket
(
	sb_member_no number NOT NULL,
	sb_product_no number,
	sb_product_count number,
	PRIMARY KEY (sb_member_no)
);


CREATE TABLE Inquiry
(
	inquiry_no number NOT NULL,
	member_no number NOT NULL,
	product_no number,
	inquiry_type nvarchar2(50) NOT NULL,
	inquiry_member_name nvarchar2(50) NOT NULL,
	inquiry_pwd nvarchar2(50) NOT NULL,
	inquiry_subject nvarchar2(500) NOT NULL,
	inquiry_doc nvarchar2(2000) NOT NULL,
	inqyiry_visible nvarchar2(50),
	inquiry_date date NOT NULL,
	PRIMARY KEY (inquiry_no)
);


CREATE TABLE Inquiry_Photo
(
	photo_no number NOT NULL,
	inquiry_Pserial number NOT NULL,
	inquiry_photo_url nvarchar2(1000) NOT NULL,
	PRIMARY KEY (photo_no)
);


CREATE TABLE Members
(
	member_no number NOT NULL,
	member_mid nvarchar2(50) NOT NULL,
	member_pwd nvarchar2(50) NOT NULL,
	member_name nvarchar2(50) NOT NULL,
	member_email nvarchar2(50) NOT NULL,
	member_phone nvarchar2(50) NOT NULL,
	member_zipcode nvarchar2(50) NOT NULL,
	member_address nvarchar2(200) NOT NULL,
	member_signup_date date NOT NULL,
	PRIMARY KEY (member_no)
);


CREATE TABLE Notice
(
	notice_no number NOT NULL,
	notice_subject nvarchar2(500) NOT NULL,
	notice_doc nvarchar2(2000) NOT NULL,
	notice_date date NOT NULL,
	notice_hit number NOT NULL,
	PRIMARY KEY (notice_no)
);


CREATE TABLE Product
(
	product_no number NOT NULL,
	product_name nvarchar2(50) NOT NULL,
	product_price number NOT NULL,
	product_picture_url nvarchar2(500) NOT NULL,
	product_description nvarchar2(500) NOT NULL,
	product_link_url nvarchar2(500) NOT NULL,
	PRIMARY KEY (product_no)
);


CREATE TABLE Review
(
	review_no number NOT NULL,
	product_no number NOT NULL,
	member_no number NOT NULL,
	member_mid nvarchar2(50) NOT NULL,
	review_subject nvarchar2(500) NOT NULL,
	review_doc nvarchar2(2000) NOT NULL,
	review_date date NOT NULL,
	revie_photo_url nvarchar2(1000),
	review_available number NOT NULL,
	PRIMARY KEY (review_no)
);



/* Create Foreign Keys */

ALTER TABLE Inquiry_Photo
	ADD FOREIGN KEY (inquiry_Pserial)
	REFERENCES Inquiry (inquiry_no)
;


ALTER TABLE Basket
	ADD FOREIGN KEY (sb_member_no)
	REFERENCES Members (member_no)
;


ALTER TABLE Inquiry
	ADD FOREIGN KEY (member_no)
	REFERENCES Members (member_no)
;


ALTER TABLE Review
	ADD FOREIGN KEY (member_no)
	REFERENCES Members (member_no)
;


ALTER TABLE Inquiry
	ADD FOREIGN KEY (product_no)
	REFERENCES Product (product_no)
;


ALTER TABLE Review
	ADD FOREIGN KEY (product_no)
	REFERENCES Product (product_no)
;



