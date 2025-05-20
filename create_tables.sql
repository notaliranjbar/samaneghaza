create table students(
    name nvarchar(50) not null,
    national_code int not null,
    id int primary key auto_increment,
    major nvarchar(50)


);
create table proffessors(
    name nvarchar(50) not null,
    national_code int not null ,
    id int primary key auto_increment,
    department nvarchar(50) not null,
    grade nvarchar(50) not null
);
create table foods(
    name nvarchar(50) not null,
    price int not null,
    date Date not null
);
create table ordered_foods(
    food_name nvarchar(50) not null,
    owner_id int not null,
    foreign key (food_name) references foods(name),
    foreign key (owner_id) references students(id),
    foreign key (owner_id) references proffessors(id),

);