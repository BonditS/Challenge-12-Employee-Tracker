USE employee_tracker;

INSERT INTO department (name)
VALUES  ("Marketing"),
        ("Sales"),
        ("Accounting");

INSERT INTO roles (title, salary, department_id)
VALUES  ("Accountant", 60000, 3),
        ("Sales_person", 60000, 2),
        ("Marketer", 60000, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ("Bondit", "Sinlee", 3, NULL),
        ("Michael", "Jackson", 2, NULL),
        ("Jon", "Duckett", 1, NULL),
        ("Alex", "Beiber", 2, 2),
        ("Will", "Yu", 1, 3),
        ("Nate", "Goat", 3, 1)