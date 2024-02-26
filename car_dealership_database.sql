CREATE TABLE "Car" (
  "car_id" SERIAL,
  "car_brand" VARCHAR,
  "car_model" VARCHAR,
  "car_color" VARCHAR,
  "mileage" INTEGER,
  "invoice_id" INTEGER,
  "service_id" SERIAL,
  "part_id" INTEGER
);

CREATE TABLE "Car Dealership" (
  "employee_id" SERIAL,
  "customer_id" SERIAL,
  "email" VARCHAR,
  "phone_number" VARCHAR,
  "invoice_id" INTEGER,
  "service_id" SERIAL,
  "car_id" SERIAL,
  PRIMARY KEY ("employee_id")
);

CREATE TABLE "Mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "email" VARCHAR,
  "phone_number" INTEGER,
  "invoice_id" INTEGER,
  "service_id" SERIAL,
  "car_id" SERIAL,
  "part_id" INTEGER
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "email" VARCHAR,
  "phone_number" INTEGER,
  "invoice_id" INTEGER,
  "car_id" SERIAL,
  "service_id" SERIAL
);

CREATE TABLE "Salesperson" (
  "employee_id" SERIAL,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "email" VARCHAR,
  "phone_number" INTEGER,
  "car_id" SERIAL,
  "invoice_id" INTEGER,
  "customer_id" SERIAL,
  PRIMARY KEY ("customer_id")
);