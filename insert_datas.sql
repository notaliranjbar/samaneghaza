use samane_ghaza;
# chatgpt is used to add these examples
INSERT INTO foods (id, name, price) VALUES
(1, 'Pizza', 12.50),
(2, 'Burger', 8.99),
(3, 'Salad', 6.75),
(4, 'Pasta', 10.20),
(5, 'Sushi', 15.00);
INSERT INTO students (student_id, name, national_code , major) VALUES
(101, 'Alice Johnson', '123456789' , 'math'),
(102, 'Mohammed Ali', '987654321' , 'science'),
(103, 'Sara Kim', '111223344' , 'computer');
INSERT INTO professors (professor_id, name, department , national_code , grade) VALUES
(201, 'Dr. John Smith', 'Computer Science' , '239824' , 'dr'),
(202, 'Dr. Fatima Noor', 'Mathematics' , '29834729' , 'pr');
INSERT INTO ordered_foods (food_id, student_id, quantity) VALUES
(1, 101, 1),  -- Pizza
(3, 101, 2);  -- Salad

-- Dr. Fatima (professor_id 202) orders Sushi (5) and Burger (2)
INSERT INTO ordered_foods (food_id, professor_id, quantity) VALUES
(5, 202, 1),  -- Sushi
(2, 202, 1);  -- Burger

-- Mohammed (student_id 102) orders Burger (2) x2 and Pasta (4)
INSERT INTO ordered_foods (food_id, student_id, quantity) VALUES
(2, 102, 2),  -- Burger
(4, 102, 1);  -- Pasta
select * from ordered_foods;