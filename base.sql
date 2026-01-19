create database if not exists campus_thrift;
use campus_thrift;
create table categories (id int auto_increment primary key, category_name varchar(50) not null);
create table users (id int auto_increment primary key, name varchar(100) not null, email varchar(100) unique not null, password_hash varchar(255) not null, college_name varchar(100));
create table products(id int auto_increment primary key, title varchar(150) not null, description text, price decimal(10, 2) not null, image_url varchar(255), category_id int, seller_id int, foreign key (category_id) references categories(id), foreign key (seller_id) references users(id));
insert into categories (category_name) values ('Lab Coats'), ('Calculators'), ('Textbooks');
insert into users (name, email, password_hash, college_name) values ('Navya Jain', 'navya@vips.edu', 'navya1234', 'VIPS-TC');
insert into products (title, description, price, category_id, seller_id, image_url) values ('TI-84 Plus', 'Good condition, includes batteries.', 85.00, 2, 1, 'https://m.media-amazon.com/images/I/71AQD8aCcxL.jpg');
