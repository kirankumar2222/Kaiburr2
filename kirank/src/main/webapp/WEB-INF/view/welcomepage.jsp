<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information Viewer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            background-color: #f5f5f5;
        }

        input[type="text"] {
            cursor: not-allowed;
        }

        select {
            height: 40px;
            cursor: not-allowed;
        }

        .btn-back {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .btn-back:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Information Viewer</h2>
        <form>
            <div class="form-group">
                <label for="userId">User ID:</label>
                <input type="text" id="userId" name="userId" value="${user.id}" readonly>
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${user.name}" readonly>
            </div>
            <div class="form-group">
                <label for="language">Preferred Programming Language:</label>
                <input type="text" id="language" name="language" value="${user.language}" readonly>
            </div>
            <div class="form-group">
                <label for="framework">Favorite Framework:</label>
                <input type="text" id="framework" name="framework" value="${user.framework}" readonly>
            </div>
            <div class="form-group">
                <a href="#" class="btn-back">Back</a>
            </div>
        </form>
    </div>
</body>
</html>
