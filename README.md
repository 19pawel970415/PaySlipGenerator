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
    |       ├── controller
    |            ├── LoginController
    |            ├── PaySlipGeneratorController
    |            └── RegisterController
    │       ├── model
    │       │   ├── CppDeveloper
    │       │   ├── CSharpDeveloper
    │       │   ├── DatabaseAnalyst
    │       │   ├── Employee
    │       │   ├── Experience
    │       │   ├── FrontEndDeveloper
    │       │   ├── JavaDeveloper
    │       │   └── PythonDeveloper
    |       ├── repository
    |       |   └── DataToDbHandler
    │       ├── service
    │       │   ├── Main
    │       │   └── PaySlipGeneratorService
    │       ├── PaySlipGeneratorApplication
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

#### 3.2.2 `application.properties`

```properties
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
```

**Description:**
- `spring.mvc.view.prefix=/WEB-INF/views/`: Sets the prefix path for views in Spring MVC. This means that Spring MVC will look for view files in the `/WEB-INF/views/` directory. This prefix is added before the view name.
- `spring.mvc.view.suffix=.jsp`: Sets the suffix for view file names in Spring MVC. In this case, Spring MVC expects view files to have a `.jsp` extension. For example, if a controller returns the name `home`, Spring MVC will automatically add the prefix and suffix to find the `home.jsp` view in the `/WEB-INF/views/` directory.

These descriptions should help in understanding the configuration files and their roles within the application. Let me know if there’s anything more you need!


### 3.3 Controllers

#### 3.3.1 `RegisterController`

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

#### 3.3.2 `PaySlipGeneratorController`

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

#### 3.3.3 `LoginController`

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

### 3.4 Service Classes

#### 3.4.1 `Main`

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

#### 3.4.2 `PaySlipGeneratorService`

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

### 3.5 Classes / Entities, and Enums

#### 3.5.1 `Employee`

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

#### 3.5.2 `Experience` (enum)

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

#### 3.5.3 `PythonDeveloper`

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

#### 3.5.4 `JavaDeveloper`

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

#### 3.5.5 `FrontEndDeveloper`

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

#### 3.5.6 `DatabaseAnalyst`

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

#### 3.5.7 `CSharpDeveloper`

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

#### 3.5.8 `CppDeveloper`

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

### 3.6 DB

#### 3.5.2 `DataToDbHandler` (interface)

```java
package com.example.payslipgenerator.employees;

public interface DataToDbHandler {

    void addDataToDb(String name, String surname, String login, String password, String toolName, String experience);

}
```

**Description:**
- **interface DataToDbHandler:** An interface declaring methods that must be implemented by classes that implement this interface.
- **void addDataToDb(String name, String surname, String login, String password, String toolName, String experience):** Method responsible for adding data to the database. Parameters include employee information such as name, surname, login, password, tool (e.g., code editor), and experience. Implementations of this interface will have their own logic for adding data to the database depending on the type of employee.

### 3.7 The app class

#### 3.3.3 `PaySlipGeneratorApplication`

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
