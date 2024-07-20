create database Transportationmanagementproject;
use Transportationmanagementproject;
CREATE TABLE Passenger (
    Pass_id INT PRIMARY KEY,
    Pass_name VARCHAR(255),
    Pass_mobile VARCHAR(15),
    Pass_add VARCHAR(255)
);
CREATE TABLE Driver (
    Driv_id INT PRIMARY KEY,
    Driv_name VARCHAR(255),
    Driv_license_num VARCHAR(20),
    Driv_status VARCHAR(50)
);
CREATE TABLE Vehicle (
    Vec_id INT PRIMARY KEY,
    Vec_type VARCHAR(50),
    Vec_capacity INT,
    Vec_status VARCHAR(50)
);
CREATE TABLE Route (
    Route_ID INT PRIMARY KEY,
    Route_name VARCHAR(255),
    Route_time TIME,
    Route_Distance FLOAT
);
CREATE TABLE Trip (
    Trip_id INT PRIMARY KEY,
    Trip_date DATE,
    Trip_time TIME,
    Route_id INT,
    Driv_id INT,
    Vec_id INT,
    FOREIGN KEY (Route_id) REFERENCES Route(Route_ID),
    FOREIGN KEY (Driv_id) REFERENCES Driver(Driv_id),
    FOREIGN KEY (Vec_id) REFERENCES Vehicle(Vec_id)
);
CREATE TABLE Booking (
    Book_id INT PRIMARY KEY,
    Book_status VARCHAR(50),
    Pass_id INT,
    Trip_id INT,
    FOREIGN KEY (Pass_id) REFERENCES Passenger(Pass_id),
    FOREIGN KEY (Trip_id) REFERENCES Trip(Trip_id)
);



