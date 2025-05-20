use samane_ghaza
create table students(
    name nvarchar(50) not null,
    national_code int not null,
    student_id int primary key auto_increment,
    major nvarchar(50)


);
create table professors(
    name nvarchar(50) not null,
    national_code int not null ,
    professor_id int primary key auto_increment,
    department nvarchar(50) not null,
    grade nvarchar(50) not null
);
create table foods(
    name nvarchar(50) not null,
    price int not null,
    id int primary key
);
create table ordered_foods(
    food_id int not null,
    student_id int,
    professor_id int ,
    quantity int,
    foreign key (food_id) references foods(id),
    foreign key (student_id) references students(student_id),
    foreign key (professor_id) references professors(professor_id)

);