BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Nodal_Office" (
	"id_no"	INTEGER NOT NULL,
	"district"	TEXT,
	PRIMARY KEY("id_no")
);
CREATE TABLE IF NOT EXISTS "Purchase-Tender" (
	"tender_no"	INTEGER NOT NULL,
	"operating_date"	INTEGER,
	"item"	TEXT,
	"quantity"	INTEGER,
	PRIMARY KEY("tender_no")
);
CREATE TABLE IF NOT EXISTS "Hospital" (
	"id_no"	INTEGER NOT NULL,
	"name"	TEXT,
	"demand"	INTEGER,
	"no_of_doctors_and_nurses"	INTEGER,
	PRIMARY KEY("id_no")
);
CREATE TABLE IF NOT EXISTS "Warehouse" (
	"Id_no"	INTEGER NOT NULL,
	"location"	TEXT,
	"capacity"	INTEGER,
	"demand"	INTEGER,
	"book_balance"	INTEGER,
	PRIMARY KEY("Id_no")
);
CREATE TABLE IF NOT EXISTS "Trasportation-Company" (
	"id_no"	INTEGER NOT NULL,
	"cost_per-shipment"	INTEGER,
	"vehicle"	TEXT,
	PRIMARY KEY("id_no")
);
CREATE TABLE IF NOT EXISTS "PPE_KIT_Manufacturer" (
	"id_no"	INTEGER NOT NULL,
	"lead_time"	INTEGER,
	"capacity"	INTEGER,
	"name"	TEXT,
	"cost"	NUMERIC,
	PRIMARY KEY("id_no")
);
CREATE TABLE IF NOT EXISTS "PPE_KIT" (
	"kit_no"	INTEGER NOT NULL UNIQUE,
	"quantity"	INTEGER,
	"size"	INTEGER,
	"ISO_spec"	INTEGER,
	PRIMARY KEY("kit_no")
);
COMMIT;
