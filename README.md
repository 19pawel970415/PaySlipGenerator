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

## Functionalities

### 3.1 Frontend

#### 3.1.1 `index.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pay Slip Generator</title>
    <style>
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
    </style>
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
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Pay Slip Generator</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Centers the content on the screen.
  - `.title`: Styling for the page title.
  - `.btn`: Styling for buttons.
  - `.btn:hover`: Button styling on hover.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<div class="container">`: Container for the page content.
- `<h1 class="title">Pay Slip Generator</h1>`: Page title.
- `<button class="btn" onclick="location.href='signin'">Sign in</button>`: Button to navigate to the sign-in page.
- `<button class="btn" onclick="location.href='signup'">Sign up</button>`: Button to navigate to the sign-up page.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.2 `loggedIn.jsp`

```jsp
<%@ page import="com.example.payslipgenerator.service.PaySlipGeneratorService" %>
<%@ page import="com.example.payslipgenerator.employees.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome back</title>
    <style>
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
    </style>
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
- `<%@ page import="com.example.payslipgenerator.service.PaySlipGeneratorService" %>`: Imports `PaySlipGeneratorService` class.
- `<%@ page import="com.example.payslipgenerator.employees.Employee" %>`: Imports `Employee` class.
- `<a href="index" class="logout-icon">&#128274;</a>`: Logout icon redirecting to the homepage.
- `<h1>Welcome back <%= username %></h1>`: Greets the user by username.
- `<% ... %>`: Java code within JSP, including methods to generate and display the pay slip.
- `String username = request.getParameter("username");`: Retrieves the `username` parameter from the HTTP request.
- `Employee employee = PaySlipGeneratorService.generatePaySlipForEmployee(username);`: Calls service method to get `Employee` object.
- `String[] paySlipData = employee.generatePaySlip();`: Generates pay slip data.
- `<%= paySlipData[0] %>`: Displays pay slip data in the table.
- `<div class="error-message">`: Displays error message if the user is not found.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.3 `notSignedIn.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
    <style>
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

    </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
    <h1>Login Failed</h1>
    <p>Incorrect username or password. Please try again.</p>
    <a href="signin" class="try-again-btn">Try Again</a>
</div>
</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Login Failed</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling.
  - `h1`: Styling for the header.
  - `p`: Styling for the paragraph.
  - `.try-again-btn`: Styling for the "Try Again" button.
  - `.home-icon`: Styling for the home icon.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for page content.
- `<h1>Login Failed</h1>`: Header for failed login.
- `<p>Incorrect username or password. Please try again.</p>`: Error message.
- `<a href="signin" class="try-again-btn">Try Again</a>`: "Try Again" button to navigate back to the sign-in page.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.4 `register_cpp.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register as C++ Developer</title>
  <style>
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

  </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
  <h1>Registration Page for C++ Developer</h1>
  <div class="form-container">
    <form action="register_cpp" method="post" onsubmit="return validatePassword()">
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

<script>
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
</script>

</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Register as C++ Developer</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling.
  - `h1`: Styling for the header.
  - `form`: Styling for the form.
  - `input`, `select`, `button`: Styling for form elements.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<div class="container">`: Container for page content.
- `<h1>Register as C++ Developer</h1>`: Header for the C++ developer registration form.
- `<form>`: Registration form for C++ developers.
  - `<label>` and `<input>`: Input fields for user details.
  - `<button>`: Submit button.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.5 `register_csharp.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as C# Developer</title>
    <style>
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

    </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
    <h1>Registration Page for C# Developer</h1>
    <div class="form-container">
        <form action="register_csharp" method="post" onsubmit="return validatePassword()">
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

<script>
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
</script>

</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Register as C# Developer</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling.
  - `h1`: Styling for the header.
  - `.form-container`: Styling for the form container.
  - `input[type="text"], input[type="password"], select`: Styling for text and password fields, and select elements.
  - `input[type="submit"]`: Styling for submit button.
  - `.home-icon`: Styling for the home icon.
  - `.password-error`: Styling for the password confirmation error field.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for page content.
- `<h1>Registration Page for C# Developer</h1>`: Header for the C# developer registration form.
- `<form>`: Registration form for C# developers.
  - `onsubmit="return validatePassword()"`: Password validation function on form submission.
  - `onkeyup="validatePassword()"`: Password validation function on keyup event.
  - `<script>`: Section containing JavaScript for password validation.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.6 `register_database.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register as Database Analyst</title>
  <style>
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

  </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
  <h1>Registration Page for Database Analyst</h1>
  <div class="form-container">
    <form action="/register_database" method="post" onsubmit="return validatePassword()">
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

<script>
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
</script>

</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Register as Database Analyst</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling.
  - `h1`: Styling for the header.
  - `.form-container`: Styling for the form container.
  - `input[type="text"], input[type="password"], select`: Styling for text and password fields, and select elements.
  - `input[type="submit"]`: Styling for submit button.
  - `.home-icon`: Styling for the home icon.
  - `.password-error`: Styling for the password confirmation error field.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for page content.
- `<h1>Registration Page for Database Analyst</h1>`: Header for the Database Analyst registration form.
- `<form>`: Registration form for Database Analysts.
  - `onsubmit="return validatePassword()"`: Password validation function on form submission.
  - `onkeyup="validatePassword()"`: Password validation function on keyup event.
  - `<script>`: Section containing JavaScript for password validation.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.7 `register_frontend.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as Front-end Developer</title>
    <style>
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

    </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
    <h1>Registration Page for Front-end Developer</h1>
    <div class="form-container">
        <form action="/register_frontend" method="post" onsubmit="return validatePassword()">
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

<script>
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
</script>

</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Register as Front-end Developer</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling.
  - `h1`: Styling for the header.
  - `.form-container`: Styling for the form container.
  - `input[type="text"], input[type="password"], select`: Styling for text and password fields, and select elements.
  - `input[type="submit"]`: Styling for submit button.
  - `.home-icon`: Styling for the home icon.
  - `.password-error`: Styling for the password confirmation error field.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for page content.
- `<h1>Registration Page for Front-end Developer</h1>`: Header for the Front-end developer registration form.
- `<form>`: Registration form for Front-end developers.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.8 `register_java.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register as Java Developer</title>
  <style>
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

  </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
  <h1>Registration Page for Python Developer</h1>
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

<script>
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
</script>

</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Register as Java Developer</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling.
  - `h1`: Styling for the header.
  - `.form-container`: Styling for the form container.
  - `input[type="text"], input[type="password"], select`: Styling for text and password fields, and select elements.
  - `input[type="submit"]`: Styling for submit button.
  - `.home-icon`: Styling for the home icon.
  - `.password-error`: Styling for the password confirmation error field.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for page content.
- `<h1>Registration Page for Java Developer</h1>`: Header for the Java developer registration form.
- `<form>`: Registration form for Java developers.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.9 `register_python.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register as Python Developer</title>
  <style>
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

  </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
  <h1>Registration Page for Python Developer</h1>
  <div class="form-container">
    <form action="/register_python" method="post" onsubmit="return validatePassword()">
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

<script>
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
</script>

</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Register as Python Developer</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling.
  - `h1`: Styling for the header.
  - `.form-container`: Styling for the form container.
  - `input[type="text"], input[type="password"], select`: Styling for text and password fields, and select elements.
  - `input[type="submit"]`: Styling for submit button.
  - `.home-icon`: Styling for the home icon.
  - `.password-error`: Styling for the password confirmation error field.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for page content.
- `<h1>Registration Page for Python Developer</h1>`: Header for the Python developer registration form.
- `<form>`: Registration form for Python developers.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.10 `registration_failure.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Failed</title>
    <style>
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

    </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
<div class="container">
    <h1>Registration Failed</h1>
    <p>Login already used. Please try again with a different login.</p>
    <a href="signup" class="try-again-btn">Try Again</a>
</div>
</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Registration Failed</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling for the failure message.
  - `h1`: Styling for the header.
  - `p`: Styling for the paragraph.
  - `.try-again-btn`: Styling for the "Try Again" button.
  - `.home-icon`: Styling for the home icon.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for failure message.
- `<h1>Registration Failed</h1>`: Header indicating registration failure.
- `<p>Username already taken. Please try again with a different username.</p>`: Error message.
- `<a href="signup" class="try-again-btn">Try Again</a>`: "Try Again" button to navigate back to the sign-up page.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.11 `registration_success.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
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

        .home-link:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
<div class="container">
    <p>Now you can <a href="signin" class="home-link">sign in</a>!</p>
</div>
</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Registration Success</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Container styling for the success message.
  - `p`: Styling for the paragraph.
  - `.home-link`: Styling for the link to the login page.
  - `.home-link:hover`: Styling for the link on hover.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<div class="container">`: Container for success message.
- `<p>You can now <a href="signin" class="home-link">log in</a>!</p>`: Message indicating successful registration and providing a link to log in.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.12 `signin.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
    <style>
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
    </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
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
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Sign In</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Styling for the container of the login form.
  - `h1`: Styling for the header greeting the user.
  - `.form-container`: Styling for the form container.
  - `input[type="text"], input[type="password"]`: Styling for text and password fields.
  - `input[type="submit"]`: Styling for submit button.
  - `.home-icon`: Styling for the home icon.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for the login form.
- `<h1>Welcome Back!</h1>`: Header greeting the user.
- `<form action="/login" method="post">`: Login form.
  - `<input type="text" name="username" placeholder="Username" required><br>`: Text field for username.
  - `<input type="password" name="password" placeholder="Password" required><br>`: Password field.
  - `<input type="submit" value="Log In">`: Submit button.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

#### 3.1.13 `signup.jsp`

```jsp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
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

    </style>
</head>
<body>
<a href="index" class="home-icon">&#127968;</a>
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

<script>
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
</script>

</body>
</html>
```

**Description:**
- `<!DOCTYPE html>`: Declaration of HTML document type.
- `<html lang="en">`: Opening HTML tag with language specification.
- `<head>`: Section containing metadata and external resource links.
- `<meta charset="UTF-8">`: Specifies character encoding.
- `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: Viewport settings for responsive design.
- `<title>Register</title>`: Page title.
- `<style>`: Section containing CSS styles.
  - `body`: Styling for the body element.
  - `.container`: Styling for the container of the registration form.
  - `h1`: Styling for the header greeting the user.
  - `.form-container`: Styling for the form container.
  - `input[type="text"], input[type="password"]`: Styling for text and password fields.
  - `input[type="submit"], button`: Styling for submit button and other buttons.
  - `.home-icon`: Styling for the home icon.
- `</style>`: End of style section.
- `</head>`: End of head section.
- `<body>`: Section containing the page content.
- `<a href="index" class="home-icon">&#127968;</a>`: Home icon redirecting to the homepage.
- `<div class="container">`: Container for the registration form.
- `<h1>Welcome to Pay Slip Generator!</h1>`: Welcome header.
- `<h1>Choose your position</h1>`: Header for selecting position.
- `<form id="registrationForm">`: Registration form.
  - `<select id="position" onchange="redirect()">`: Dropdown menu for selecting position.
  - `<option value="" disabled selected>Select Position</option>`: Default option.
  - `<option value="java_developer">Java Developer</option>`: Option for Java Developer.
  - `<option value="python_developer">Python Developer</option>`: Option for Python Developer.
  - `<option value="csharp_developer">C# Developer</option>`: Option for C# Developer.
  - `<option value="cpp_developer">C++ Developer</option>`: Option for C++ Developer.
  - `<option value="frontend_developer">Front-end Developer</option>`: Option for Front-end Developer.
  - `<option value="database_analyst">Database Analyst</option>`: Option for Database Analyst.
  - `<button type="button" onclick="choosePosition()">OK</button>`: Button to confirm selection.
- `</form>`: End of form.
- `</div>`: End of container.
- `</body>`: End of body section.
- `</html>`: End of HTML document.

### 3.2 Configuration Files

#### 3.2.1 `hibernate.cfg.xml`

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
- `<property name="hibernate.connection.password"></property>`: Specifies the password for logging into the database. This field is empty, indicating no password or that the password is set differently.
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

#### 3.2.2 `application.properties`

```xml
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
```

**Description:**
- `spring.mvc.view.prefix=/WEB-INF/views/`: Sets the prefix path for views in Spring MVC. This means that Spring MVC will look for view files in the `/WEB-INF/views/` directory. This prefix is added before the view name.
- `spring.mvc.view.suffix=.jsp`: Sets the suffix for view file names in Spring MVC. In this case, Spring MVC expects view files to have a `.jsp` extension. For example, if a controller returns the name `home`, Spring MVC will automatically add the prefix and suffix to find the `home.jsp` view in the `/WEB-INF/views/` directory.

These descriptions should help in understanding the configuration files and their roles within the application. Let me know if there’s anything more you need!
