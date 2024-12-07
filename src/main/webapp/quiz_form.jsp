<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up - FitPlate</title>
    <style>
        body {
            font-family: 'Cinzel', serif;
            background-color: #F7F3EF;
            color: #2D2D2D;
            margin: 0;
            padding: 0;
            background-image: url('/images/backgroundright.avif');
            background-size: cover;
            background-position: center;
        }

        .form-container {
            max-width: 500px;
            margin: 5rem auto;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 2rem;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            color: white;
        }

        .form-page {
            display: none; /* Hidden by default */
        }

        .form-page.active {
            display: block; /* Only the active page is shown */
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-radius: 5px;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
        }

        .btn {
            background-color: #C70039;
            color: white;
            padding: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 1.1rem;
            transition: background-color 0.3s ease;
            margin-top: 1rem;
        }

        .btn:hover {
            background-color: #FFC300;
            color: #2D2D2D;
        }

        .navigation-buttons {
            display: flex;
            justify-content: space-between;
        }

        .navigation-buttons .btn {
            width: 48%;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <!-- Page 1 -->
        <div class="form-page active" id="page1">
            <h2>Create an Account</h2>
            <div class="form-group">
                <label for="role">Sign Up As:</label>
                <select id="role" name="role" required>
                    <option value="">Select Role</option>
                    <option value="User">User</option>
                    <option value="Instructor">Instructor</option>
                </select>
            </div>
            <div class="form-group">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="fname" required>
            </div>
            <div class="form-group">
                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lname" required>
            </div>
            <button class="btn" onclick="goToPage(2)">Next</button>
        </div>

        <!-- Page 2 -->
        <div class="form-page" id="page2">
            <h2>Account Details</h2>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirmpassword">Confirm Password</label>
                <input type="password" id="confirmpassword" name="confirmpassword" required>
            </div>
            <div class="navigation-buttons">
                <button class="btn" onclick="goToPage(1)">Back</button>
                <button class="btn" onclick="goToPage(3)">Next</button>
            </div>
        </div>

        <!-- Page 3 -->
        <div class="form-page" id="page3">
            <h2>Additional Details</h2>
            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" min="1" required>
            </div>
            <div class="form-group">
                <label for="height">Height (cm)</label>
                <input type="number" id="height" name="height" min="50" required>
            </div>
            <div class="form-group">
                <label for="weight">Weight (kg)</label>
                <input type="number" id="weight" name="weight" min="20" required>
            </div>
            <div class="form-group">
                <label for="dietType">Diet Type</label>
                <select id="dietType" name="dietType" required>
                    <option value="">Select Diet Type</option>
                    <option value="Vegetarian">Vegetarian</option>
                    <option value="Non-Vegetarian">Non-Vegetarian</option>
                    <option value="Vegan">Vegan</option>
                </select>
            </div>
            <div class="navigation-buttons">
                <button class="btn" onclick="goToPage(2)">Back</button>
                <button class="btn">Complete Signup</button>
            </div>
        </div>
    </div>

    <script>
        function goToPage(pageNumber) {
            // Hide all pages
            const pages = document.querySelectorAll('.form-page');
            pages.forEach(page => page.classList.remove('active'));

            // Show the selected page
            document.getElementById(`page${pageNumber}`).classList.add('active');
        }
    </script>
</body>
</html>
