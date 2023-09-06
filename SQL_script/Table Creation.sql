CREATE DATABASE obi_library;
use obi_library;

CREATE TABLE "librarian" ( 
ID int not null,
"userName" VARCHAR(20) not null,
"firstName" VARCHAR(20) not null,
"lastName" VARCHAR(20) not null,
"password" VARCHAR(20) not null,
PRIMARY KEY(ID));

drop table


CREATE TABLE "books"(
"bookTitle" VARCHAR(80) not null,
"authorName" VARCHAR(40) not null,
"publisher" VARCHAR (35) not null,
PRIMARY KEY ("bookTitle"));



CREATE TABLE "patrons" ( 
"userName" VARCHAR(20) not null,
"firstName" VARCHAR(20) not null,
"lastName" VARCHAR(20) not null,
"password" VARCHAR(20) not null,
PRIMARY KEY("userName"));

CREATE TABLE "bookTrack"(
"userName" VARCHAR(20) not null,
"bookTitle" VARCHAR(80) not null,
PRIMARY KEY("userName"),
FOREIGN KEY ("userName") REFERENCES patrons("userName"),
FOREIGN KEY ("bookTitle") REFERENCES books("bookTitle"),
);






