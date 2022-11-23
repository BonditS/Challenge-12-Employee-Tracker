USE employee_tracker;

INSERT INTO department (name)
VALUES  ("Marketing"),
        ("Sales"),
        ("Engeneering"),
        ("Finance"),
        ("Legal");

INSERT INTO roles (title, salary, department_id)
VALUES  ("Accountant", 60000, 1),
        ("Account Manager", 120000, 1),
        ("Sales Lead", 120000, 2)
        ("Salesperson", 60000, 2),
        ("Marketing Lead", 160000, 3),
        ("Marketing Associate", 80000, 3),
        ("Legal Team Lead", 200000, 4),
        ("Lawyer", 180000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ("Bondit", "Sinlee", 3, NULL),
        ("Michael", "Jackson", 2, NULL),
        ("Jon", "Duckett", 1, NULL),
        ("Alex", "Beiber", 2, 2),
        ("Will", "Yu", 1, 3),
        ("Nate", "Goat", 3, 1)