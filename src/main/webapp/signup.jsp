<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0; /* tło strony */
            text-align: center;
        }

        .container {
            margin-top: 50px;
        }

        h1 {
            color: #333;
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

    </style>
</head>
<body>
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
                redirectUrl = "register_java.jsp";
                break;
            case "python_developer":
                redirectUrl = "register_python.jsp";
                break;
            case "csharp_developer":
                redirectUrl = "register_csharp.jsp";
                break;
            case "cpp_developer":
                redirectUrl = "register_cpp.jsp";
                break;
            case "frontend_developer":
                redirectUrl = "register_frontend.jsp";
                break;
            case "database_analyst":
                redirectUrl = "register_database.jsp";
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