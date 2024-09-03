A project of PaySlipGenerator, an app for employees enabling them the access to their pay slips being a part of the University of Lodz Web Applications course

# PaySlipGenerator - employees' pay slips management system

**Author:** Paweł Żurawski

## Project Objectives

The goal of this project is to generate pay slips for various types of employees within a company. The system uses classes to represent different employee types, such as Java developers, C# developers, C++ developers, front-end developers, database analysts, etc. Each of these employee types has specific characteristics, such as tools used (e.g., IntelliJ, Visual Studio), experience level (junior, mid, senior), and base salary.

The project implements functions to generate pay slips based on these specific details, such as name, surname, login, password, tool, and experience. Methods in the employee classes, such as `generatePaySlip()`, create pay slip reports for individual employees. Additionally, there are methods for adding data to the database, making it possible to manage employee data.

In summary, the purpose of this project is to automate the process of generating pay slips for various employee types within a company and to manage employee data in a database.

### Requirements

1. **Automation of Pay Slip Generation**: The client expects the project to enable automatic generation of pay slip reports for each employee based on their login. This will allow the company to process employee payments quickly and efficiently.

2. **Flexibility and Scalability**: The client expects the project to be flexible and easily scalable, allowing for the addition of new employee types and customization of pay slips based on their specific characteristics, such as tools and experience.

3. **Employee Data Management**: The project should enable the client to easily manage employee data, particularly adding new employees to the database.

4. **Data Security**: The client expects the project to ensure a high level of data security, including confidentiality, integrity, and availability of employee data. Access to employee data should be controlled through authentication and authorization mechanisms.

5. **User-Friendliness**: The project should be easy to use and intuitive for end-users, allowing for quick generation of pay slip reports and management of employee data without requiring deep technical understanding.

## Architecture

### Main Project Structure

```
src
└── main
    ├── java
    │   └── com.example.payslipgenerator
    │       ├── employees
    │       │   ├── CppDeveloper
    │       │   ├── CSharpDeveloper
    │       │   ├── DatabaseAnalyst
    │       │   ├── DataToDbHandler
    │       │   ├── Employee
    │       │   ├── Experience
    │       │   ├── FrontEndDeveloper
    │       │   ├── JavaDeveloper
    │       │   └── PythonDeveloper
    │       ├── service
    │       │   ├── Main
    │       │   └── PaySlipGeneratorService
    │       ├── LoginController
    │       ├── PaySlipGeneratorApplication
    │       ├── PaySlipGeneratorController
    │       └── RegisterController
    ├── resources
    │   ├── static
    │   ├── templates
    │   ├── application.properties
    │   └── hibernate.cfg.xml
    └── webapp
        └── WEB-INF
            └── views
                ├── index.jsp
                ├── loggedIn.jsp
                ├── notSignedIn.jsp
                ├── register_cpp.jsp
                ├── register_csharp.jsp
                ├── register_database.jsp
                ├── register_frontend.jsp
                ├── register_java.jsp
                ├── register_python.jsp
                ├── registration_failure.jsp
                ├── registration_success.jsp
                ├── signin.jsp
                └── signup.jsp
```

### Detailed Structure

1. **java**: The main directory containing the source code of the application written in Java.
   - **com.example.payslipgenerator**: The primary package of the application.
     - **employees**: Package containing classes representing different types of employees.
       - This package includes classes representing various employee roles, such as `CppDeveloper`, `CSharpDeveloper`, etc.
     - **service**: Package containing service classes.
       - `Main`: The main class of the application responsible for launching it.
       - `PaySlipGeneratorService`: The class handling the logic for generating pay slips.
     - **controllers**: Package containing Spring MVC controllers.
       - `LoginController`: Controller handling user login.
       - `PaySlipGeneratorController`: Controller handling pay slip generation requests.
       - `RegisterController`: Controller handling user registration.
     - `PaySlipGeneratorApplication`: The main Spring Boot application class containing the `main` method to launch the application.

2. **resources**: Directory containing application resources.
   - **static**: Directory containing static files, such as CSS and JavaScript.
   - **templates**: Directory containing JSP templates.
   - `application.properties`: Spring Boot configuration file containing application settings.
   - `hibernate.cfg.xml`: Hibernate configuration file containing database access settings.

3. **webapp**: Directory containing web application resources.
   - **WEB-INF**: Directory containing web application configuration files.
     - **views**: Directory containing JSP files used to render the user interface.
       - Files like `index.jsp`, `loggedIn.jsp`, `signin.jsp`, etc., define various views of the application.

This project structure organizes the code and resources in a clear manner, facilitating management and development of the application.

