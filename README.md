A project of PaySlipGenerator, an app for employees enabling them the access to their pay slips being a part of the University of Lodz Web Applications course

# PaySlipGenerator - employees' pay slips management system

**Author:** Paweł Żurawski

## 1. Project Objectives, technologies used, the client's requirements and USER GUIDE

### 1.1 Objectives

The goal of this project is to generate pay slips for various types of employees within a company. The system uses classes to represent different employee types, such as Java developers, C# developers, C++ developers, front-end developers, database analysts, etc. Each of these employee types has specific characteristics, such as tools used (e.g., IntelliJ, Visual Studio), experience level (junior, mid, senior), and base salary.

The project implements functions to generate pay slips based on these specific details, such as name, surname, login, password, tool, and experience. Methods in the employee classes, such as `generatePaySlip()`, create pay slip reports for individual employees. Additionally, there are methods for adding data to the database, making it possible to manage employee data.

In summary, the purpose of this project is to automate the process of generating pay slips for various employee types within a company and to manage employee data in a database.

### 1.2 Technologies

1. **Java**: Java is used as the primary programming language for developing the backend logic of the application. It handles server-side operations, business logic, and interacts with the database to process user requests and responses. The .java files of the project are:
   - the contollers (e.g. LoginController.java, RegisterController.java)
   - model classes (e.g. Employee.java, JavaDeveloper.java)
   - db set up handling file (DataToDbHandler.java)
   - service classes (e.g. PaySlipGeneratorService.java)
   - the app class (PaySlipGeneratorApplication.java).
     
3. **Spring**: The Spring Framework is utilized for building the backend of the application. It provides features such as dependency injection, transaction management, and web application development through Spring MVC. It helps in organizing code into well-structured components and simplifies the development of enterprise applications. The .java files of the project in which the Spring is used are:
   - the contollers (e.g. LoginController.java, RegisterController.java)
   - service classes (e.g. PaySlipGeneratorService.java)
   - the app class (PaySlipGeneratorApplication.java).

5. **Hibernate and HQL**: Hibernate is used as the Object-Relational Mapping (ORM) tool to manage database interactions. It maps Java objects to database tables, simplifying CRUD operations and database queries. HQL (Hibernate Query Language) is used for querying and manipulating the database. It is employed to define and manage data structures, execute queries, and perform operations. Hibernate handles database transactions and helps in managing the persistence layer of the application efficiently. The .java files of the project in which the Hibernate is used are:
   - model classes (e.g. Employee.java, JavaDeveloper.java)
   - db set up handling file (DataToDbHandler.java)
   - service classes (e.g. PaySlipGeneratorService.java)
   
6. **HTML and JSP**: HTML (HyperText Markup Language) is used to create the structure and content of the web pages. It forms the foundation of the frontend by defining elements such as forms, tables, headers, and paragraphs that make up the user interface of the application. The frontend .jsp (JavaServer Pages) files of the project are:
   - dynamic .jspf files (e.g. home_icon.jspf)
   - login .jsp files (e.g. loggedIn.jsp)
   - register .jsp files (e.g. register.jsp)
   - the main .jsp file (index.jsp)
   
7. **CSS**: CSS (Cascading Style Sheets) is used to style and layout the HTML content. It controls the visual presentation of web pages, including colors, fonts, spacing, and positioning of elements. CSS ensures that the application has a consistent and visually appealing design across different devices. The frontend .css files of the project are:
   - the main .css file (styles.css)
   - the .css files for specific sites (e.g. stylesLoggedin.css)
   
8. **JavaScript**: JavaScript is used to enhance the interactivity and functionality of the web pages. It handles client-side scripting for form validation, dynamic content updates, and user interactions. JavaScript improves the user experience by allowing for real-time feedback and updates without requiring a page reload. The .js files of the project are:
   - password validation .js file (registerSpecificDev.js)
   - position choice .js file (signup.js)

### 1.3 Requirements

1. **Automation of Pay Slip Generation**: The client expects the project to enable automatic generation of pay slip reports for each employee based on their login. This will allow the company to process employee payments quickly and efficiently.

2. **Flexibility and Scalability**: The client expects the project to be flexible and easily scalable, allowing for the addition of new employee types and customization of pay slips based on their specific characteristics, such as tools and experience.

3. **Employee Data Management**: The project should enable the client to easily manage employee data, particularly adding new employees to the database.

4. **Data Security**: The client expects the project to ensure a high level of data security, including confidentiality, integrity, and availability of employee data. Access to employee data should be controlled through authentication and authorization mechanisms.

5. **User-Friendliness**: The project should be easy to use and intuitive for end-users, allowing for quick generation of pay slip reports and management of employee data without requiring deep technical understanding.


## 1.4 USER GUIDE

### The database

The database is a must-have to use the app. The database is managed using MySQL Workbench. To ensure the application functions correctly, you need to download this environment from https://dev.mysql.com/downloads/workbench/, establish a connection, and configure the hibernate.cfg.xml file (e.g., port, login, password) according to your needs. By default, the application's database is empty. Upon running the Main class from the service package, which uses the static method setDataInDb() from the PaySlipGeneratorService class, it will be filled in with the following tables and employees of the IT company:

#### The structure

![image](https://github.com/user-attachments/assets/810b3393-bb29-4eb8-a73d-6ef2b6d9905d)

#### The cpp_developers table

![image](https://github.com/user-attachments/assets/2ca341c5-66e9-4f5a-9b2d-758ca45d2b35)

#### The csharp_developers table

![image](https://github.com/user-attachments/assets/f0de4d6d-2075-40aa-9909-9ffb8f288e0f)

#### The database_analysts table

![image](https://github.com/user-attachments/assets/e081b51c-a025-4679-86c8-11505aca50b0)

#### The frontend_developers table

![image](https://github.com/user-attachments/assets/caf58f9b-bdbd-4bad-90b8-42c52de83a1e)

#### The java_developers table

![image](https://github.com/user-attachments/assets/e4f9e599-2e7a-4ca7-8c46-826b3a6daa83)

#### The python_developers table

![image](https://github.com/user-attachments/assets/35063589-995a-46ef-a43d-23ef32ea9b36)

#### The hibernate_sequence table

![image](https://github.com/user-attachments/assets/f250351c-b8be-4cd3-a732-14fed1471f4a)

The database is then updated with additional employees when registering a new developer or analyst through the page http://localhost:8080/signup. Below new python developer was registered:

![image](https://github.com/user-attachments/assets/8a73365e-19a6-4366-a8fd-2015b6fb8603)

### User Interface of the Application

#### The homepage provides the option to Sing in and Sing up an employee of the IT company:

![image](https://github.com/user-attachments/assets/c0f93c6e-3a8b-4087-b84d-4dc5909e2f61)

#### As a result of selecting the Sing in option, the user is redirected to the following page:

![image](https://github.com/user-attachments/assets/bbc184c7-704f-4b7c-95fa-0f4824b632e2)

#### When incorrect employee data is entered (employee not found in the database) and the user clicks "Sign in," they are redirected to the following page with a login error message:

![image](https://github.com/user-attachments/assets/926ae4a4-35ad-4761-80e7-4d3e57a71f02)

#### Sign in clicked, incorrect employee data entenred:

![image](https://github.com/user-attachments/assets/6a92cdcb-bb7b-477f-97ee-c46427679364)

#### After clicking "Try Again," the user is redirected back to the signing in page. Once one enters the correct data (employee exists in the database), one is redirected to the page displaying one's pay slip:

![image](https://github.com/user-attachments/assets/898648d5-cb1a-43f0-af84-c4ddbebe37aa)

#### Sign in clicked, correct employee data entenred:

![image](https://github.com/user-attachments/assets/98b28a98-2648-4e07-90a6-b1f77dd9fae7)

#### After clicking the icon in the top right corner, the user is logged out and redirected to the home page:

![image](https://github.com/user-attachments/assets/da7606e3-3300-4010-80bf-238ef805108a)

#### As a result of selecting the Sign up option, the user is redirected to the following page where one can choose the employee's specialization:

![image](https://github.com/user-attachments/assets/e4f0399b-4e95-4aa4-a1dc-cfb5f49f3c34)

#### After selecting one of the options and clicking OK, the user is redirected to the registration page:

![image](https://github.com/user-attachments/assets/1b9236c9-9f23-42da-b130-a423c005d48d)

#### Position selected:

![image](https://github.com/user-attachments/assets/1b53c9e5-605f-4a00-8001-e3caf8580aad)

#### OK clicked:

![image](https://github.com/user-attachments/assets/c32d62fd-3318-4ec3-a9d1-d3fc1861699c)

#### Password mismatch results in the registration being blocked:

![image](https://github.com/user-attachments/assets/3265acc2-f8c0-4c1c-ae9c-66cf6f5cb9cc)

#### The page also allows selecting the experience level of the registering employee:

![image](https://github.com/user-attachments/assets/477640c8-c114-4375-9ff4-fb8714f33208)

#### If the login is not unique (i.e., an employee with the same login already exists in the database), the user is redirected to a page with a message about the incorrect login provided during registration:

![image](https://github.com/user-attachments/assets/3b770045-1a5b-4746-bba3-0bef78788a5b)

#### Sing up clicked

![image](https://github.com/user-attachments/assets/c05f7987-a1eb-4ab6-9ec4-9db232bf9954)

#### After clicking "Try Again," the user is redirected back to the employee registration page:

![image](https://github.com/user-attachments/assets/83415112-5a78-49bc-84cd-33a38d45425f)

#### Position chosen:

![image](https://github.com/user-attachments/assets/97fe2ac8-b50e-4a47-806e-69268d057068)

#### OK clicked:

![image](https://github.com/user-attachments/assets/cc2b6fc5-722f-4aaa-8050-31549ec8ff4b)

#### After providing acceptable data and clicking "Sign up," the registration is confirmed:

![image](https://github.com/user-attachments/assets/a10da5d8-a588-4e03-8d59-152fabd12099)

#### Sing up clicked:

![image](https://github.com/user-attachments/assets/faab9e0e-bc05-44f4-8705-059ed39e2d76)

#### After clicking "Sign in," the user is redirected to the login page:

![image](https://github.com/user-attachments/assets/16be6ec8-1627-4cca-9ad9-b75b438e667c)

#### After clicking "Sign in," the user is logged in and redirected to the page displaying one's pay slip:

![image](https://github.com/user-attachments/assets/2036f57b-787c-4be7-80aa-b33635a7fca3)

#### If the user clicks the home icon on any page where it is visible, one will be redirected to the application's main page:

![image](https://github.com/user-attachments/assets/f62f26f2-6524-451c-9485-4d0702e5a1c1)

#### The home icon clicked:

![image](https://github.com/user-attachments/assets/08368aeb-603c-4112-8230-4f6f218c7c0f)



## 2. Architecture

### 2.1 Main Project Structure

```
src
└── main
    ├── java
    │   └── com.example.payslipgenerator
    │       ├── controller
    │       │   ├── LoginController
    │       │   ├── PaySlipGeneratorController
    │       │   └── RegisterController
    │       ├── model
    │       │   ├── CppDeveloper
    │       │   ├── CSharpDeveloper
    │       │   ├── DatabaseAnalyst
    │       │   ├── Employee
    │       │   ├── Experience
    │       │   ├── FrontEndDeveloper
    │       │   ├── JavaDeveloper
    │       │   └── PythonDeveloper
    │       ├── repository
    │       │   └── DataToDbHandler
    │       ├── service
    │       │   ├── Main
    │       │   └── PaySlipGeneratorService
    │       └── PaySlipGeneratorApplication
    ├── resources
    │   ├── application.properties
    │   └── hibernate.cfg.xml
    └── webapp
        └── WEB-INF
            └── views
                ├── dynamic
                │   ├── home_icon.jspf
                │   └── register_form_content.jspf
                ├── login
                │   ├── loggedIn.jsp
                │   ├── notSignedIn.jsp
                │   └── signin.jsp
                ├── register
                │   ├── register_cpp.jsp
                │   ├── register_csharp.jsp
                │   ├── register_database.jsp
                │   ├── register_frontend.jsp
                │   ├── register_java.jsp
                │   ├── register_python.jsp
                │   ├── registration_failure.jsp
                │   ├── registration_success.jsp
                │   └── signup.jsp
                └── index.jsp
        └── resources
            └── static
                ├── css
                │   ├── styles.css
                │   ├── stylesLoggedin.css
                │   ├── stylesNotSignin.css
                │   ├── stylesRegistrationFailure.css
                │   ├── stylesRegistrationSuccess.css
                │   ├── stylesSignin.css
                │   ├── stylesSignup.css
                │   └── stylesSignupSpecificDev.css
                └── js
                    ├── registerSpecificDev.js
                    └── signup.js            
```

### 2.2 Detailed Structure

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

## 3. Frontend

### 3.1 .jsp, .jspf, .css and .js files

#### 3.1.1 `index.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pay Slip Generator</title>
    <link rel="stylesheet" href="/resources/static/css/styles.css">
</head>
<body>

<div class="container">
    <h1 class="title">Pay Slip Generator</h1>
    <button class="btn" onclick="location.href='signin'">Sign in</button>
    <button class="btn" onclick="location.href='signup'">Sign up</button>
</div>

</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Instantiates a Java bean named `now` of type `java.util.Date` to be used in the JSP.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Directive that sets the content type of the page to `text/html` and specifies the character encoding as `UTF-8`. This ensures that the page is rendered as HTML and supports UTF-8 character encoding.
- **`<!DOCTYPE html>`:** Declaration of HTML document type.
- **`<html lang="en">`:** Opening HTML tag with language specification set to English.
- **`<head>`:** Section containing metadata and external resource links.
- **`<meta charset="UTF-8">`:** Specifies the character encoding as UTF-8.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Viewport settings for responsive design, ensuring proper rendering on different devices.
- **`<title>Pay Slip Generator</title>`:** Defines the title of the webpage as "Pay Slip Generator."
- **`<link rel="stylesheet" href="/resources/static/css/styles.css">`:** Links an external CSS file for styling the webpage. The file is located at `/resources/static/css/styles.css`.
- **`</head>`:** End of the head section.
- **`<body>`:** Section containing the main content of the webpage.
- **`<div class="container">`:** A container div element that wraps the content, helping with layout structure and styling.
- **`<h1 class="title">Pay Slip Generator</h1>`:** A header element displaying the title "Pay Slip Generator" on the page.
- **`<button class="btn" onclick="location.href='signin'">Sign in</button>`:** A button element that redirects the user to the "Sign in" page when clicked.
- **`<button class="btn" onclick="location.href='signup'">Sign up</button>`:** A button element that redirects the user to the "Sign up" page when clicked.
- **`</body>`:** End of the body section.
- **`</html>`:** End of the HTML document.


#### 3.1.2 `loggedIn.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.payslipgenerator.service.PaySlipGeneratorService" %>
<%@ page import="com.example.payslipgenerator.model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome back</title>
    <link rel="stylesheet" href="/resources/static/css/stylesLoggedin.css">
</head>
<body>
<a href="index" class="logout-icon">&#128274;</a>
<h1></h1>
<%
    String username = request.getParameter("username");

    Employee employee = PaySlipGeneratorService.generatePaySlipForEmployee(username);

    if (employee != null) {
        String[] paySlipData = employee.generatePaySlip();
%>
<h1>Welcome back <%= username %></h1>
<article>
    <div class="box">
        <h2>Here is your payslip!</h2>
        <table>
            <tr>
                <th>Name</th>
                <td><%= paySlipData[0] %> <%= paySlipData[1] %></td>
            </tr>
            <tr>
                <th>Position</th>
                <td><%= paySlipData[2] %></td>
            </tr>
            <tr>
                <th>Experience</th>
                <td><%= paySlipData[3] %></td>
            </tr>
            <tr>
                <th>Salary</th>
                <td><%= paySlipData[4] %></td>
            </tr>
        </table>
    </div>
</article>
<%
} else {
%>
<div class="error-message">
    <p>No such user.</p>
</div>
<%
    }
%>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Instantiates a Java bean named `now` of type `java.util.Date` to be used within the JSP page.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Directive that sets the content type of the page to `text/html` and specifies the character encoding as `UTF-8`, ensuring the page is rendered correctly in web browsers.
- **`<%@ page import="com.example.payslipgenerator.service.PaySlipGeneratorService" %>`:** Imports the `PaySlipGeneratorService` class from the `com.example.payslipgenerator.service` package, allowing its methods to be used in the JSP.
- **`<%@ page import="com.example.payslipgenerator.model.Employee" %>`:** Imports the `Employee` class from the `com.example.payslipgenerator.model` package, enabling the use of `Employee` objects within the JSP.
- **`<!DOCTYPE html>`:** Declaration of HTML document type, specifying that the document is an HTML5 document.
- **`<html lang="en">`:** Opening HTML tag with the language attribute set to English (`en`), indicating the language of the content.
- **`<head>`:** Section containing metadata and links to external resources such as stylesheets.
- **`<meta charset="UTF-8">`:** Specifies the character encoding as UTF-8, supporting a wide range of characters.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Ensures proper scaling and rendering on different devices by setting the viewport to match the screen’s width.
- **`<title>Welcome back</title>`:** Sets the title of the webpage as "Welcome back," which appears in the browser tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesLoggedin.css">`:** Links an external CSS file for styling the page, located at `/resources/static/css/stylesLoggedin.css`.
- **`</head>`:** End of the head section, closing metadata and link references.
- **`<body>`:** Section containing the main content of the webpage.
- **`<a href="index" class="logout-icon">&#128274;</a>`:** Creates a link that redirects to the `index` page, with a lock icon (🔒) representing the logout function.
- **`<h1></h1>`:** Placeholder for the main header, which can be dynamically filled.
- **`<% String username = request.getParameter("username"); %>`:** Retrieves the `username` parameter from the HTTP request, storing it in the `username` variable.
- **`<% Employee employee = PaySlipGeneratorService.generatePaySlipForEmployee(username); %>`:** Calls the `generatePaySlipForEmployee` method from `PaySlipGeneratorService` to generate an `Employee` object based on the provided `username`.
- **`<% if (employee != null) { %>`:** Begins a conditional statement that checks if the `employee` object is not null, meaning the user exists.
- **`<% String[] paySlipData = employee.generatePaySlip(); %>`:** Generates the payslip data for the employee by calling the `generatePaySlip()` method, storing the result in the `paySlipData` array.
- **`<h1>Welcome back <%= username %></h1>`:** Displays a welcome message to the user by inserting the `username` dynamically into the header.
- **`<article>`:** HTML5 element used to encapsulate the main content of the webpage.
- **`<div class="box">`:** A `div` element styled with the `box` class, used to group content and apply specific styling.
- **`<h2>Here is your payslip!</h2>`:** Subheader indicating the content of the section, which is the user's payslip.
- **`<table>`:** HTML table used to present the payslip data in a structured format.
  - **`<tr>`:** Table row, used to group table cells (`<th>` for headers and `<td>` for data).
  - **`<th>Name</th>`:** Table header cell containing the label "Name."
  - **`<td><%= paySlipData[0] %> <%= paySlipData[1] %></td>`:** Table data cell displaying the employee's first and last name, retrieved from `paySlipData`.
  - **`<th>Position</th>`:** Table header cell containing the label "Position."
  - **`<td><%= paySlipData[2] %></td>`:** Table data cell displaying the employee's position.
  - **`<th>Experience</th>`:** Table header cell containing the label "Experience."
  - **`<td><%= paySlipData[3] %></td>`:** Table data cell displaying the employee's level of experience.
  - **`<th>Salary</th>`:** Table header cell containing the label "Salary."
  - **`<td><%= paySlipData[4] %></td>`:** Table data cell displaying the employee's salary.
- **`</article>`:** End of the article section.
- **`<% } else { %>`:** Else clause that executes if the `employee` object is null, meaning the user was not found.
- **`<div class="error-message">`:** A `div` element styled with the `error-message` class, used to display an error message.
- **`<p>No such user.</p>`:** Paragraph element that contains the error message "No such user."
- **`</body>`:** End of the body section, closing the main content.
- **`</html>`:** End of the HTML document.


#### 3.1.3 `notSignedIn.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
    <link rel="stylesheet" href="/resources/static/css/stylesNotSignin.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Login Failed</h1>
    <p>Incorrect username or password. Please try again.</p>
    <a href="signin" class="try-again-btn">Try Again</a>
</div>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Creates a Java bean named `now` of type `java.util.Date`, which can be utilized within the JSP to represent the current date and time.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Directive that sets the content type of the page to `text/html` and the character encoding to `UTF-8`, ensuring proper rendering and text encoding in the browser.
- **`<!DOCTYPE html>`:** Declares the document type, specifying that this is an HTML5 document.
- **`<html lang="en">`:** Begins the HTML document with the language attribute set to English (`en`), indicating the language used in the document's content.
- **`<head>`:** Contains metadata about the document and links to external resources like stylesheets.
- **`<meta charset="UTF-8">`:** Specifies the character encoding as UTF-8, supporting a wide array of characters.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport to ensure proper scaling on different devices, making the page responsive.
- **`<title>Login Failed</title>`:** Sets the title of the webpage to "Login Failed," which appears in the browser tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesNotSignin.css">`:** Links an external CSS file (`stylesNotSignin.css`) for styling the page, located in the `/resources/static/css/` directory.
- **`</head>`:** Ends the head section, closing the metadata and resource links.
- **`<body>`:** Begins the body section, which contains the main content of the page.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content of the `home_icon.jspf` file located in the `../dynamic/` directory. This likely adds a home icon or related functionality to the page.
- **`<div class="container">`:** A `div` element with the `container` class that is used to structure the content on the page and apply specific styling.
- **`<h1>Login Failed</h1>`:** Header that displays the message "Login Failed," informing the user that their login attempt was unsuccessful.
- **`<p>Incorrect username or password. Please try again.</p>`:** Paragraph that provides additional context, explaining that the username or password was incorrect and prompting the user to try logging in again.
- **`<a href="signin" class="try-again-btn">Try Again</a>`:** A link styled as a button with the class `try-again-btn`, redirecting the user back to the sign-in page to attempt logging in again.
- **`</div>`:** Closes the `div` container.
- **`</body>`:** Ends the body section, closing the main content of the page.
- **`</html>`:** Ends the HTML document, marking the end of the content.

#### 3.1.4 `register_cpp.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as C++ Developer</title>
    <link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Registration Page for C++ Developer</h1>
    <div class="form-container">
        <form action="register_cpp" method="post" onsubmit="return validatePassword()">
            <%@ include file="../dynamic/register_form_content.jspf" %>
        </form>
    </div>
</div>
<script src="/resources/static/js/registerSpecificDev.js"></script>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, allowing the page to access the current date and time.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Sets the content type of the page to `text/html` and specifies the character encoding as UTF-8 to support a wide range of characters.
- **`<!DOCTYPE html>`:** Declares the document type as HTML5, ensuring that the page adheres to HTML5 standards.
- **`<html lang="en">`:** Opens the HTML document and sets the language attribute to English (`en`).
- **`<head>`:** Contains metadata, links to stylesheets, and other head elements.
- **`<meta charset="UTF-8">`:** Defines the character encoding for the page as UTF-8.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport settings to ensure the page is responsive and scales appropriately on various devices.
- **`<title>Register as C++ Developer</title>`:** Sets the title of the page to "Register as C++ Developer," which appears in the browser's title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">`:** Links to an external CSS file (`stylesSignupSpecificDev.css`) located in the `/resources/static/css/` directory, which contains styles specific to the registration page for C++ Developers.
- **`</head>`:** Closes the head section of the HTML document.
- **`<body>`:** Begins the body section of the HTML document, where the visible content is placed.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content of the `home_icon.jspf` file from the `../dynamic/` directory, providing a home icon or navigation element.
- **`<div class="container">`:** A container `div` with the `container` class used to center and structure the content on the page.
- **`<h1>Registration Page for C++ Developer</h1>`:** Displays the main heading "Registration Page for C++ Developer," indicating the purpose of the page.
- **`<div class="form-container">`:** A `div` with the `form-container` class that styles and contains the registration form.
- **`<form action="register_cpp" method="post" onsubmit="return validatePassword()">`:** Defines a form that submits data to the `register_cpp` endpoint. The `onsubmit` attribute calls the `validatePassword()` JavaScript function to ensure that the passwords match before submission.
  - **`<%@ include file="../dynamic/register_form_content.jspf" %>`:** Includes the content from the `register_form_content.jspf` file located in the `../dynamic/` directory. This file contains the common form fields and inputs used in the registration process.
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the `container` div.
- **`<script src="/resources/static/js/registerSpecificDev.js"></script>`:** Links to an external JavaScript file (`registerSpecificDev.js`) located in the `/resources/static/js/` directory, which includes scripts for validating and handling the registration process specific to developer roles.
- **`</body>`:** Closes the body section of the HTML document.
- **`</html>`:** Closes the HTML document.


#### 3.1.5 `register_csharp.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as C# Developer</title>
    <link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Registration Page for C# Developer</h1>
    <div class="form-container">
        <form action="register_csharp" method="post" onsubmit="return validatePassword()">
            <%@ include file="../dynamic/register_form_content.jspf" %>
        </form>
    </div>
</div>
<script src="/resources/static/js/registerSpecificDev.js"></script>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, allowing the page to access the current date and time.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Specifies that the content type of the page is `text/html` and sets the character encoding to UTF-8 to support a wide range of characters.
- **`<!DOCTYPE html>`:** Declares the document type as HTML5, ensuring that the page adheres to HTML5 standards.
- **`<html lang="en">`:** Opens the HTML document and sets the language attribute to English (`en`).
- **`<head>`:** Contains metadata, links to stylesheets, and other head elements.
- **`<meta charset="UTF-8">`:** Sets the character encoding for the page to UTF-8.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport settings to ensure the page is responsive and scales appropriately on different devices.
- **`<title>Register as C# Developer</title>`:** Defines the title of the page as "Register as C# Developer," which appears in the browser's title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">`:** Links to an external CSS file (`stylesSignupSpecificDev.css`) in the `/resources/static/css/` directory, which contains styles specific to the registration page for C# Developers.
- **`</head>`:** Closes the head section of the HTML document.
- **`<body>`:** Begins the body section of the HTML document, where the visible content is placed.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content of the `home_icon.jspf` file from the `../dynamic/` directory,  providing a home icon or navigation element.
- **`<div class="container">`:** A container `div` with the `container` class, used to center and structure the content on the page.
- **`<h1>Registration Page for C# Developer</h1>`:** Displays the main heading "Registration Page for C# Developer," indicating the purpose of the page.
- **`<div class="form-container">`:** A `div` with the `form-container` class that styles and contains the registration form.
- **`<form action="register_csharp" method="post" onsubmit="return validatePassword()">`:** Defines a form that submits data to the `register_csharp` endpoint. The `onsubmit` attribute calls the `validatePassword()` JavaScript function to ensure that the passwords match before submission.
  - **`<%@ include file="../dynamic/register_form_content.jspf" %>`:** Includes the content from the `register_form_content.jspf` file located in the `../dynamic/` directory. This file contains the common form fields and inputs used in the registration process.
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the `container` div.
- **`<script src="/resources/static/js/registerSpecificDev.js"></script>`:** Links to an external JavaScript file (`registerSpecificDev.js`) located in the `/resources/static/js/` directory, which includes scripts for validating and handling the registration process specific to developer roles.
- **`</body>`:** Closes the body section of the HTML document.
- **`</html>`:** Closes the HTML document.


#### 3.1.6 `register_database.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as Database Analyst</title>
    <link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Registration Page for Database Analyst</h1>
    <div class="form-container">
        <form action="/register_database" method="post" onsubmit="return validatePassword()">
            <%@ include file="../dynamic/register_form_content.jspf" %>
        </form>
    </div>
</div>
<script src="/resources/static/js/registerSpecificDev.js"></script>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, which allows access to the current date and time within the JSP page.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Sets the content type of the page to `text/html` and specifies UTF-8 character encoding to ensure proper rendering of text.
- **`<!DOCTYPE html>`:** Declares the document as HTML5, ensuring compliance with HTML5 standards.
- **`<html lang="en">`:** Opens the HTML document and specifies that the content is in English (`en`).
- **`<head>`:** Contains metadata and links to external resources.
- **`<meta charset="UTF-8">`:** Defines the character encoding for the page as UTF-8.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport to ensure responsive design, making the page adaptable to different screen sizes.
- **`<title>Register as Database Analyst</title>`:** Sets the page title to "Register as Database Analyst," which appears in the browser tab or title bar.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">`:** Links to an external CSS file (`stylesSignupSpecificDev.css`) located in the `/resources/static/css/` directory, which provides styles specific to the Database Analyst registration page.
- **`</head>`:** Closes the head section of the HTML document.
- **`<body>`:** Begins the body section where the main content of the page is included.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content from the `home_icon.jspf` file located in the `../dynamic/` directory,  providing a home icon or similar navigation feature.
- **`<div class="container">`:** A `div` with the `container` class that centers and organizes the page content.
- **`<h1>Registration Page for Database Analyst</h1>`:** Displays the main heading "Registration Page for Database Analyst," indicating the purpose of the page.
- **`<div class="form-container">`:** A `div` with the `form-container` class that styles and contains the registration form.
- **`<form action="/register_database" method="post" onsubmit="return validatePassword()">`:** Defines a form that submits data to the `/register_database` endpoint. The `onsubmit` attribute calls the `validatePassword()` JavaScript function to validate the form before submission.
  - **`<%@ include file="../dynamic/register_form_content.jspf" %>`:** Includes the content from the `register_form_content.jspf` file located in the `../dynamic/` directory, which contains the form fields and inputs common to various registration forms.
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the `container` div.
- **`<script src="/resources/static/js/registerSpecificDev.js"></script>`:** Links to an external JavaScript file (`registerSpecificDev.js`) located in the `/resources/static/js/` directory. This file likely contains scripts related to the registration process for specific developer roles, including validation functions.
- **`</body>`:** Closes the body section of the HTML document.
- **`</html>`:** Closes the HTML document.


#### 3.1.7 `register_frontend.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as Front-end Developer</title>
    <link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Registration Page for Front-end Developer</h1>
    <div class="form-container">
        <form action="/register_frontend" method="post" onsubmit="return validatePassword()">
            <%@ include file="../dynamic/register_form_content.jspf" %>
        </form>
    </div>
</div>
<script src="/resources/static/js/registerSpecificDev.js"></script>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, which provides access to the current date and time within the JSP page.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Specifies that the page content type is `text/html` and the character encoding is set to UTF-8 to ensure proper text rendering.
- **`<!DOCTYPE html>`:** Declares the document as HTML5, ensuring it adheres to HTML5 standards.
- **`<html lang="en">`:** Opens the HTML document and specifies that the language of the content is English (`en`).
- **`<head>`:** Contains metadata and links to external resources.
- **`<meta charset="UTF-8">`:** Sets the character encoding of the page to UTF-8 for proper text display.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport for responsive design, enabling the page to adapt to different screen sizes.
- **`<title>Register as Front-end Developer</title>`:** Sets the title of the page to "Register as Front-end Developer," which is displayed in the browser’s title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">`:** Links to an external CSS file (`stylesSignupSpecificDev.css`) located in the `/resources/static/css/` directory. This file contains styles specific to the Front-end Developer registration page.
- **`</head>`:** Closes the head section of the HTML document.
- **`<body>`:** Begins the body section where the main content of the page is placed.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content from the `home_icon.jspf` file located in the `../dynamic/` directory, which  provides a home icon or similar navigation feature.
- **`<div class="container">`:** A `div` element with the `container` class to center and organize the page content.
- **`<h1>Registration Page for Front-end Developer</h1>`:** Displays the main heading "Registration Page for Front-end Developer," indicating the purpose of the page.
- **`<div class="form-container">`:** A `div` element with the `form-container` class that styles and contains the registration form.
- **`<form action="/register_frontend" method="post" onsubmit="return validatePassword()">`:** Defines a form that submits data to the `/register_frontend` endpoint when posted. The `onsubmit` attribute calls the `validatePassword()` JavaScript function to validate the form data before submission.
  - **`<%@ include file="../dynamic/register_form_content.jspf" %>`:** Includes the content from the `register_form_content.jspf` file located in the `../dynamic/` directory, which contains the form fields and inputs common to the registration forms for different roles.
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the `container` div.
- **`<script src="/resources/static/js/registerSpecificDev.js"></script>`:** Links to an external JavaScript file (`registerSpecificDev.js`) located in the `/resources/static/js/` directory. This file likely contains scripts related to the registration process for specific developer roles.
- **`</body>`:** Closes the body section of the HTML document.
- **`</html>`:** Closes the HTML document.


#### 3.1.8 `register_java.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register as Java Developer</title>
  <link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
  <h1>Registration Page for Java Developer</h1>
  <div class="form-container">
    <form action="/register_java" method="post" onsubmit="return validatePassword()">
      <input type="text" name="name" placeholder="Name" required><br>
      <input type="text" name="surname" placeholder="Surname" required><br>
      <input type="text" name="login" placeholder="Login" required><br>
      <input type="password" name="password" id="password" placeholder="Password" required><br>
      <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password" required onkeyup="validatePassword()"><br>
      <input type="text" name="toolname" placeholder="Tool Name" required><br>
      <select name="experience" required>
        <option value="" disabled selected>Select Experience</option>
        <option value="JUNIOR">Junior</option>
        <option value="MID">Mid</option>
        <option value="SENIOR">Senior</option>
      </select><br>
      <input type="submit" value="Sign up">
    </form>
  </div>
</div>
<script src="/resources/static/js/registerSpecificDev.js"></script>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, which allows access to the current date and time within the JSP page.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Specifies that the content type of the page is `text/html` and sets the character encoding to UTF-8, ensuring proper rendering of text and special characters.
- **`<!DOCTYPE html>`:** Declares the document as an HTML5 document, ensuring it is parsed and displayed according to HTML5 standards.
- **`<html lang="en">`:** Opens the HTML document and specifies that the content is in English (`en`).
- **`<head>`:** Contains metadata and links to external resources for the document.
- **`<meta charset="UTF-8">`:** Sets the character encoding for the page to UTF-8, ensuring that text is displayed correctly.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport for responsive design, allowing the page to scale appropriately on different devices.
- **`<title>Register as Java Developer</title>`:** Sets the title of the page to "Register as Java Developer," which is shown in the browser’s title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">`:** Links to an external CSS file (`stylesSignupSpecificDev.css`) located in the `/resources/static/css/` directory. This file contains styles specific to the Java Developer registration page.
- **`</head>`:** Closes the head section of the HTML document.
- **`<body>`:** Begins the body section where the main content of the page is placed.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content from the `home_icon.jspf` file located in the `../dynamic/` directory, which  provides a home icon or similar navigation feature.
- **`<div class="container">`:** A `div` element with the `container` class that centers and organizes the page content.
- **`<h1>Registration Page for Java Developer</h1>`:** Displays the main heading "Registration Page for Java Developer," indicating the specific purpose of the page.
- **`<div class="form-container">`:** A `div` element with the `form-container` class that styles and contains the registration form.
- **`<form action="/register_java" method="post" onsubmit="return validatePassword()">`:** Defines a form that submits data to the `/register_java` endpoint when the form is posted. The `onsubmit` attribute calls a JavaScript function `validatePassword()` to perform client-side validation before form submission.
  - **`<input type="text" name="name" placeholder="Name" required>`:** Input field for the user's name, with a placeholder text "Name" and marked as required.
  - **`<input type="text" name="surname" placeholder="Surname" required>`:** Input field for the user's surname, with a placeholder text "Surname" and marked as required.
  - **`<input type="text" name="login" placeholder="Login" required>`:** Input field for the user's login, with a placeholder text "Login" and marked as required.
  - **`<input type="password" name="password" id="password" placeholder="Password" required>`:** Input field for the user's password, with a placeholder text "Password" and marked as required. The `id="password"` attribute is used to reference the field in JavaScript validation.
  - **`<input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password" required onkeyup="validatePassword()">`:** Input field for confirming the user's password, with a placeholder text "Confirm Password" and marked as required. The `onkeyup` attribute triggers the `validatePassword()` function on each key press to validate the password match.
  - **`<input type="text" name="toolname" placeholder="Tool Name" required>`:** Input field for the tool name associated with the Java Developer role, with a placeholder text "Tool Name" and marked as required.
  - **`<select name="experience" required>`:** Dropdown menu for selecting the user's experience level, with options for "Junior," "Mid," and "Senior," and marked as required.
    - **`<option value="" disabled selected>Select Experience</option>`:** Placeholder option for the dropdown menu, which is disabled and selected by default.
    - **`<option value="JUNIOR">Junior</option>`:** Option for "Junior" experience level.
    - **`<option value="MID">Mid</option>`:** Option for "Mid" experience level.
    - **`<option value="SENIOR">Senior</option>`:** Option for "Senior" experience level.
  - **`<input type="submit" value="Sign up">`:** Submit button for the form, with the text "Sign up."
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the `container` div.
- **`<script src="/resources/static/js/registerSpecificDev.js"></script>`:** Links to an external JavaScript file (`registerSpecificDev.js`) located in the `/resources/static/js/` directory, which likely contains scripts related to the registration process for Java Developers.
- **`</body>`:** Closes the body section of the HTML document.
- **`</html>`:** Closes the HTML document.


#### 3.1.9 `register_python.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as Python Developer</title>
    <link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Registration Page for Python Developer</h1>
    <div class="form-container">
        <form action="/register_python" method="post" onsubmit="return validatePassword()">
            <%@ include file="../dynamic/register_form_content.jspf" %>
        </form>
    </div>
</div>
<script src="/resources/static/js/registerSpecificDev.js"></script>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, which can be used to access the current date and time within the JSP page.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Sets the content type of the page to `text/html` and specifies UTF-8 as the character encoding, ensuring proper handling of text and special characters.
- **`<!DOCTYPE html>`:** Declares the document as an HTML5 document, which ensures it is parsed and displayed according to HTML5 standards.
- **`<html lang="en">`:** Opens the HTML document and specifies that the content is in English (`en`).
- **`<head>`:** Contains metadata and links to external resources necessary for the document.
- **`<meta charset="UTF-8">`:** Defines the character encoding for the page as UTF-8, ensuring that all text is displayed correctly.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport for responsive design, ensuring the page scales appropriately on different devices.
- **`<title>Register as Python Developer</title>`:** Sets the title of the page to "Register as Python Developer," which appears in the browser's title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignupSpecificDev.css">`:** Links to an external CSS file (`stylesSignupSpecificDev.css`) located in the `/resources/static/css/` directory, which styles the registration page for Python Developers.
- **`</head>`:** Closes the head section of the HTML document.
- **`<body>`:** Begins the body section where the main content of the page is placed.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content from the `home_icon.jspf` file in the `../dynamic/` directory,  providing a home icon or related navigation feature.
- **`<div class="container">`:** A `div` element with the `container` class that centers and organizes the page content.
- **`<h1>Registration Page for Python Developer</h1>`:** Displays the main heading "Registration Page for Python Developer," indicating the purpose of the page.
- **`<div class="form-container">`:** A `div` element with the `form-container` class that styles and contains the form.
- **`<form action="/register_python" method="post" onsubmit="return validatePassword()">`:** Defines a form that posts data to the `/register_python` endpoint when submitted. The `onsubmit` attribute calls a JavaScript function `validatePassword()` to perform client-side validation before form submission.
- **`<%@ include file="../dynamic/register_form_content.jspf" %>`:** Includes the content from the `register_form_content.jspf` file in the `../dynamic/` directory, which contains the specific form fields and elements for registration.
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the `container` div.
- **`<script src="/resources/static/js/registerSpecificDev.js"></script>`:** Links to an external JavaScript file (`registerSpecificDev.js`) located in the `/resources/static/js/` directory, which likely contains scripts related to the registration process for Python Developers.
- **`</body>`:** Closes the body section of the HTML document.
- **`</html>`:** Closes the HTML document.


#### 3.1.10 `registration_failure.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Failed</title>
    <link rel="stylesheet" href="/resources/static/css/stylesRegistrationFailure.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Registration Failed</h1>
    <p>Login already used. Please try again with a different login.</p>
    <a href="signup" class="try-again-btn">Try Again</a>
</div>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, allowing the current date and time to be accessed within the JSP page.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Sets the content type of the page to `text/html` and specifies UTF-8 as the character encoding, ensuring proper display of content and special characters.
- **`<!DOCTYPE html>`:** Declares that the document is an HTML5 document.
- **`<html lang="en">`:** Opens the HTML document and sets the language to English (`en`).
- **`<head>`:** Contains metadata and links to external resources like stylesheets.
- **`<meta charset="UTF-8">`:** Specifies UTF-8 as the character encoding, ensuring that all characters are displayed correctly.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Sets the viewport settings for responsive design, making sure the page displays well on various devices.
- **`<title>Registration Failed</title>`:** Sets the title of the webpage to "Registration Failed," which appears in the browser's title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesRegistrationFailure.css">`:** Links to an external CSS file (`stylesRegistrationFailure.css`) located in the `/resources/static/css/` directory, which contains the styling for the registration failure page.
- **`</head>`:** Closes the head section, which concludes the metadata and resource links.
- **`<body>`:** Begins the body section, where the main content of the page is displayed.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content of the `home_icon.jspf` file from the `../dynamic/` directory,  adding a home icon or related functionality to the page.
- **`<div class="container">`:** A `div` element with the `container` class that centers and structures the content on the page.
- **`<h1>Registration Failed</h1>`:** Displays the heading "Registration Failed," indicating that the registration attempt was unsuccessful.
- **`<p>Login already used. Please try again with a different login.</p>`:** Displays a message informing the user that the chosen login is already in use, prompting them to try again with a different login.
- **`<a href="signup" class="try-again-btn">Try Again</a>`:** Provides a hyperlink (`<a>` element) labeled "Try Again" that directs the user back to the sign-up page, with the `try-again-btn` class applied for styling.
- **`</div>`:** Closes the `container` div.
- **`</body>`:** Closes the body section, marking the end of the main content of the page.
- **`</html>`:** Closes the HTML document, signaling the end of the content.


#### 3.1.11 `registration_success.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <link rel="stylesheet" href="/resources/static/css/stylesRegistrationSuccess.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <p>Now you can <a href="signin" class="home-link">sign in</a>!</p>
</div>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, allowing the current date and time to be accessed within the JSP page.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Sets the content type of the page to `text/html` and specifies UTF-8 as the character encoding, ensuring proper display of content and special characters.
- **`<!DOCTYPE html>`:** Declares that the document is an HTML5 document.
- **`<html lang="en">`:** Opens the HTML document and sets the language to English (`en`).
- **`<head>`:** Contains metadata and links to external resources like stylesheets.
- **`<meta charset="UTF-8">`:** Specifies UTF-8 as the character encoding, ensuring that all characters are displayed correctly.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Sets the viewport settings for responsive design, making sure the page displays well on various devices.
- **`<title>Registration Success</title>`:** Sets the title of the webpage to "Registration Success," which appears in the browser's title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesRegistrationSuccess.css">`:** Links to an external CSS file (`stylesRegistrationSuccess.css`) located in the `/resources/static/css/` directory, which contains the styling for the registration success page.
- **`</head>`:** Closes the head section, which concludes the metadata and resource links.
- **`<body>`:** Begins the body section, where the main content of the page is displayed.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content of the `home_icon.jspf` file from the `../dynamic/` directory,  adding a home icon or related functionality to the page.
- **`<div class="container">`:** A `div` element with the `container` class that centers and structures the content on the page.
- **`<p>Now you can <a href="signin" class="home-link">sign in</a>!</p>`:** Displays a message informing the user that they can now sign in. The text "sign in" is a hyperlink (`<a>` element) that directs the user to the sign-in page, with the `home-link` class applied for styling.
- **`</div>`:** Closes the `container` div.
- **`</body>`:** Closes the body section, marking the end of the main content of the page.
- **`</html>`:** Closes the HTML document, signaling the end of the content.

#### 3.1.12 `signin.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
    <link rel="stylesheet" href="/resources/static/css/stylesSignin.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Welcome back!</h1>
    <div class="form-container">
        <form action="/login" method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Sign in">
        </form>
    </div>
</div>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, which can be used within the JSP to represent the current date and time.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Specifies the content type of the page as `text/html` and sets the character encoding to `UTF-8`, ensuring the correct display of characters and symbols.
- **`<!DOCTYPE html>`:** Declares the document as an HTML5 document.
- **`<html lang="en">`:** Opens the HTML document and sets the language to English (`en`).
- **`<head>`:** Contains metadata and links to external resources such as stylesheets.
- **`<meta charset="UTF-8">`:** Specifies the character encoding as UTF-8, which supports a wide range of characters.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport settings to ensure the page is responsive and properly scales on different devices.
- **`<title>Sign in</title>`:** Sets the title of the webpage to "Sign in," which appears in the browser's title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignin.css">`:** Links to an external CSS file (`stylesSignin.css`) located in the `/resources/static/css/` directory, used for styling the sign-in page.
- **`</head>`:** Closes the head section, concluding the metadata and resource links.
- **`<body>`:** Begins the body section, which contains the main content of the page.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content of the `home_icon.jspf` file from the `../dynamic/` directory. This  adds a home icon or related functionality to the page.
- **`<div class="container">`:** A `div` element with the `container` class used to center and structure the content on the page.
- **`<h1>Welcome back!</h1>`:** A heading that welcomes the user back, indicating they are on the sign-in page.
- **`<div class="form-container">`:** A `div` element with the `form-container` class that wraps the sign-in form, providing structure and styling.
- **`<form action="/login" method="post">`:** Defines a form that will submit user input to the `/login` endpoint using the POST method. This form is used for user authentication.
  - **`<input type="text" name="username" placeholder="Username" required>`:** An input field for the user to enter their username, with a placeholder "Username" and a `required` attribute to ensure the field is filled before submission.
  - **`<input type="password" name="password" placeholder="Password" required>`:** An input field for the user to enter their password, with a placeholder "Password" and a `required` attribute to ensure the field is filled before submission.
  - **`<input type="submit" value="Sign in">`:** A submit button labeled "Sign in" that sends the form data when clicked.
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the main container div.
- **`</body>`:** Ends the body section, concluding the main content of the page.
- **`</html>`:** Ends the HTML document, marking the end of the content.

#### 3.1.13 `signup.jsp`

```jsp
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="/resources/static/css/stylesSignup.css">
</head>
<body>
<%@ include file="../dynamic/home_icon.jspf" %>
<div class="container">
    <h1>Welcome to Pay Slip Generator!</h1>
    <h1>Choose your position</h1>
    <div class="form-container">
        <form id="registrationForm">
            <select id="position" onchange="redirect()">
                <option value="" disabled selected>Select Position</option>
                <option value="java_developer">Java Developer</option>
                <option value="python_developer">Python Developer</option>
                <option value="csharp_developer">C# Developer</option>
                <option value="cpp_developer">C++ Developer</option>
                <option value="frontend_developer">Front-end Developer</option>
                <option value="database_analyst">Database Analyst</option>
            </select>
            <button type="button" onclick="choosePosition()">OK</button>
        </form>
    </div>
</div>
<script src="/resources/static/js/signup.js"></script>
</body>
</html>
```

**Description:**
- **`<jsp:useBean id="now" class="java.util.Date"/>`:** Initializes a Java bean named `now` of type `java.util.Date`, which can be used within the JSP to represent the current date and time.
- **`<%@ page contentType="text/html; charset=UTF-8" %>`:** Specifies the content type of the page as `text/html` and sets the character encoding to `UTF-8`, ensuring the correct display of characters and symbols.
- **`<!DOCTYPE html>`:** Declares the document as an HTML5 document.
- **`<html lang="en">`:** Opens the HTML document and sets the language to English (`en`).
- **`<head>`:** Contains metadata and links to external resources such as stylesheets.
- **`<meta charset="UTF-8">`:** Specifies the character encoding as UTF-8, which supports a wide range of characters.
- **`<meta name="viewport" content="width=device-width, initial-scale=1.0">`:** Configures the viewport settings to ensure the page is responsive and properly scales on different devices.
- **`<title>Register</title>`:** Sets the title of the webpage to "Register," which appears in the browser's title bar or tab.
- **`<link rel="stylesheet" href="/resources/static/css/stylesSignup.css">`:** Links to an external CSS file (`stylesSignup.css`) located in the `/resources/static/css/` directory, used for styling the sign-up page.
- **`</head>`:** Closes the head section, concluding the metadata and resource links.
- **`<body>`:** Begins the body section, which contains the main content of the page.
- **`<%@ include file="../dynamic/home_icon.jspf" %>`:** Includes the content of the `home_icon.jspf` file from the `../dynamic/` directory. This  adds a home icon or related functionality to the page.
- **`<div class="container">`:** A `div` element with the `container` class used to center and structure the content on the page.
- **`<h1>Welcome to Pay Slip Generator!</h1>`:** A heading that welcomes the user to the Pay Slip Generator platform, indicating they are on the registration page.
- **`<h1>Choose your position</h1>`:** A secondary heading prompting the user to select their position.
- **`<div class="form-container">`:** A `div` element with the `form-container` class that wraps the registration form, providing structure and styling.
- **`<form id="registrationForm">`:** Defines a form element with the ID `registrationForm`, used to capture the user's selected position.
  - **`<select id="position" onchange="redirect()">`:** A dropdown (`<select>`) element with the ID `position`, allowing the user to choose their position. The `onchange="redirect()"` attribute triggers a JavaScript function `redirect()` when the user selects an option.
    - **`<option value="" disabled selected>Select Position</option>`:** The default, unselectable option that prompts the user to choose a position.
    - **`<option value="java_developer">Java Developer</option>`:** An option for users who are Java Developers.
    - **`<option value="python_developer">Python Developer</option>`:** An option for users who are Python Developers.
    - **`<option value="csharp_developer">C# Developer</option>`:** An option for users who are C# Developers.
    - **`<option value="cpp_developer">C++ Developer</option>`:** An option for users who are C++ Developers.
    - **`<option value="frontend_developer">Front-end Developer</option>`:** An option for users who are Front-end Developers.
    - **`<option value="database_analyst">Database Analyst</option>`:** An option for users who are Database Analysts.
  - **`<button type="button" onclick="choosePosition()">OK</button>`:** A button that, when clicked, calls the `choosePosition()` JavaScript function. This function  processes the user's selection and may direct them to the next step in the registration process.
- **`</form>`:** Closes the form element.
- **`</div>`:** Closes the `form-container` div.
- **`</div>`:** Closes the main container div.
- **`<script src="/resources/static/js/signup.js"></script>`:** Links to an external JavaScript file (`signup.js`) located in the `/resources/static/js/` directory. This script likely contains the `redirect()` and `choosePosition()` functions and any other logic related to the registration form.
- **`</body>`:** Ends the body section, concluding the main content of the page.
- **`</html>`:** Ends the HTML document, marking the end of the content.

#### 3.1.14 home_icon.jspf

```jspf
<a href="index" class="home-icon">&#127968;</a>
```

**Description:**
- **`<a href="index" class="home-icon">&#127968;</a>`**: An HTML anchor tag used to create a hyperlink.
  - **`<href="index">`**: Specifies the URL of the page to navigate to when the link is clicked. In this case, it points to "index", which is a relative path to the homepage or main page of the website.
  - **`<class="home-icon">`**: Assigns a CSS class named home-icon to the link. This class is used for styling purposes, such as adjusting the size, color, or positioning of the link.
  - **`<&#127968;>`**: Represents the house emoji (🏠) using an HTML entity. This emoji serves as a visual indicator for users to return to the homepage.

#### 3.1.15 register_form_content.jspf

```jspf
<input type="text" name="name" placeholder="Name" required><br>
<input type="text" name="surname" placeholder="Surname" required><br>
<input type="text" name="login" placeholder="Login" required><br>
<input type="password" name="password" id="password" placeholder="Password" required><br>
<input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password" required onkeyup="validatePassword()"><br>
<input type="text" name="toolName" placeholder="Tool Name" required><br>
<select name="experience" required>
    <option value="" disabled selected>Select Experience</option>
    <option value="JUNIOR">Junior</option>
    <option value="MID">Mid</option>
    <option value="SENIOR">Senior</option>
</select><br>
<input type="submit" value="Sign up">
```

**Description:**
- **`<input type="text" name="name" placeholder="Name" required><br>`**: A text input field for entering the user's name. The `required` attribute ensures that the field must be filled out before the form can be submitted. The `<br>` tag inserts a line break for layout purposes.
- **`<input type="text" name="surname" placeholder="Surname" required><br>`**: A text input field for entering the user's surname. The `required` attribute makes this field mandatory, and the `<br>` tag separates it from the next field.
- **`<input type="text" name="login" placeholder="Login" required><br>`**: A text input field for entering the user's login ID. It is required for form submission, with a `<br>` tag for layout.
- **`<input type="password" name="password" id="password" placeholder="Password" required><br>`**: A password input field for entering the user's password. The `required` attribute ensures that this field must be completed. The `<br>` tag adds spacing before the next field.
- **`<input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password" required onkeyup="validatePassword()"><br>`**: A password input field for confirming the user's password. The `required` attribute is used here as well, and the `onkeyup` event triggers the `validatePassword()` JavaScript function to check that the passwords match as the user types. The `<br>` tag provides a line break.
- **`<input type="text" name="toolName" placeholder="Tool Name" required><br>`**: A text input field for entering the name of a tool relevant to the user's role. It is marked as required, and a `<br>` tag is used for spacing.
- **`<select name="experience" required>`**: A dropdown menu for selecting the user's level of experience.
  - **`<option value="" disabled selected>Select Experience</option>`**: The default option that prompts the user to select an experience level. It is disabled and selected by default, so it cannot be chosen.
  - **`<option value="JUNIOR">Junior</option>`**: An option for selecting "Junior" level experience.
  - **`<option value="MID">Mid</option>`**: An option for selecting "Mid" level experience.
  - **`<option value="SENIOR">Senior</option>`**: An option for selecting "Senior" level experience.
- **`</select><br>`**: Closes the dropdown menu and includes a `<br>` tag for layout.
- **`<input type="submit" value="Sign up">`**: A submit button that sends the form data to the server. The button's label is "Sign up."

#### 3.1.16 styles.css

```css
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

.container {
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.title {
    font-size: 2.5rem;
    margin-bottom: 20px;
    color: #333;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    text-decoration: none;
    font-size: 1.2rem;
    margin: 0 10px;
    border-radius: 5px;
    transition: background-color 0.3s;
    border: none;
    cursor: pointer;
    outline: none;
}

.btn:hover {
    background-color: #45a049;
}
```

**Description:**
- **`body { margin: 0; padding: 0; font-family: Arial, sans-serif; background-color: #f0f0f0; }`**: The CSS rules applied to the `<body>` element, which is the root of the document.
  - **`margin: 0;`**: Removes any default margin around the body to eliminate unwanted spacing.
  - **`padding: 0;`**: Removes any default padding inside the body to ensure content starts from the edge.
  - **`font-family: Arial, sans-serif;`**: Sets the font of the entire document to Arial, with a fallback to a generic sans-serif font.
  - **`background-color: #f0f0f0;`**: Applies a light grey background color to the entire page.

- **`.container { text-align: center; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); }`**: A class used for centering content within the page.
  - **`text-align: center;`**: Centers the text within the container.
  - **`position: absolute;`**: Positions the container absolutely within the page, allowing it to be moved independently of the normal document flow.
  - **`top: 50%; left: 50%;`**: Positions the top left corner of the container at the center of the page.
  - **`transform: translate(-50%, -50%);`**: Shifts the container itself back by 50% of its height and width, fully centering it in the viewport.

- **`.title { font-size: 2.5rem; margin-bottom: 20px; color: #333; }`**: A class for styling the main title of the page.
  - **`font-size: 2.5rem;`**: Sets the font size to 2.5 times the root element’s font size, making it larger and more prominent.
  - **`margin-bottom: 20px;`**: Adds a 20px space below the title to separate it from the following content.
  - **`color: #333;`**: Sets the text color to a dark grey, which is softer than pure black.

- **`.btn { display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; font-size: 1.2rem; margin: 0 10px; border-radius: 5px; transition: background-color 0.3s; border: none; cursor: pointer; outline: none; }`**: A class for styling buttons on the page.
  - **`display: inline-block;`**: Makes the button behave like an inline element but allows block-level styling.
  - **`padding: 10px 20px;`**: Adds padding inside the button, making it larger and easier to click.
  - **`background-color: #4CAF50;`**: Sets the background color of the button to a green shade.
  - **`color: white;`**: Makes the button text white for better contrast.
  - **`text-decoration: none;`**: Removes any underline from the button text.
  - **`font-size: 1.2rem;`**: Increases the font size of the button text to make it more readable.
  - **`margin: 0 10px;`**: Adds a horizontal margin of 10px to space out buttons if there are multiple.
  - **`border-radius: 5px;`**: Rounds the corners of the button for a softer look.
  - **`transition: background-color 0.3s;`**: Smoothly transitions the background color when the button is hovered over.
  - **`border: none;`**: Removes the default border around the button.
  - **`cursor: pointer;`**: Changes the cursor to a pointer when hovering over the button, indicating it’s clickable.
  - **`outline: none;`**: Removes the outline that  appears when the button is focused.

- **`.btn:hover { background-color: #45a049; }`**: A hover state style for the `.btn` class.
  - **`background-color: #45a049;`**: Darkens the button’s background color when the user hovers over it, providing visual feedback.

#### 3.1.17 stylesLoggedin.css

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    position: relative;
}

.container {
    margin-top: 50px;
}

h1 {
    color: #333;
    margin-bottom: 20px;
}

.error-message {
    color: red;
    margin-bottom: 20px;
}

table {
    margin: auto;
    border-collapse: collapse;
    width: 50%;
    border: 2px solid #000;
    border-radius: 10px;
}

th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #4CAF50;
    color: white;
    border-right: 1px solid #fff;
}

td {
    background-color: #f2f2f2;
}

.try-again-btn {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    font-size: 1.2rem;
}

.try-again-btn:hover {
    background-color: #45a049;
}

.logout-icon {
    position: absolute;
    top: 10px;
    right: 20px;
    font-size: 40px;
    color: #333;
    text-decoration: none;
}

.logout-icon:hover {
    color: #f00;
}
```

**Description:**
- **`body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; position: relative; }`**: The CSS rules applied to the `<body>` element.
  - **`font-family: Arial, sans-serif;`**: Sets the default font for the page to Arial, with a fallback to a sans-serif font.
  - **`background-color: #f0f0f0;`**: Applies a light grey background color to the entire page.
  - **`text-align: center;`**: Centers all text content within the body.
  - **`position: relative;`**: Allows for positioning of child elements relative to the body.

- **`.container { margin-top: 50px; }`**: A class used to add spacing at the top of the container.
  - **`margin-top: 50px;`**: Adds 50 pixels of space above the container.

- **`h1 { color: #333; margin-bottom: 20px; }`**: Styles applied to `<h1>` elements,  used for headings.
  - **`color: #333;`**: Sets the text color to a dark grey.
  - **`margin-bottom: 20px;`**: Adds 20 pixels of space below the heading.

- **`.error-message { color: red; margin-bottom: 20px; }`**: A class for styling error messages.
  - **`color: red;`**: Sets the text color to red,  used for error messages.
  - **`margin-bottom: 20px;`**: Adds 20 pixels of space below the error message.

- **`table { margin: auto; border-collapse: collapse; width: 50%; border: 2px solid #000; border-radius: 10px; }`**: Styles applied to tables.
  - **`margin: auto;`**: Centers the table within its container.
  - **`border-collapse: collapse;`**: Ensures that borders of adjacent cells merge into a single border.
  - **`width: 50%;`**: Sets the table’s width to 50% of its container.
  - **`border: 2px solid #000;`**: Applies a 2-pixel black border around the table.
  - **`border-radius: 10px;`**: Rounds the corners of the table with a radius of 10 pixels.

- **`th, td { padding: 10px; text-align: left; border-bottom: 1px solid #ddd; }`**: Shared styles for table headers (`<th>`) and cells (`<td>`).
  - **`padding: 10px;`**: Adds 10 pixels of padding inside table cells.
  - **`text-align: left;`**: Aligns the content of table cells to the left.
  - **`border-bottom: 1px solid #ddd;`**: Adds a light grey border below each row.

- **`th { background-color: #4CAF50; color: white; border-right: 1px solid #fff; }`**: Specific styles for table header cells (`<th>`).
  - **`background-color: #4CAF50;`**: Sets the background color of header cells to a green shade.
  - **`color: white;`**: Changes the text color to white for better contrast.
  - **`border-right: 1px solid #fff;`**: Adds a white border to the right side of each header cell.

- **`td { background-color: #f2f2f2; }`**: Specific styles for table data cells (`<td>`).
  - **`background-color: #f2f2f2;`**: Sets the background color of table cells to a light grey.

- **`.try-again-btn { padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer; text-decoration: none; font-size: 1.2rem; }`**: A class for styling the "Try Again" button.
  - **`padding: 10px 20px;`**: Adds padding inside the button for a comfortable click area.
  - **`background-color: #4CAF50;`**: Sets the background color to green.
  - **`color: white;`**: Makes the button text white for contrast.
  - **`border: none;`**: Removes any default border around the button.
  - **`border-radius: 5px;`**: Rounds the corners of the button.
  - **`cursor: pointer;`**: Changes the cursor to a pointer when hovering over the button.
  - **`text-decoration: none;`**: Removes any text underline from the button text.
  - **`font-size: 1.2rem;`**: Increases the font size of the button text for better readability.

- **`.try-again-btn:hover { background-color: #45a049; }`**: Hover state for the `.try-again-btn` class.
  - **`background-color: #45a049;`**: Darkens the button's background color on hover to indicate interactivity.

- **`.logout-icon { position: absolute; top: 10px; right: 20px; font-size: 40px; color: #333; text-decoration: none; }`**: A class for styling the logout icon.
  - **`position: absolute;`**: Positions the icon absolutely within its container.
  - **`top: 10px; right: 20px;`**: Places the icon 10 pixels from the top and 20 pixels from the right edge of the container.
  - **`font-size: 40px;`**: Sets the font size to 40 pixels, making the icon large and noticeable.
  - **`color: #333;`**: Colors the icon in dark grey.
  - **`text-decoration: none;`**: Removes any underline from the icon.

- **`.logout-icon:hover { color: #f00; }`**: Hover state for the `.logout-icon` class.
  - **`color: #f00;`**: Changes the icon color to red on hover, indicating that it is clickable and associated with an action (logging out).


#### 3.1.18 stylesNotSignin.css

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
}

.container {
    width: 50%;
}

h1 {
    color: #333;
    text-align: center;
    margin-bottom: 20px;
}

p {
    color: red;
    margin-bottom: 20px;
}

.try-again-btn {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    font-size: 1.2rem;
}

.try-again-btn:hover {
    background-color: #45a049;
}

.home-icon {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 40px;
    color: #333;
    text-decoration: none;
}

.home-icon:hover {
    color: #f00;
}
```

**Description:**
- **`body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; display: flex; justify-content: center; align-items: center; height: 100vh; position: relative; }`**: The CSS rules applied to the `<body>` element.
  - **`font-family: Arial, sans-serif;`**: Sets the default font for the page to Arial, with a fallback to a sans-serif font.
  - **`background-color: #f0f0f0;`**: Applies a light grey background color to the entire page.
  - **`text-align: center;`**: Centers all text content within the body.
  - **`display: flex; justify-content: center; align-items: center;`**: Uses Flexbox to center the container both vertically and horizontally within the viewport.
  - **`height: 100vh;`**: Sets the height of the body to 100% of the viewport height.
  - **`position: relative;`**: Allows for positioning of child elements relative to the body.

- **`.container { width: 50%; }`**: A class used to define the width of the container.
  - **`width: 50%;`**: Sets the container’s width to 50% of its parent element (the body).

- **`h1 { color: #333; text-align: center; margin-bottom: 20px; }`**: Styles applied to `<h1>` elements,  used for headings.
  - **`color: #333;`**: Sets the text color to a dark grey.
  - **`text-align: center;`**: Centers the heading text.
  - **`margin-bottom: 20px;`**: Adds 20 pixels of space below the heading.

- **`p { color: red; margin-bottom: 20px; }`**: Styles applied to `<p>` elements,  used for displaying error messages.
  - **`color: red;`**: Sets the text color to red,  used for error messages.
  - **`margin-bottom: 20px;`**: Adds 20 pixels of space below the paragraph.

- **`.try-again-btn { padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer; text-decoration: none; font-size: 1.2rem; }`**: A class for styling the "Try Again" button.
  - **`padding: 10px 20px;`**: Adds padding inside the button for a comfortable click area.
  - **`background-color: #4CAF50;`**: Sets the background color to green.
  - **`color: white;`**: Makes the button text white for contrast.
  - **`border: none;`**: Removes any default border around the button.
  - **`border-radius: 5px;`**: Rounds the corners of the button.
  - **`cursor: pointer;`**: Changes the cursor to a pointer when hovering over the button.
  - **`text-decoration: none;`**: Removes any text underline from the button text.
  - **`font-size: 1.2rem;`**: Increases the font size of the button text for better readability.

- **`.try-again-btn:hover { background-color: #45a049; }`**: Hover state for the `.try-again-btn` class.
  - **`background-color: #45a049;`**: Darkens the button's background color on hover to indicate interactivity.

- **`.home-icon { position: absolute; top: 10px; right: 10px; font-size: 40px; color: #333; text-decoration: none; }`**: A class for styling the home icon.
  - **`position: absolute;`**: Positions the icon absolutely within its container.
  - **`top: 10px; right: 10px;`**: Places the icon 10 pixels from the top and right edges of the container.
  - **`font-size: 40px;`**: Sets the font size to 40 pixels, making the icon large and noticeable.
  - **`color: #333;`**: Colors the icon in dark grey.
  - **`text-decoration: none;`**: Removes any underline from the icon.

- **`.home-icon:hover { color: #f00; }`**: Hover state for the `.home-icon` class.
  - **`color: #f00;`**: Changes the icon color to red on hover, indicating that it is clickable and associated with an action (going back to the home page).


#### 3.1.19 stylesRegistrationFailure.css

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
}

.container {
    width: 50%;
}

h1 {
    color: #333;
    text-align: center;
    margin-bottom: 20px;
}

p {
    color: red;
    margin-bottom: 20px;
}

.try-again-btn {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    font-size: 1.2rem;
}

.try-again-btn:hover {
    background-color: #45a049;
}

.home-icon {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 40px;
    color: #333;
    text-decoration: none;
}

.home-icon:hover {
    color: #f00;
}
```

**Description:**
- **`body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; display: flex; justify-content: center; align-items: center; height: 100vh; position: relative; }`**: The CSS rules applied to the `<body>` element.
  - **`font-family: Arial, sans-serif;`**: Sets the default font for the page to Arial, with a fallback to a sans-serif font.
  - **`background-color: #f0f0f0;`**: Applies a light grey background color to the entire page.
  - **`text-align: center;`**: Centers all text content within the body.
  - **`display: flex; justify-content: center; align-items: center;`**: Uses Flexbox to center the content both vertically and horizontally within the viewport.
  - **`height: 100vh;`**: Sets the height of the body to 100% of the viewport height, ensuring the content is centered vertically.
  - **`position: relative;`**: Allows for positioning of child elements relative to the body.

- **`.container { width: 50%; }`**: A class used to define the width of the container.
  - **`width: 50%;`**: Sets the container’s width to 50% of its parent element (the body), making it responsive to different screen sizes.

- **`h1 { color: #333; text-align: center; margin-bottom: 20px; }`**: Styles applied to `<h1>` elements,  used for headings.
  - **`color: #333;`**: Sets the text color to a dark grey, ensuring good contrast with the background.
  - **`text-align: center;`**: Centers the heading text horizontally within the container.
  - **`margin-bottom: 20px;`**: Adds 20 pixels of space below the heading, separating it from subsequent content.

- **`p { color: red; margin-bottom: 20px; }`**: Styles applied to `<p>` elements,  used for displaying error messages.
  - **`color: red;`**: Sets the text color to red, commonly used to indicate errors or important alerts.
  - **`margin-bottom: 20px;`**: Adds 20 pixels of space below the paragraph, separating it from other elements.

- **`.try-again-btn { padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer; text-decoration: none; font-size: 1.2rem; }`**: A class for styling the "Try Again" button.
  - **`padding: 10px 20px;`**: Adds padding inside the button for a comfortable click area and better visual appearance.
  - **`background-color: #4CAF50;`**: Sets the background color to a shade of green.
  - **`color: white;`**: Makes the button text white, providing good contrast against the green background.
  - **`border: none;`**: Removes any default border around the button for a cleaner look.
  - **`border-radius: 5px;`**: Rounds the corners of the button slightly, giving it a softer appearance.
  - **`cursor: pointer;`**: Changes the cursor to a pointer when hovering over the button, indicating that it is clickable.
  - **`text-decoration: none;`**: Removes any underline from the button text.
  - **`font-size: 1.2rem;`**: Sets the font size of the button text to 1.2 rem, making it more prominent.

- **`.try-again-btn:hover { background-color: #45a049; }`**: Hover state for the `.try-again-btn` class.
  - **`background-color: #45a049;`**: Changes the background color to a darker shade of green when the button is hovered over, providing visual feedback.

- **`.home-icon { position: absolute; top: 10px; right: 10px; font-size: 40px; color: #333; text-decoration: none; }`**: A class for styling the home icon,  used for navigation.
  - **`position: absolute;`**: Positions the icon absolutely within its container, allowing it to be placed anywhere on the page.
  - **`top: 10px; right: 10px;`**: Places the icon 10 pixels from the top and right edges of the container.
  - **`font-size: 40px;`**: Sets the font size to 40 pixels, making the icon large and noticeable.
  - **`color: #333;`**: Colors the icon in dark grey, ensuring it stands out against the background.
  - **`text-decoration: none;`**: Removes any underline from the icon, making it appear cleaner.

- **`.home-icon:hover { color: #f00; }`**: Hover state for the `.home-icon` class.
  - **`color: #f00;`**: Changes the icon color to red when hovered over, indicating that it is interactive and associated with an action (e.g., returning to the homepage).


#### 3.1.20 stylesRegistrationSuccess.css

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
}

.container {
    width: 50%;
}

p {
    color: #333;
    margin-bottom: 20px;
}

.home-link {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    font-size: 1.2rem;
}

.home-icon {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 40px;
    color: #333;
    text-decoration: none;
}

.home-link:hover {
    background-color: #45a049;
}
```

**Description:**
- **`body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; display: flex; justify-content: center; align-items: center; height: 100vh; position: relative; }`**: The CSS rules applied to the `<body>` element.
  - **`font-family: Arial, sans-serif;`**: Sets the default font for the page to Arial, with a fallback to a sans-serif font.
  - **`background-color: #f0f0f0;`**: Applies a light grey background color to the entire page.
  - **`text-align: center;`**: Centers all text content within the body.
  - **`display: flex; justify-content: center; align-items: center;`**: Uses Flexbox to center the content both vertically and horizontally within the viewport.
  - **`height: 100vh;`**: Sets the height of the body to 100% of the viewport height, ensuring the content is centered vertically.
  - **`position: relative;`**: Allows for positioning of child elements relative to the body.

- **`.container { width: 50%; }`**: A class used to define the width of the container.
  - **`width: 50%;`**: Sets the container’s width to 50% of its parent element (the body), making it responsive to different screen sizes.

- **`p { color: #333; margin-bottom: 20px; }`**: Styles applied to `<p>` elements,  used for displaying general text content.
  - **`color: #333;`**: Sets the text color to dark grey, ensuring readability against the background.
  - **`margin-bottom: 20px;`**: Adds 20 pixels of space below the paragraph, separating it from other elements.

- **`.home-link { padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer; text-decoration: none; font-size: 1.2rem; }`**: A class for styling a button or link that returns the user to the homepage.
  - **`padding: 10px 20px;`**: Adds padding inside the button for a comfortable click area and better visual appearance.
  - **`background-color: #4CAF50;`**: Sets the background color to a shade of green.
  - **`color: white;`**: Makes the button text white, providing good contrast against the green background.
  - **`border: none;`**: Removes any default border around the button for a cleaner look.
  - **`border-radius: 5px;`**: Rounds the corners of the button slightly, giving it a softer appearance.
  - **`cursor: pointer;`**: Changes the cursor to a pointer when hovering over the button, indicating that it is clickable.
  - **`text-decoration: none;`**: Removes any underline from the link text, making it appear as a button.
  - **`font-size: 1.2rem;`**: Sets the font size of the button text to 1.2 rem, making it more prominent.

- **`.home-link:hover { background-color: #45a049; }`**: Hover state for the `.home-link` class.
  - **`background-color: #45a049;`**: Changes the background color to a darker shade of green when the link is hovered over, providing visual feedback.

- **`.home-icon { position: absolute; top: 10px; right: 10px; font-size: 40px; color: #333; text-decoration: none; }`**: A class for styling the home icon,  used for navigation.
  - **`position: absolute;`**: Positions the icon absolutely within its container, allowing it to be placed anywhere on the page.
  - **`top: 10px; right: 10px;`**: Places the icon 10 pixels from the top and right edges of the container.
  - **`font-size: 40px;`**: Sets the font size to 40 pixels, making the icon large and noticeable.
  - **`color: #333;`**: Colors the icon in dark grey, ensuring it stands out against the background.
  - **`text-decoration: none;`**: Removes any underline from the icon, making it appear cleaner.


#### 3.1.21 stylesSignin.css

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    width: 50%;
}

h1 {
    color: #333;
    text-align: center;
}

.form-container {
    width: 300px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.home-icon {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 40px;
    color: #333;
    text-decoration: none;
}

.home-icon:hover {
    color: #f00;
}
```

**Description:**
- **`body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; display: flex; justify-content: center; align-items: center; height: 100vh; }`**: Styles applied to the `<body>` element to set the overall page layout and appearance.
  - **`font-family: Arial, sans-serif;`**: Sets the default font for the page to Arial, with a fallback to a sans-serif font.
  - **`background-color: #f0f0f0;`**: Applies a light grey background color across the entire page.
  - **`text-align: center;`**: Centers all text content horizontally within the body.
  - **`display: flex; justify-content: center; align-items: center;`**: Uses Flexbox to center the content both horizontally and vertically within the viewport.
  - **`height: 100vh;`**: Ensures the body takes up the full height of the viewport, allowing the content to be centered vertically.

- **`.container { width: 50%; }`**: Defines the width of the main container.
  - **`width: 50%;`**: Sets the container's width to 50% of the body’s width, making it responsive to different screen sizes.

- **`h1 { color: #333; text-align: center; }`**: Styles the `<h1>` element,  used for the page title.
  - **`color: #333;`**: Colors the text dark grey for readability against the background.
  - **`text-align: center;`**: Centers the text within its container.

- **`.form-container { width: 300px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }`**: Styles applied to the form container.
  - **`width: 300px;`**: Sets a fixed width of 300 pixels for the form container.
  - **`margin: 0 auto;`**: Centers the form horizontally within the container.
  - **`background-color: #fff;`**: Sets the background color of the form container to white.
  - **`padding: 20px;`**: Adds padding inside the form container for better spacing.
  - **`border-radius: 5px;`**: Rounds the corners of the form container slightly.
  - **`box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);`**: Adds a subtle shadow around the form container to create a slight 3D effect.

- **`input[type="text"], input[type="password"] { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; }`**: Styles for text and password input fields.
  - **`width: 100%;`**: Makes the input fields take up the full width of their container.
  - **`padding: 10px;`**: Adds padding inside the input fields for better usability.
  - **`margin: 10px 0;`**: Adds space above and below the input fields to separate them from other elements.
  - **`border: 1px solid #ccc;`**: Sets a light grey border around the input fields.
  - **`border-radius: 5px;`**: Rounds the corners of the input fields slightly.
  - **`box-sizing: border-box;`**: Ensures padding and border are included in the total width and height of the input fields.

- **`input[type="submit"] { width: 100%; padding: 10px; background-color: #4CAF50; color: #fff; border: none; border-radius: 5px; cursor: pointer; }`**: Styles for the submit button.
  - **`width: 100%;`**: Makes the button take up the full width of its container.
  - **`padding: 10px;`**: Adds padding inside the button for a larger click area.
  - **`background-color: #4CAF50;`**: Sets the button’s background color to a shade of green.
  - **`color: #fff;`**: Makes the button text white, providing contrast against the green background.
  - **`border: none;`**: Removes the default border from the button for a cleaner look.
  - **`border-radius: 5px;`**: Rounds the corners of the button slightly.
  - **`cursor: pointer;`**: Changes the cursor to a pointer when hovering over the button, indicating it is clickable.

- **`input[type="submit"]:hover { background-color: #45a049; }`**: Hover state for the submit button.
  - **`background-color: #45a049;`**: Darkens the background color of the button when hovered over, providing visual feedback.

- **`.home-icon { position: absolute; top: 10px; right: 10px; font-size: 40px; color: #333; text-decoration: none; }`**: Styles for the home icon,  used for navigation.
  - **`position: absolute;`**: Positions the icon absolutely within its container.
  - **`top: 10px; right: 10px;`**: Places the icon 10 pixels from the top and right edges of the container.
  - **`font-size: 40px;`**: Sets the font size to 40 pixels, making the icon large and noticeable.
  - **`color: #333;`**: Colors the icon dark grey for visibility against the background.
  - **`text-decoration: none;`**: Removes any underline from the icon, giving it a clean appearance.

- **`.home-icon:hover { color: #f00; }`**: Hover state for the home icon.
  - **`color: #f00;`**: Changes the icon’s color to red when hovered over, indicating it is interactive.


#### 3.1.22 stylesSignup.css

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
}

.container {
    width: 50%;
}

h1 {
    color: #333;
    text-align: center;
    margin-bottom: 20px;
}

.form-container {
    width: 300px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="text"],
input[type="password"],
select {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"],
button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover,
button:hover {
    background-color: #45a049;
}

.home-icon {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 40px;
    color: #333;
    text-decoration: none;
}

.home-icon:hover {
    color: #f00;
}
```

**Description:**

- **`body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; display: flex; justify-content: center; align-items: center; height: 100vh; position: relative; }`**:
  - Sets the overall styling for the page. The font is set to Arial with a fallback to sans-serif. The background color is a light grey (`#f0f0f0`). 
  - The body is centered using flexbox, ensuring that content is vertically and horizontally aligned in the viewport. 
  - The `height` is set to 100vh, meaning the body takes up the full height of the viewport. The `position` is set to `relative` to allow for absolutely positioned elements within it.

- **`.container { width: 50%; }`**: 
  - Defines a container with a width of 50% of the available space. This class is used to center content horizontally within the body, providing a consistent layout for elements.

- **`h1 { color: #333; text-align: center; margin-bottom: 20px; }`**: 
  - Styles the primary header (`<h1>`). The color is set to a dark grey (`#333`), and the text is centered. A bottom margin of 20px is added to create space between the header and subsequent elements.

- **`.form-container { width: 300px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }`**: 
  - Provides styling for the form container. It has a fixed width of 300px and is centered within its parent container (`margin: 0 auto`).
  - The background color is set to white (`#fff`), with 20px of padding to provide space inside the container. The border radius is 5px, giving it slightly rounded corners.
  - A subtle shadow (`0 0 10px rgba(0, 0, 0, 0.1)`) is applied to create a soft elevation effect, making the form stand out against the background.

- **`input[type="text"], input[type="password"], select { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; }`**: 
  - Styles text input fields, password fields, and select dropdowns uniformly.
  - These elements take up 100% of the width of their container, with 10px of padding for better readability. 
  - They have a light grey border (`1px solid #ccc`) and rounded corners (`5px`) for a clean and consistent appearance. The `box-sizing: border-box` ensures that padding and border are included in the total width and height.

- **`input[type="submit"], button { width: 100%; padding: 10px; background-color: #4CAF50; color: #fff; border: none; border-radius: 5px; cursor: pointer; }`**: 
  - Styles submit buttons and any buttons used in the form.
  - These elements are full-width with 10px of padding. They have a background color of green (`#4CAF50`) and white text. The border is removed (`border: none`) and corners are rounded (`5px`) for a modern look. The `cursor: pointer` ensures the cursor changes to a pointer when hovering over these elements.

- **`input[type="submit"]:hover, button:hover { background-color: #45a049; }`**: 
  - Defines a hover effect for buttons, changing the background color to a slightly darker green (`#45a049`) when hovered over, providing visual feedback to users.

- **`.home-icon { position: absolute; top: 10px; right: 10px; font-size: 40px; color: #333; text-decoration: none; }`**: 
  - Styles an icon (likely an anchor tag with a home icon) that is positioned absolutely at the top right of the page.
  - The font size is set to 40px, with a default color of dark grey (`#333`). The `text-decoration: none` removes the underline from the link.

- **`.home-icon:hover { color: #f00; }`**: 
  - On hover, the icon’s color changes to red (`#f00`) to indicate interactivity, drawing attention to the clickable element.

#### 3.1.23 stylesSignupSpecificDev.css

```css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    position: relative;
}

.container {
    width: 50%;
}

h1 {
    color: #333;
    text-align: center;
    margin-bottom: 20px;
}

.form-container {
    width: 300px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="text"],
input[type="password"],
select {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.home-icon {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 40px;
    color: #333;
    text-decoration: none;
}

.home-icon:hover {
    color: #f00;
}

.password-error {
    border: 1px solid red !important;
}
```

**Description:**

- **`body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; display: flex; justify-content: center; align-items: center; height: 100vh; position: relative; }`**: 
  - Sets the styling for the body of the page. Uses Arial font with a fallback to sans-serif. The background color is a light grey (`#f0f0f0`). 
  - The body is centered using flexbox, ensuring that content is aligned both vertically and horizontally in the viewport. 
  - The `height` is set to 100vh (viewport height), and `position: relative` is used to allow absolute positioning of child elements.

- **`.container { width: 50%; }`**: 
  - Defines a container that takes up 50% of the width of its parent element. This is  used to center content horizontally on the page.

- **`h1 { color: #333; text-align: center; margin-bottom: 20px; }`**: 
  - Styles the main header (`<h1>`). The text color is dark grey (`#333`), centered on the page, and a margin of 20px is added below to separate it from other content.

- **`.form-container { width: 300px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }`**: 
  - Styles the container for the form. It has a fixed width of 300px and is centered horizontally within its parent (`margin: 0 auto`).
  - The background color is white (`#fff`), with 20px of padding for spacing inside the container. The container has rounded corners (`5px`) and a subtle shadow (`0 0 10px rgba(0, 0, 0, 0.1)`) for a slight elevation effect.

- **`input[type="text"], input[type="password"], select { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; }`**: 
  - Styles text input fields, password fields, and select dropdowns uniformly.
  - These elements are set to take up 100% of the container's width with 10px padding for better usability. They have a light grey border (`1px solid #ccc`) and rounded corners (`5px`). The `box-sizing: border-box` ensures that padding and border are included in the element's total width and height.

- **`input[type="submit"] { width: 100%; padding: 10px; background-color: #4CAF50; color: #fff; border: none; border-radius: 5px; cursor: pointer; }`**: 
  - Styles the submit button with a full width (`100%`) and padding of 10px. The background color is green (`#4CAF50`) with white text. It has no border (`border: none`) and rounded corners (`5px`). The `cursor: pointer` changes the cursor to a pointer on hover to indicate that the button is clickable.

- **`input[type="submit"]:hover { background-color: #45a049; }`**: 
  - Changes the background color of the submit button to a slightly darker green (`#45a049`) when hovered over, providing visual feedback.

- **`.home-icon { position: absolute; top: 10px; right: 10px; font-size: 40px; color: #333; text-decoration: none; }`**: 
  - Styles an icon (likely an anchor tag with a home icon) positioned absolutely at the top right of the page. It has a font size of 40px and a dark grey color (`#333`). `text-decoration: none` removes any underlines from the link.

- **`.home-icon:hover { color: #f00; }`**: 
  - Changes the color of the home icon to red (`#f00`) when hovered over, indicating interactivity.

- **`.password-error { border: 1px solid red !important; }`**: 
  - Applies a red border (`1px solid red`) to elements with the `password-error` class. The `!important` declaration ensures this style overrides other conflicting styles,  used to highlight fields with errors.


#### 3.1.24 registerSpecificDev.js

```js
function validatePassword() {
    var password = document.getElementById("password");
    var confirm_password = document.getElementById("confirm_password");

    if (password.value !== confirm_password.value) {
        confirm_password.classList.add("password-error");
        return false;
    } else {
        confirm_password.classList.remove("password-error");
        return true;
    }
}
```

**Description:**

- **`function validatePassword() { ... }`**: 
  - This JavaScript function validates that the password and confirm password fields match in a form. 

  - **`var password = document.getElementById("password");`**:
    - Retrieves the password input field element by its ID (`"password"`) and stores it in the variable `password`.

  - **`var confirm_password = document.getElementById("confirm_password");`**:
    - Retrieves the confirm password input field element by its ID (`"confirm_password"`) and stores it in the variable `confirm_password`.

  - **`if (password.value !== confirm_password.value) { ... }`**:
    - Checks if the values of the password and confirm password fields are not equal.

    - **`confirm_password.classList.add("password-error");`**:
      - If the values do not match, it adds the class `"password-error"` to the confirm password field. This class  applies a red border or other styling to indicate an error.

    - **`return false;`**:
      - Returns `false` to prevent the form from being submitted if the passwords do not match.

  - **`else { ... }`**:
    - Executes if the password and confirm password values are equal.

    - **`confirm_password.classList.remove("password-error");`**:
      - Removes the `"password-error"` class from the confirm password field, indicating that the error has been resolved.

    - **`return true;`**:
      - Returns `true` to allow the form to be submitted since the passwords match.

This function is used in a form submission event to ensure that users have correctly entered and confirmed their password before proceeding.

#### 3.1.25 signup.js

```js
function choosePosition() {
    var positionSelect = document.getElementById("position");
    var selectedValue = positionSelect.value;
    var redirectUrl;

    switch(selectedValue) {
        case "java_developer":
            redirectUrl = "register_java";
            break;
        case "python_developer":
            redirectUrl = "register_python";
            break;
        case "csharp_developer":
            redirectUrl = "register_csharp";
            break;
        case "cpp_developer":
            redirectUrl = "register_cpp";
            break;
        case "frontend_developer":
            redirectUrl = "register_frontend";
            break;
        case "database_analyst":
            redirectUrl = "register_database";
            break;
        default:
            break;
    }

    if (redirectUrl) {
        window.location.href = redirectUrl;
    }
}
```

**Description:**

- **`function choosePosition() { ... }`**: 
  - This JavaScript function redirects the user to a specific registration page based on the selected value from a dropdown menu.

  - **`var positionSelect = document.getElementById("position");`**:
    - Retrieves the dropdown menu element by its ID (`"position"`) and stores it in the variable `positionSelect`.

  - **`var selectedValue = positionSelect.value;`**:
    - Gets the currently selected value from the dropdown menu and stores it in the variable `selectedValue`.

  - **`var redirectUrl;`**:
    - Declares a variable `redirectUrl` to hold the URL to which the user will be redirected.

  - **`switch(selectedValue) { ... }`**:
    - A switch statement is used to determine the URL based on the selected value.

    - **`case "java_developer":`**:
      - If the selected value is `"java_developer"`, sets `redirectUrl` to `"register_java"`.

    - **`case "python_developer":`**:
      - If the selected value is `"python_developer"`, sets `redirectUrl` to `"register_python"`.

    - **`case "csharp_developer":`**:
      - If the selected value is `"csharp_developer"`, sets `redirectUrl` to `"register_csharp"`.

    - **`case "cpp_developer":`**:
      - If the selected value is `"cpp_developer"`, sets `redirectUrl` to `"register_cpp"`.

    - **`case "frontend_developer":`**:
      - If the selected value is `"frontend_developer"`, sets `redirectUrl` to `"register_frontend"`.

    - **`case "database_analyst":`**:
      - If the selected value is `"database_analyst"`, sets `redirectUrl` to `"register_database"`.

    - **`default:`**:
      - The `default` case does nothing, which means if none of the specified cases match, `redirectUrl` remains undefined.

  - **`if (redirectUrl) { ... }`**:
    - Checks if `redirectUrl` has been set.

    - **`window.location.href = redirectUrl;`**:
      - If `redirectUrl` is defined, it redirects the browser to the specified URL.

This function is used when a user selects an option from a dropdown menu to navigate to a specific registration page corresponding to the selected position.

## 4. Configuration Files

### 4.1 xml and properties files

#### 4.1.1 `hibernate.cfg.xml`

```xml
<?xml version='1.0' encoding='utf-8'?>
<!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd">
<hibernate-configuration>
    <session-factory>
        <property name="hibernate.connection.url">jdbc:mysql://localhost:3306/hibernateexs?serverTimezone=Europe/Warsaw</property>
        <property name="hibernate.connection.driver_class">com.mysql.jdbc.Driver</property>
        <property name="hibernate.connection.username">root</property>
        <property name="hibernate.connection.password"></property>
        <property name="hibernate.dialect">org.hibernate.dialect.MySQL5Dialect</property>

        <property name="hibernate.hbm2ddl.auto">update</property>

        <property name="hibernate.show_sql">true</property>
        <property name="hibernate.format_sql">true</property>

        <mapping class="com.example.payslipgenerator.employees.Employee"/>
        <mapping class="com.example.payslipgenerator.employees.CppDeveloper"/>
        <mapping class="com.example.payslipgenerator.employees.CSharpDeveloper"/>
        <mapping class="com.example.payslipgenerator.employees.JavaDeveloper"/>
        <mapping class="com.example.payslipgenerator.employees.PythonDeveloper"/>
        <mapping class="com.example.payslipgenerator.employees.FrontEndDeveloper"/>
        <mapping class="com.example.payslipgenerator.employees.DatabaseAnalyst"/>
    </session-factory>
</hibernate-configuration>
```

**Description:**
- `<?xml version='1.0' encoding='utf-8'?>`: Declares the XML version and character encoding. This specifies that the document is in version 1.0 and uses UTF-8 encoding.
- `<!DOCTYPE hibernate-configuration PUBLIC "-//Hibernate/Hibernate Configuration DTD//EN" "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd">`: Declares the type and location of the DTD (Document Type Definition) for Hibernate configuration. This helps in validating the XML configuration file.
- `<hibernate-configuration>`: Starts the Hibernate configuration section. It is the root element for Hibernate configuration settings.
- `<session-factory>`: Defines the session factory for Hibernate. It sets properties and mappings used for creating and managing sessions.
- `<!-- Pozostałe ustawienia konfiguracyjne Hibernate'a -->`: Comment about additional Hibernate configuration settings. This helps in organizing and understanding the configuration file.
- `<property name="hibernate.connection.url">jdbc:mysql://localhost:3306/hibernateexs?serverTimezone=Europe/Warsaw</property>`: Specifies the URL to the MySQL database, including the port number and database name. It also sets the server timezone.
- `<property name="hibernate.connection.driver_class">com.mysql.jdbc.Driver</property>`: Specifies the JDBC driver class for MySQL used to connect to the database.
- `<property name="hibernate.connection.username">root</property>`: Specifies the username for logging into the database. In this case, it is `root`.
- `<property name="hibernate.connection.password"></property>`: Specifies the password for logging into the database. This field is empty for safety reasons. Fill it in with your password to root.
- `<property name="hibernate.dialect">org.hibernate.dialect.MySQL5Dialect</property>`: Specifies the MySQL dialect for Hibernate, defining SQL specifics for MySQL 5.
- `<property name="hibernate.hbm2ddl.auto">update</property>`: Defines the schema update strategy for the database. The `update` setting means Hibernate will automatically update the database schema based on changes in the entity model.
- `<property name="hibernate.show_sql">true</property>`: Sets a flag indicating whether Hibernate should display generated SQL in the console. `true` allows monitoring of SQL queries.
- `<property name="hibernate.format_sql">true</property>`: Sets a flag indicating whether the displayed SQL should be formatted. `true` makes the SQL more readable with indentation and new lines.
- `<mapping class="com.example.payslipgenerator.employees.Employee"/>`: Maps the `Employee` entity class to a database table. It tells Hibernate to manage this class as an entity.
- `<mapping class="com.example.payslipgenerator.employees.CppDeveloper"/>`: Maps the `CppDeveloper` entity class to a database table.
- `<mapping class="com.example.payslipgenerator.employees.CSharpDeveloper"/>`: Maps the `CSharpDeveloper` entity class to a database table.
- `<mapping class="com.example.payslipgenerator.employees.JavaDeveloper"/>`: Maps the `JavaDeveloper` entity class to a database table.
- `<mapping class="com.example.payslipgenerator.employees.PythonDeveloper"/>`: Maps the `PythonDeveloper` entity class to a database table.
- `<mapping class="com.example.payslipgenerator.employees.FrontEndDeveloper"/>`: Maps the `FrontEndDeveloper` entity class to a database table.
- `<mapping class="com.example.payslipgenerator.employees.DatabaseAnalyst"/>`: Maps the `DatabaseAnalyst` entity class to a database table.
- `</session-factory>`: Ends the session factory definition. All properties and mappings are now defined.
- `</hibernate-configuration>`: Ends the Hibernate configuration section. All configuration settings are closed.

#### 4.1.2 `application.properties`

```properties
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
```

**Description:**
- `spring.mvc.view.prefix=/WEB-INF/views/`: Sets the prefix path for views in Spring MVC. This means that Spring MVC will look for view files in the `/WEB-INF/views/` directory. This prefix is added before the view name.
- `spring.mvc.view.suffix=.jsp`: Sets the suffix for view file names in Spring MVC. In this case, Spring MVC expects view files to have a `.jsp` extension. For example, if a controller returns the name `home`, Spring MVC will automatically add the prefix and suffix to find the `home.jsp` view in the `/WEB-INF/views/` directory.

These descriptions should help in understanding the configuration files and their roles within the application. Let me know if there’s anything more you need!


## 5. Controllers

### 5.1 .java files

#### 5.1.1 `RegisterController`

```java
package com.example.payslipgenerator;

import com.example.payslipgenerator.employees.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static com.example.payslipgenerator.service.PaySlipGeneratorService.checkLoginDuplicates;

@Controller
public class RegisterController {

    @PostMapping("/register_python")
    public String registerPythonDeveloper(@RequestParam String name,
                                          @RequestParam String surname,
                                          @RequestParam String login,
                                          @RequestParam String password,
                                          @RequestParam String toolname,
                                          @RequestParam String experience) {

        boolean isValid = checkLoginDuplicates(login);
        if (!isValid) {
            return "redirect:/registration_failure";
        } else {
            PythonDeveloper pythonDeveloper = new PythonDeveloper();
            pythonDeveloper.addDataToDb(name, surname, login, password, toolname, experience);

            return "redirect:/registration_success";
        }
    }

    @PostMapping("/register_java")
    public String registerJavaDeveloper(@RequestParam String name,
                                        @RequestParam String surname,
                                        @RequestParam String login,
                                        @RequestParam String password,
                                        @RequestParam String toolname,
                                        @RequestParam String experience) {

        boolean isValid = checkLoginDuplicates(login);
        if (!isValid) {
            return "redirect:/registration_failure";
        } else {
            JavaDeveloper javaDeveloper = new JavaDeveloper();
            javaDeveloper.addDataToDb(name, surname, login, password, toolname, experience);

            return "redirect:/registration_success";
        }
    }

    @PostMapping("/register_frontend")
    public String registerFrontEndDeveloper(@RequestParam String name,
                                            @RequestParam String surname,
                                            @RequestParam String login,
                                            @RequestParam String password,
                                            @RequestParam String toolname,
                                            @RequestParam String experience) {

        boolean isValid = checkLoginDuplicates(login);
        if (!isValid) {
            return "redirect:/registration_failure";
        } else {
            FrontEndDeveloper frontEndDeveloper = new FrontEndDeveloper();
            frontEndDeveloper.addDataToDb(name, surname, login, password, toolname, experience);

            return "redirect:/registration_success";
        }
    }

    @PostMapping("/register_database")
    public String registerDatabaseDeveloper(@RequestParam String name,
                                            @RequestParam String surname,
                                            @RequestParam String login,
                                            @RequestParam String password,
                                            @RequestParam String toolname,
                                            @RequestParam String experience) {

        boolean isValid = checkLoginDuplicates(login);
        if (!isValid) {
            return "redirect:/registration_failure";
        } else {
            DatabaseAnalyst databaseAnalyst = new DatabaseAnalyst();
            databaseAnalyst.addDataToDb(name, surname, login, password, toolname, experience);

            return "redirect:/registration_success";
        }
    }

    @PostMapping("/register_csharp")
    public String registerCsharpDeveloper(@RequestParam String name,
                                          @RequestParam String surname,
                                          @RequestParam String login,
                                          @RequestParam String password,
                                          @RequestParam String toolname,
                                          @RequestParam String experience) {

        boolean isValid = checkLoginDuplicates(login);
        if (!isValid) {
            return "redirect:/registration_failure";
        } else {
            CSharpDeveloper cSharpDeveloper = new CSharpDeveloper();
            cSharpDeveloper.addDataToDb(name, surname, login, password, toolname, experience);

            return "redirect:/registration_success";
        }
    }

    @PostMapping("/register_cpp")
    public String registerCppDeveloper(@RequestParam String name,
                                       @RequestParam String surname,
                                       @RequestParam String login,
                                       @RequestParam String password,
                                       @RequestParam String toolname,
                                       @RequestParam String experience) {

        boolean isValid = checkLoginDuplicates(login);
        if (!isValid) {
            return "redirect:/registration_failure";
        } else {
            CppDeveloper cppDeveloper = new CppDeveloper();
            cppDeveloper.addDataToDb(name, surname, login, password, toolname, experience);

            return "redirect:/registration_success";
        }
    }
}
```

**Description:**
- `package com.example.payslipgenerator;`: The package where the `RegisterController` class is located.
- `import com.example.payslipgenerator.employees.*;`: Imports classes from the `employees` package.
- `import org.springframework.stereotype.Controller;`: Imports the `Controller` class from the Spring framework.
- `import org.springframework.web.bind.annotation.PostMapping;`: Imports the `PostMapping` annotation from the Spring framework.
- `import org.springframework.web.bind.annotation.RequestParam;`: Imports the `RequestParam` annotation from the Spring framework.
- `import static com.example.payslipgenerator.service.PaySlipGeneratorService.checkLoginDuplicates;`: Imports the static method `checkLoginDuplicates` from the `PaySlipGeneratorService` class.

**Class `RegisterController`:**
- Handles registration requests for different types of employees.
- Annotated with `@Controller`, indicating it is a Spring MVC controller.
- Contains multiple methods for handling different types of employees such as Python Developer, Java Developer, etc.
- Each method handles POST requests submitted from registration forms for the respective type of employee.

**Methods:**
1. `registerPythonDeveloper`: Handles registration for Python Developers.
2. `registerJavaDeveloper`: Handles registration for Java Developers.
3. `registerFrontEndDeveloper`: Handles registration for Front-end Developers.
4. `registerDatabaseDeveloper`: Handles registration for Database Analysts.
5. `registerCsharpDeveloper`: Handles registration for C# Developers.
6. `registerCppDeveloper`: Handles registration for C++ Developers.

**Method Parameters:**
- `@RequestParam String name`: The first name of the new employee.
- `@RequestParam String surname`: The last name of the new employee.
- `@RequestParam String login`: The login username of the new employee.
- `@RequestParam String password`: The password of the new employee.
- `@RequestParam String toolname`: Tools used by the employee.
- `@RequestParam String experience`: Experience of the employee.

**Functions:**
- Checks for login duplicates using the `checkLoginDuplicates` method.
- Creates new instances of the appropriate employee classes.
- Adds employee data to the database.
- Redirects users to the appropriate pages based on the success or failure of registration.

#### 5.1.2 `PaySlipGeneratorController`

```java
package com.example.payslipgenerator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaySlipGeneratorController {

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String getIndex() {
        return "index";
    }

    @RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String getSignInPage() {
        return "signin";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String getSignUpPage() {
        return "signup";
    }

    @RequestMapping(value = "/register_cpp", method = RequestMethod.GET)
    public String getCppDeveloperRegistrationPage() {
        return "register_cpp";
    }

    @RequestMapping(value = "/register_csharp", method = RequestMethod.GET)
    public String getCsharpDeveloperRegistrationPage() {
        return "register_csharp";
    }

    @RequestMapping(value = "/register_database", method = RequestMethod.GET)
    public String getDatabaseDeveloperRegistrationPage() {
        return "register_database";
    }

    @RequestMapping(value = "/register_frontend", method = RequestMethod.GET)
    public String getFrontendDeveloperRegistrationPage() {
        return "register_frontend";
    }

    @RequestMapping(value = "/register_java", method = RequestMethod.GET)
    public String getJavaDeveloperRegistrationPage() {
        return "register_java";
    }

    @RequestMapping(value = "/register_python", method = RequestMethod.GET)
    public String getPythonDeveloperRegistrationPage() {
        return "register_python";
    }

    @RequestMapping(value = "/notSignedIn", method = RequestMethod.GET)
    public String getNotSignedIn() {
        return "notSignedIn";
    }

    @RequestMapping(value = "/loggedIn", method = RequestMethod.GET)
    public String getSignedIn() {
        return "loggedIn";
    }

    @RequestMapping(value = "/registration_success", method = RequestMethod.GET)
    public String getRegistrationSuccess() {
        return "registration_success";
    }

    @RequestMapping(value = "/registration_failure", method = RequestMethod.GET)
    public String getRegistrationFailure() {
        return "registration_failure";
    }
}
```

**Description:**
- The `PaySlipGeneratorController` class is a controller handling requests related to pay slip generation.
- Annotated with `@Controller`, indicating it is a Spring MVC controller.

**Methods:**
1. `getIndex`: Returns the main page of the application.
2. `getSignInPage`: Returns the login page.
3. `getSignUpPage`: Returns the registration page.
4. `getCppDeveloperRegistrationPage`: Returns the registration page for C++ Developers.
5. `getCsharpDeveloperRegistrationPage`: Returns the registration page for C# Developers.
6. `getDatabaseDeveloperRegistrationPage`: Returns the registration page for Database Analysts.
7. `getFrontendDeveloperRegistrationPage`: Returns the registration page for Front-end Developers.
8. `getJavaDeveloperRegistrationPage`: Returns the registration page for Java Developers.
9. `getPythonDeveloperRegistrationPage`: Returns the registration page for Python Developers.
10. `getNotSignedIn`: Returns the page indicating the user is not signed in.
11. `getSignedIn`: Returns the page indicating successful sign-in.
12. `getRegistrationSuccess`: Returns the page indicating successful user registration.
13. `getRegistrationFailure`: Returns the page indicating registration failure.

**Annotations:**
- `@RequestMapping`: Specifies the URL where the method handles requests.
- `value`: Specifies the URL where the method is invoked.
- `method`: Specifies the HTTP method used to handle the request.

**Functions:**
- Each method handles a GET request for a specific URL and returns the name of the view to be displayed.

#### 5.1.3 `LoginController`

```java
package com.example.payslipgenerator;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static com.example.payslipgenerator.service.PaySlipGeneratorService.checkSignIn;

@Controller
public class LoginController {

    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model) {
        boolean loginSuccessful = checkSignIn(username, password);
        if (loginSuccessful) {
            model.addAttribute("username", username);
            return "redirect:/loggedIn?username=" + username;
        } else {
            return "redirect:/notSignedIn";
        }
    }
}
```

**Description:**
- The `LoginController` class handles the user login process.
- Annotated with `@Controller`, indicating it is a Spring component that handles HTTP requests.
- The `login` method processes the login request submitted from the form.

**Annotations:**
- `@Controller`: Indicates that the class is a controller that handles HTTP requests.

**Methods:**
1. `login`: Method handling the login request. It takes the username, password, and a Spring model.
   - `@PostMapping("/login")`: Indicates that the method handles POST requests at the path "/login".
   - `@RequestParam("username")`: The value of the "username" parameter from the form is assigned to the method parameter `username`.
   - `@RequestParam("password")`: The value of the "password" parameter from the form is assigned to the method parameter `password`.
   - `Model model`: A Spring model parameter used to pass data to the view.
   - Checks the validity of the login data by calling the `checkSignIn` method from `PaySlipGeneratorService`.
   - If login is successful, adds the `username` attribute to the model and redirects the user to the `/loggedIn` page.
   - Otherwise, redirects the user to the `/notSignedIn` page.

## 6. Service Classes

### 6.1 .java files

#### 6.1.1 `Main`

```java
package com.example.payslipgenerator.service;

import static com.example.payslipgenerator.service.PaySlipGeneratorService.setDataInDb;

public class Main {

    public static void main(String[] args) {

        setDataInDb();

    }

}
```

**Description:**
- The `Main` class is the main class of the application.
- Contains the `main` method, which is the entry point of the application.
- The `main` method invokes the `setDataInDb` method from the `PaySlipGeneratorService` class to set up data in the database.

**Methods:**
1. `main`: The entry point of the application.
   - Annotated with `public static void`, meaning it is accessible from anywhere in the program and does not return any value.
   - Takes an array of `String[]` arguments, which is not used in this application.
   - Calls the `setDataInDb()` method from the `PaySlipGeneratorService` class to initialize data in the database.

#### 6.1.2 `PaySlipGeneratorService`

```java
package com.example.payslipgenerator.service;

import com.example.payslipgenerator.employees.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.util.List;
import java.util.Optional;

@Data
@AllArgsConstructor
public class PaySlipGeneratorService {

    public static void setDataInDb() {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            JavaDeveloper javaJunior1 = new JavaDeveloper(null, "John", "Doe", "login", "password", "IntelliJ", Experience.JUNIOR);
            session.save(javaJunior1);

            JavaDeveloper javaJunior2 = new JavaDeveloper(null, "Alice", "Johnson", "login1", "password1", "NetBeans", Experience.JUNIOR);
            session.save(javaJunior2);

            JavaDeveloper javaMid1 = new JavaDeveloper(null, "Jane", "Smith", "login2", "password2", "Eclipse", Experience.MID);
            session.save(javaMid1);

            JavaDeveloper javaMid2 = new JavaDeveloper(null, "Bob", "Brown", "login3", "password3", "VS Code", Experience.MID);
            session.save(javaMid2);

            CSharpDeveloper cSharpJunior1 = new CSharpDeveloper(null, "Mark", "Davis", "login4", "password4", "Visual Studio", Experience.JUNIOR);
            session.save(cSharpJunior1);

            CSharpDeveloper cSharpMid1 = new CSharpDeveloper(null, "Emma", "Taylor", "login5", "password5", "Visual Studio Code", Experience.MID);
            session.save(cSharpMid1);

            CppDeveloper cppMid1 = new CppDeveloper(null, "David", "Lee", "login6", "password6", "CLion", Experience.MID);
            session.save(cppMid1);

            FrontEndDeveloper frontEndMid1 = new FrontEndDeveloper(null, "Olivia", "White", "login7", "password7", "Sublime Text", Experience.MID);
            session.save(frontEndMid1);

            DatabaseAnalyst dbAnalystMid1 = new DatabaseAnalyst(null, "Liam", "Harris", "login8", "password8", "MySQL Workbench", Experience.MID);
            session.save(dbAnalystMid1);

            PythonDeveloper pythonDeveloper1 = new PythonDeveloper(null, "James", "Bond", "login9", "password9", "PyCharm", Experience.SENIOR);
            session.save(pythonDeveloper1);

            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }
    }

    public static Employee generatePaySlipForEmployee(String login) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            
            Query<JavaDeveloper> javaQuery = session.createQuery("FROM JavaDeveloper WHERE login = :login", JavaDeveloper.class);
            javaQuery.setParameter("login", login);
            JavaDeveloper javaDeveloper = javaQuery.uniqueResult();
            if (javaDeveloper != null) {
                return javaDeveloper;
            }
            
            Query<CppDeveloper> cppQuery = session.createQuery("FROM CppDeveloper WHERE login = :login", CppDeveloper.class);
            cppQuery.setParameter("login", login);
            CppDeveloper cppDeveloper = cppQuery.uniqueResult();
            if (cppDeveloper != null) {
                return cppDeveloper;
            }
            
            Query<CSharpDeveloper> csharpQuery = session.createQuery("FROM CSharpDeveloper WHERE login = :login", CSharpDeveloper.class);
            csharpQuery.setParameter("login", login);
            CSharpDeveloper csharpDeveloper = csharpQuery.uniqueResult();
            if (csharpDeveloper != null) {
                return csharpDeveloper;
            }
            
            Query<DatabaseAnalyst> dbQuery = session.createQuery("FROM DatabaseAnalyst WHERE login = :login", DatabaseAnalyst.class);
            dbQuery.setParameter("login", login);
            DatabaseAnalyst dbAnalyst = dbQuery.uniqueResult();
            if (dbAnalyst != null) {
                return dbAnalyst;
            }
            
            Query<FrontEndDeveloper> frontEndQuery = session.createQuery("FROM FrontEndDeveloper WHERE login = :login", FrontEndDeveloper.class);
            frontEndQuery.setParameter("login", login);
            FrontEndDeveloper frontEndDeveloper = frontEndQuery.uniqueResult();
            if (frontEndDeveloper != null) {
                return frontEndDeveloper;
            }
            
            Query<PythonDeveloper> pythonQuery = session.createQuery("FROM PythonDeveloper WHERE login = :login", PythonDeveloper.class);
            pythonQuery.setParameter("login", login);
            PythonDeveloper pythonDeveloper = pythonQuery.uniqueResult();
            if (pythonDeveloper != null) {
                return pythonDeveloper;
            }

            transaction.commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }

        return null;
    }

    public static boolean checkSignIn(String username, String password) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            Query<Employee> query = session.createQuery("FROM Employee");
            List<Employee> resultList = query.getResultList();
            Optional<Employee> user = resultList.stream().filter(e -> e.getLogin().equals(username) && e.getPassword().equals(password)).findFirst();
            transaction.commit();

            if (user.isEmpty()) {
                return false;
            } else {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            sessionFactory.close();
        }
    }

    public static boolean checkLoginDuplicates(String login) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            
            Query<JavaDeveloper> javaQuery = session.createQuery("FROM JavaDeveloper WHERE login = :login", JavaDeveloper.class);
            javaQuery.setParameter("login", login);
            JavaDeveloper javaDeveloper = javaQuery.uniqueResult();
            if (javaDeveloper != null) {
                return false;
            }
            
            Query<CppDeveloper> cppQuery = session.createQuery("FROM CppDeveloper WHERE login = :login", CppDeveloper.class);
            cppQuery.setParameter("login", login);
            CppDeveloper cppDeveloper = cppQuery.uniqueResult();
            if (cppDeveloper != null) {
                return false;
            }
            
            Query<CSharpDeveloper> csharpQuery = session.createQuery("FROM CSharpDeveloper WHERE login = :login", CSharpDeveloper.class);
            csharpQuery.setParameter("login", login);
            CSharpDeveloper csharpDeveloper = csharpQuery.uniqueResult();
            if (csharpDeveloper != null) {
                return false;
            }
            
            Query<DatabaseAnalyst> dbQuery = session.createQuery("FROM DatabaseAnalyst WHERE login = :login", DatabaseAnalyst.class);
            dbQuery.setParameter("login", login);
            DatabaseAnalyst dbAnalyst = dbQuery.uniqueResult();
            if (dbAnalyst != null) {
                return false;
            }
            
            Query<FrontEndDeveloper> frontEndQuery = session.createQuery("FROM FrontEndDeveloper WHERE login = :login", FrontEndDeveloper.class);
            frontEndQuery.setParameter("login", login);
            FrontEndDeveloper frontEndDeveloper = frontEndQuery.uniqueResult();
            if (frontEndDeveloper != null) {
                return false;
            }
            
            Query<PythonDeveloper> pythonQuery = session.createQuery("FROM PythonDeveloper WHERE login = :login", PythonDeveloper.class);
            pythonQuery.setParameter("login", login);
            PythonDeveloper pythonDeveloper = pythonQuery.uniqueResult();
            if (pythonDeveloper != null) {
                return false;
            }

            transaction.commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }

        return true;
    }
}
```

**Description:**
- The `PaySlipGeneratorService` class handles the business logic related to generating pay slips for employees and managing the database.
- It includes methods for initializing test data in the database, generating pay slips based on employee data, validating login credentials, and checking the uniqueness of employee logins.

**Methods:**
1. `setDataInDb()`:
   - A static method that initializes a connection to the database, sets up test data for various types of employees, and saves it to the database. Test data includes information such as name, surname, login, password, work tool, and professional experience.
   - Uses objects of employee classes (e.g., `JavaDeveloper`, `CppDeveloper`) to create test data.
   - After completing the operations, it closes the Hibernate session and session factory.

2. `generatePaySlipForEmployee(String login)`:
   - A static method that generates a pay slip for an employee based on the provided login. It retrieves the employee data from the database based on the login.
   - Uses Hibernate queries to fetch the employee data based on the login.
   - Returns an object of the `Employee` class, which is the superclass for all types of employees.

3. `checkSignIn(String username, String password)`:
   - A static method that checks if a user can log in with the given username and password. It verifies if the provided login credentials match the data in the database.
   - Retrieves all users from the database and checks if the provided username and password match any user.
   - Returns `true` if the login is successful; otherwise, returns `false`.

4. `checkLoginDuplicates(String login)`:
   - A static method that checks if the given login already exists in the database. It ensures the uniqueness of the login to prevent duplicates.
   - Uses Hibernate queries to check if there is an existing user with the given login for various types of employees.
   - Returns `true` if the login is unique; otherwise, returns `false`.

## 7. Classes / Entities and Enums

### .java files

#### 7.1.1 `Employee`

```java
package com.example.payslipgenerator.employees;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "employees")
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @Column(name = "name")
    private String name;
    @Column(name = "surname")
    private String surname;
    @Column(name = "login")
    private String login;
    @Column(name = "password")
    private String password;

    public Employee(Long id, String name, String surname, String login, String password) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.login = login;
        this.password = password;
    }

    public Employee() {

    }

    public abstract String[] generatePaySlip();
}
```

**Description:**
- **@Entity:** Marks the class as an entity, enabling mapping of its fields to database columns.
- **@Data:** A Lombok annotation that generates `toString()`, `equals()`, `hashCode()`, getters, and setters for the class fields.
- **@Table(name = "employees"):** Specifies the name of the database table to which this entity is mapped.
- **@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS):** Specifies the inheritance strategy where each subclass has its own table in the database.
- **@Id:** Marks the field as the identifier (primary key) of the entity.
- **@GeneratedValue(strategy = GenerationType.SEQUENCE):** Specifies that the identifier value will be automatically generated using a sequence.
- **@Column(name = "name"), @Column(name = "surname"), @Column(name = "login"), @Column(name = "password"):** Specify the column names in the database to which the corresponding class fields are mapped.
- **abstract class Employee:** An abstract class serving as the superclass for all types of employees.
- **Constructor `Employee(Long id, String name, String surname, String login, String password)`:** Initializes an `Employee` object with the provided values.
- **Empty Constructor `Employee()`:** Default no-argument constructor.
- **public abstract String[] generatePaySlip():** An abstract method to be implemented in subclasses. It generates a pay slip for a given employee.

#### 7.1.2 `Experience` (enum)

```java
package com.example.payslipgenerator.employees;

public enum Experience {
    JUNIOR,
    MID,
    SENIOR
}
```

**Description:**
- **enum Experience:** An enumeration representing the level of experience of an employee. It has three values: JUNIOR, MID, and SENIOR, describing different levels of experience in the context of generating pay slips. Depending on whether the employee is a beginner, mid-level, or experienced, their level of experience is marked as JUNIOR, MID, or SENIOR.

#### 7.1.3 `PythonDeveloper`

```java
package com.example.payslipgenerator.employees;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "python_developers")
public class PythonDeveloper extends Employee implements DataToDbHandler {
    private String toolName;

    @Enumerated(EnumType.STRING)
    private Experience experience;
    private double baseSalary = 6500;

    public PythonDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience) {
        super(id, name, surname, login, password);
        this.toolName = toolName;
        this.experience = experience;
        switch (experience) {
            case JUNIOR:
                this.baseSalary = baseSalary;
                break;
            case MID:
                this.baseSalary = baseSalary * 1.5;
                break;
            case SENIOR:
                this.baseSalary = baseSalary * 2;
                break;
            default:
                this.baseSalary = baseSalary;
        }
    }

    public PythonDeveloper() {
        super(null, null, null, null, null);
    }

    @Override
    public String[] generatePaySlip() {
        String[] paySlip = new String[5];
        paySlip[0] = getName();
        paySlip[1] = getSurname();
        paySlip[2] = "Python Developer";
        paySlip[3] = String.valueOf(getExperience());
        paySlip[4] = String.valueOf(getBaseSalary());
        return paySlip;
    }

    @Override
    public void addDataToDb(String name, String surname, String login, String password, String toolName, String experience) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            PythonDeveloper pythonDeveloper = new PythonDeveloper(null, name, surname, login, password, toolName, Experience.valueOf(experience.toUpperCase()));
            session.save(pythonDeveloper);

            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }
    }

}
```

**Description:**
- **class PythonDeveloper extends Employee implements DataToDbHandler:** Represents a Python developer. Extends the `Employee` class and implements the `DataToDbHandler` interface, which means it must implement the `addDataToDb` method from `DataToDbHandler`.
- **@Entity:** Annotation indicating that this class is a JPA entity, meaning objects of this class will be mapped to records in a database table.
- **@Table(name = "python_developers"):** Specifies the name of the database table to which objects of this class will be mapped.
- **@Getter and @Setter:** Lombok annotations generating getters and setters for the class fields.
- **private String toolName:** Field storing the name of the tool used by the Python developer.
- **@Enumerated(EnumType.STRING) private Experience experience;:** Field representing the experience level of the Python developer, which is an `Experience` enumeration type.
- **private double baseSalary = 6500;** Field storing the base salary of the Python developer, set at 6500.
- **Constructors:**
  - **public PythonDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience):** Initializes a `PythonDeveloper` object with details such as id, name, surname, login, password, tool name, and experience level. Salary is calculated based on the base salary and multiplier.
  - **public PythonDeveloper():** Default constructor.
- **Method `generatePaySlip()`:** Implements the method from `Employee`. Returns an array containing details of the Python developer's pay slip, such as name, surname, position, experience level, and salary.
- **Method `addDataToDb()`:** Implements the method from `DataToDbHandler`, which adds data of a Python developer to the database. Creates a new `PythonDeveloper` object with the provided data and saves it to the database.

#### 7.1.4 `JavaDeveloper`

```java
package com.example.payslipgenerator.employees;

import lombok.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "java_developers")
public class JavaDeveloper extends Employee implements DataToDbHandler {
    private String toolName;

    @Enumerated(EnumType.STRING)
    private Experience experience;
    private double baseSalary = 6000;

    public JavaDeveloper(Long id, String name, String surname, String login, String password, String toolname, Experience experience) {
        super(id, name, surname, login, password);
        this.toolName = toolName;
        this.experience = experience;
        switch (this.experience) {
            case JUNIOR:
                this.baseSalary = baseSalary;
                break;
            case MID:
                this.baseSalary = baseSalary * 1.5;
                break;
            case SENIOR:
                this.baseSalary = baseSalary * 2;
                break;
            default:
                this.baseSalary = baseSalary;
        }
    }

    public JavaDeveloper() {
        super(null, null, null, null, null);
    }


    @Override
    public String[] generatePaySlip() {
        String[] paySlip = new String[5];
        paySlip[0] = getName();
        paySlip[1] = getSurname();
        paySlip[2] = "Java Developer";
        paySlip[3] = String.valueOf(getExperience());
        paySlip[4] = String.valueOf(getBaseSalary());
        return paySlip;
    }

    @Override
    public void addDataToDb(String name, String surname, String login, String password, String toolName, String experience) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            JavaDeveloper javaDeveloper = new JavaDeveloper(null, name, surname, login, password, toolName, Experience.valueOf(experience.toUpperCase()));
            session.save(javaDeveloper);

            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }
    }
}
```

**Description:**
- **class JavaDeveloper extends Employee implements DataToDbHandler:** Represents a Java developer. Extends the `Employee` class and implements the `DataToDbHandler` interface, requiring the implementation of the `addDataToDb` method.
- **@Entity:** Annotation indicating that this class is a JPA entity, mapping objects of this class to database table records.
- **@Table(name = "java_developers"):** Specifies the name of the database table for this class.
- **@Getter and @Setter:** Lombok annotations generating getters and setters.
- **private String toolName:** Field storing the tool name used by the Java developer.
- **@Enumerated(EnumType.STRING) private Experience experience;:** Field representing the experience level of the Java developer, using the `Experience` enum.
- **private double baseSalary = 6000;** Base salary of the Java developer, set at 6000.
- **Constructors:**
  - **public JavaDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience):** Initializes a `JavaDeveloper` object with id, name, surname, login, password, tool name, and experience. Salary is computed based on the base salary and multiplier.
  - **public JavaDeveloper():** Default constructor.
- **Method `generatePaySlip()`:** Implements the method from `Employee`. Returns an array with pay slip details including name, surname, position, experience level, and salary.
- **Method `addDataToDb()`:** Implements `DataToDbHandler` method for adding a Java developer’s data to the database. Creates and saves a new `JavaDeveloper` object.

#### 7.1.5 `FrontEndDeveloper`

```java
package com.example.payslipgenerator.employees;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "frontend_developers")
public class FrontEndDeveloper extends Employee implements DataToDbHandler {
    private String toolName;

    @Enumerated(EnumType.STRING)
    private Experience experience;
    private double baseSalary = 3500;

    public FrontEndDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience) {
        super(id, name, surname, login, password);
        this.toolName = toolName;
        this.experience = experience;
        switch (experience) {
            case JUNIOR:
                this.baseSalary = baseSalary;
                break;
            case MID:
                this.baseSalary = baseSalary * 1.5;
                break;
            case SENIOR:
                this.baseSalary = baseSalary * 2;
                break;
            default:
                this.baseSalary = baseSalary;
        }
    }

    public FrontEndDeveloper() {
        super(null, null, null, null, null);
    }

    @Override
    public String[] generatePaySlip() {
        String[] paySlip = new String[5];
        paySlip[0] = getName();
        paySlip[1] = getSurname();
        paySlip[2] = "Front-end Developer";
        paySlip[3] = String.valueOf(getExperience());
        paySlip[4] = String.valueOf(getBaseSalary());
        return paySlip;
    }

    @Override
    public void addDataToDb(String name, String surname, String login, String password, String toolName, String experience) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            FrontEndDeveloper frontEndDeveloper = new FrontEndDeveloper(null, name, surname, login, password, toolName, Experience.valueOf(experience.toUpperCase()));
            session.save(frontEndDeveloper);

            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }
    }
}
```

**Description:**
- **class FrontEndDeveloper extends Employee implements DataToDbHandler:** Represents a Front-end developer. Extends `Employee` and implements `DataToDbHandler`, thus requiring the `addDataToDb` method implementation.
- **@Entity:** Marks this class as a JPA entity.
- **@Table(name = "frontend_developers"):** Specifies the name of the database table for front-end developers.
- **@Getter and @Setter:** Lombok annotations for automatic getters and setters.
- **private String toolName:** Field for the tool used by the front-end developer.
- **@Enumerated(EnumType.STRING) private Experience experience;:** Represents the experience level of the front-end developer.
- **private double baseSalary = 3500;** Base salary of the front-end developer, set at 3500.
- **Constructors:**
  - **public FrontEndDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience):** Initializes a `FrontEndDeveloper` with id, name, surname, login, password, tool name, and experience level.
  - **public FrontEndDeveloper():** Default constructor.
- **Method `generatePaySlip()`:** Implements `Employee`'s method. Returns an array with the front-end developer's pay slip details.
- **Method `addDataToDb()`:** Implements `DataToDbHandler`'s method for adding a front-end developer’s data to the database.

#### 7.1.6 `DatabaseAnalyst`

```java
package com.example.payslipgenerator.employees;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "database_analysts")
public class DatabaseAnalyst extends Employee implements DataToDbHandler {
    private String toolName;

    @Enumerated(EnumType.STRING)
    private Experience experience;
    private double baseSalary = 5000;

    public DatabaseAnalyst(Long id, String name, String surname, String login, String password, String toolName, Experience experience) {
        super(id, name, surname, login, password);
        this.toolName = toolName;
        this.experience = experience;
        switch (experience) {
            case JUNIOR:
                this.baseSalary = baseSalary;
                break;
            case MID:
                this.baseSalary = baseSalary * 1.5;
                break;
            case SENIOR:
                this.baseSalary = baseSalary * 2;
                break;
            default:
                this.baseSalary = baseSalary;
        }
    }

    public DatabaseAnalyst() {
        super(null, null, null, null, null);
    }

    @Override
    public String[] generatePaySlip() {
        String[] paySlip = new String[5];
        paySlip[0] = getName();
        paySlip[1] = getSurname();
        paySlip[2] = "Database Analyst";
        paySlip[3] = String.valueOf(getExperience());
        paySlip[4] = String.valueOf(getBaseSalary());
        return paySlip;
    }

    @Override
    public void addDataToDb(String name, String surname, String login, String password, String toolName, String experience) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            DatabaseAnalyst databaseAnalyst = new DatabaseAnalyst(null, name, surname, login, password, toolName, Experience.valueOf(experience.toUpperCase()));
            session.save(databaseAnalyst);

            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }
    }
}
```

**Description:**
- **class DatabaseAnalyst extends Employee implements DataToDbHandler:** Represents a Database Analyst. Extends `Employee` and implements `DataToDbHandler`.
- **@Entity:** Annotation for JPA entity mapping.
- **@Table(name = "database_analysts"):** Specifies the name of the database table for database analysts.
- **@Getter and @Setter:** Lombok annotations for getters and setters.
- **private String toolName:** Field for the tool used by the database analyst.
- **@Enumerated(EnumType.STRING) private Experience experience;:** Experience level of the database analyst.
- **private double baseSalary = 5000;** Base salary set at 5000.
- **Constructors:**
  - **public DatabaseAnalyst(Long id, String name, String surname, String login, String password, String toolName, Experience experience):** Initializes `DatabaseAnalyst` with provided data.
  - **public DatabaseAnalyst():** Default constructor.
- **Method `generatePaySlip()`:** Implements the method from `Employee`. Returns pay slip details.
- **Method `addDataToDb()`:** Implements `DataToDbHandler`'s method for adding data of a database analyst to the database.

#### 7.1.7 `CSharpDeveloper`

```java
package com.example.payslipgenerator.employees;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "csharp_developers")
public class CSharpDeveloper extends Employee implements DataToDbHandler {
    private String toolName;

    @Enumerated(EnumType.STRING)
    private Experience experience;
    private double baseSalary = 4500;

    public CSharpDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience) {
        super(id, name, surname, login, password);
        this.toolName = toolName;
        this.experience = experience;
        switch (experience) {
            case JUNIOR:
                this.baseSalary = baseSalary;
                break;
            case MID:
                this.baseSalary = baseSalary * 1.5;
                break;
            case SENIOR:
                this.baseSalary = baseSalary * 2;
                break;
            default:
                this.baseSalary = baseSalary;
        }
    }

    public CSharpDeveloper() {
        super(null, null, null, null, null);
    }

    @Override
    public String[] generatePaySlip() {
        String[] paySlip = new String[5];
        paySlip[0] = getName();
        paySlip[1] = getSurname();
        paySlip[2] = "C# Developer";
        paySlip[3] = String.valueOf(getExperience());
        paySlip[4] = String.valueOf(getBaseSalary());
        return paySlip;
    }

    @Override
    public void addDataToDb(String name, String surname, String login, String password, String toolName, String experience) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            CSharpDeveloper cSharpDeveloper = new CSharpDeveloper(null, name, surname, login, password, toolName, Experience.valueOf(experience.toUpperCase()));
            session.save(cSharpDeveloper);

            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }
    }
}
```

**Description:**
- **class CSharpDeveloper extends Employee implements DataToDbHandler:** Represents a C# developer. Extends `Employee` and implements `DataToDbHandler`.
- **@Entity:** Marks this class as a JPA entity.
- **@Table(name = "csharp_developers"):** Specifies the database table name for C# developers.
- **@Getter and @Setter:** Lombok annotations for automatic getters and setters.
- **private String toolName:** Field for the tool used by the C# developer.
- **@Enumerated(EnumType.STRING) private Experience experience;:** Experience level of the C# developer.
- **private double baseSalary = 4500;** Base salary set at 4500.
- **Constructors:**
  - **public CSharpDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience):** Initializes `CSharpDeveloper` with the given parameters.
  - **public CSharpDeveloper():** Default constructor.
- **Method `generatePaySlip()`:** Returns the C# developer's pay slip details.
- **Method `addDataToDb()`:** Adds C# developer data to the database using `DataToDbHandler`.

#### 7.1.8 `CppDeveloper`

```java
package com.example.payslipgenerator.employees;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "cpp_developers")
public class CppDeveloper extends Employee implements DataToDbHandler {
    private String toolName;

    @Enumerated(EnumType.STRING)
    private Experience experience;
    private double baseSalary = 4000;

    public CppDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience) {
        super(id, name, surname, login, password);
        this.toolName = toolName;
        this.experience = experience;
        switch (experience) {
            case JUNIOR:
                this.baseSalary = baseSalary;
                break;
            case MID:
                this.baseSalary = baseSalary * 1.5;
                break;
            case SENIOR:
                this.baseSalary = baseSalary * 2;
                break;
            default:
                this.baseSalary = baseSalary;
        }
    }

    public CppDeveloper() {
        super(null, null, null, null, null);
    }

    @Override
    public String[] generatePaySlip() {
        String[] paySlip = new String[5];
        paySlip[0] = getName();
        paySlip[1] = getSurname();
        paySlip[2] = "C++ Developer";
        paySlip[3] = String.valueOf(getExperience());
        paySlip[4] = String.valueOf(getBaseSalary());
        return paySlip;
    }

    @Override
    public void addDataToDb(String name, String surname, String login, String password, String toolName, String experience) {
        SessionFactory sessionFactory = new Configuration()
                .configure()
                .buildSessionFactory();
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();

            CppDeveloper cppDeveloper = new CppDeveloper(null, name, surname, login, password, toolName, Experience.valueOf(experience.toUpperCase()));
            session.save(cppDeveloper);

            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sessionFactory.close();
        }
    }
}
```

**Description:**
- **class CppDeveloper extends Employee implements DataToDbHandler:** Represents a C++ developer. Extends `Employee` and implements `DataToDbHandler`.
- **@Entity:** Annotation indicating this class is a JPA entity.
- **@Table(name = "cpp_developers"):** Database table name for C++ developers.
- **@Getter and @Setter:** Lombok annotations for automatic getters and setters.
- **private String toolName:** Tool used by the C++ developer.
- **@Enumerated(EnumType.STRING) private Experience experience;:** Represents the experience level of the C++ developer.
- **private double baseSalary = 4000;** Base salary set at 4000.
- **Constructors:**
  - **public CppDeveloper(Long id, String name, String surname, String login, String password, String toolName, Experience experience):** Initializes `CppDeveloper` with the provided details.
  - **public CppDeveloper():** Default constructor.
- **Method `generatePaySlip()`:** Returns C++ developer's pay slip details.
- **Method `addDataToDb()`:** Adds C++ developer data to the database.

## 8. DB

### 8.1 .java files

#### 8.1.1 `DataToDbHandler` (interface)

```java
package com.example.payslipgenerator.employees;

public interface DataToDbHandler {

    void addDataToDb(String name, String surname, String login, String password, String toolName, String experience);

}
```

**Description:**
- **interface DataToDbHandler:** An interface declaring methods that must be implemented by classes that implement this interface.
- **void addDataToDb(String name, String surname, String login, String password, String toolName, String experience):** Method responsible for adding data to the database. Parameters include employee information such as name, surname, login, password, tool (e.g., code editor), and experience. Implementations of this interface will have their own logic for adding data to the database depending on the type of employee.

## 9. The app class

### 9.1 .java files

#### 9.1.1 `PaySlipGeneratorApplication`

```java
package com.example.payslipgenerator;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PaySlipGeneratorApplication {

    public static void main(String[] args) {
        SpringApplication.run(PaySlipGeneratorApplication.class, args);
    }

}
```

**Description:**
- The `PaySlipGeneratorApplication` class is the main class of the application.
- Annotated with `@SpringBootApplication`, which combines multiple annotations including `@Configuration`, `@EnableAutoConfiguration`, and `@ComponentScan`, enabling automatic configuration of the Spring Boot application.
- The `main` method is the entry point of the application. It starts the Spring Boot application, initializing the application context and running the server.

**Annotations:**
- `@SpringBootApplication`: Indicates that the class is a Spring Boot configuration class.

**Methods:**
1. `main`: The main method of the application that starts the Spring Boot application.

**Functions:**
- The `main` method initializes the Spring Boot application, starting the application context and the server.

## 10. Further development

The project can be further developed. On the frontend, the styles of individual pages can be refined, more elements might be added to the .jsp files, and more attractive solutions could be implemented in the .css files. The employee profile could also be made more user-friendly by adding options for account modification. Additionally, features such as adding new types of employees or calculating the sum or average of a particular employee's salaries could be incorporated. Finally, an interaction feature for employees may be added. To summarize, the project has potential for future development being now a basic Spring application.
