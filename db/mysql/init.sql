CREATE database if not exists autoPark;
use autoPark;

CREATE TABLE if not exists user(
id int not null auto_increment primary key,
name varchar(30) NOT NULL,
isActive boolean,
createdAt datetime,
updatedAt datetime,
email varchar(50),
password varchar(50)
);

CREATE TABLE if not exists client(
id int not null auto_increment primary key,
name varchar(30) NOT NULL,
cpf varchar(11) NOT NULL,
isActive boolean,
createdAt datetime,
updatedAt datetime,
email varchar(50)
);

CREATE TABLE if not exists type(
id int not null auto_increment primary key,
name varchar(30) NOT NULL,
isActive boolean,
createdAt datetime,
updatedAt datetime,
price int
);

CREATE TABLE if not exists vehicle(
id int not null auto_increment primary key,
name varchar(30) NOT NULL,
clientId int,
createdAt datetime,
updatedAt datetime,
isActive boolean,
CONSTRAINT client_vehicle_fk FOREIGN KEY (clientId) REFERENCES client(id),
typeId int,
CONSTRAINT type_vehicle_fk FOREIGN KEY (typeId) REFERENCES type(id),
licensePlate varchar(7)
);

CREATE TABLE if not exists history(
id int not null auto_increment primary key,
price int,
begin datetime,
end datetime,
isPaid boolean,
clientId int,
CONSTRAINT client_history_fk FOREIGN KEY (clientId) REFERENCES client(id),
vehicleId int,
CONSTRAINT vehicle_history_fk FOREIGN KEY (vehicleId) REFERENCES vehicle(id)
);

insert into user(name, isActive, createdAt, updatedAt, email, password) values(`admin`, true, now(), now(), `admin@admin.com`, `admin`);

insert into type(name, isActive, createdAt, updatedAt, price) values(`carro`, true, now(), now(), 10);

insert into type(name, isActive, createdAt, updatedAt, price) values(`moto`, true, now(), now(), 5);

insert into type(name, isActive, createdAt, updatedAt, price) values(`caminhão`, true, now(), now(), 20);

insert into client(name, cpf, isActive, createdAt, updatedAt, email) values(`Maria`, `12345678901`, true, now(), now(), `maria@gmail.com`);

insert into client(name, cpf, isActive, createdAt, updatedAt, email) values(`Joao`, `12345678902`, true, now(), now(), `joao@gmail.com`);

insert into client(name, cpf, isActive, createdAt, updatedAt, email) values(`Jose`, `12345678903`, true, now(), now(), `jose@gmail.com`);

insert into vehicle(name, clientId, createdAt, updatedAt, isActive, typeId, licensePlate) values(`Fusca`, 1, now(), now(), true, 1, `ABC1234`);

insert into vehicle(name, clientId, createdAt, updatedAt, isActive, typeId, licensePlate) values(`Celta`, 2, now(), now(), true, 1, `ABC1235`);

insert into vehicle(name, clientId, createdAt, updatedAt, isActive, typeId, licensePlate) values(`Gol`, 3, now(), now(), true, 1, `ABC1236`);

insert into vehicle(name, clientId, createdAt, updatedAt, isActive, typeId, licensePlate) values(`Moto`, 1, now(), now(), true, 2, `ABC1237`);

