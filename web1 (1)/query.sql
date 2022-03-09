CREATE TABLE Category(
	cateId bigint NOT NULL PRIMARY KEY,
	cateName character varying(20) NOT NULL,
	cateImg text,
	isShow boolean,
	isdelete boolean,
	createDate date,
	updateDate date
);
CREATE TABLE Product(
	proId bigint NOT NULL PRIMARY KEY,
	proName character varying(50),
	proPrice double precision,
	proImg text,
	proSpecification text,
	proDescription text,
	isShow boolean,
	isdelete boolean,
	createDate date,
	updateDate date,
	cateId bigint,
	FOREIGN KEY (cateId) REFERENCES Category(cateId)
);

CREATE TABLE Orderproduct(
	orderId bigint NOT NULL PRIMARY KEY,
	orderDate date,
	status character varying(20)
);

CREATE TABLE Customer(
	cusId bigint NOT NULL PRIMARY KEY,
	cusName character varying(30),
	Address character varying(100),
	Email character varying(50),
	Phone character varying(20),
	country text
);


CREATE TABLE Payment(
	pId bigint NOT NULL PRIMARY KEY,
	pDate date,
	pDescription text,
	pMethod character varying(20),
	total double precision
);

CREATE TABLE OrderDetails(
	orderId bigint,
	proId bigint,
	quantity smallserial,
	cusId bigint,
	pId bigint,
	FOREIGN KEY (orderId) REFERENCES Orderproduct(orderId),
	FOREIGN KEY (proId) REFERENCES Product(proId),
	FOREIGN KEY (cusId) REFERENCES Customer(cusId),
	FOREIGN KEY (pId) REFERENCES Payment(pId)
);
