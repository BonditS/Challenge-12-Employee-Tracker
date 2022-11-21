const mysql = require('mysql2');
const inquirer = require('inquirer');


//DATABASE CONNECTION
const connection = mysql.createConnection({
    host: 'localhost',

    //port #
    post: 3306,

    //username
    user: 'root',

    //my credentials
    password: '',
    database: 'employee_tracker'
});

//make connection to database to begin application
connection.connect((err) => {
    if (err) throw err;
})


// ask questions to user to get information from database
inquirer
    .prompt({
        name: 'userResponse',
        type: 'list',
        message: 'What would you like to do?',
        choices: [
            'View Departments',
            'more questions',
            'Exit'
        ]
    })
    .then((choice) => {
        // do something based on what the user chooses
        if (choice.userResponse === 'View Departments') {
            // now connect to database and return data from it
            connection.query(
                `SELECT * FROM department`,
                (error, response) => {
                    // if the SQL was valid
                    if (response) {
                        console.log('List of Departments: ')
                        console.log(response)
                    } else {
                        console.log('Error!')
                    }
                }
            )
        }


        // if user wants to see roles

        // if user wants to see employees
    })