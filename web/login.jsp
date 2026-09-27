<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Login - College Notice Management System</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #eef7ff;
            color: #173b63;
        }

        /* HEADER */

        header {
            background: #102f52;
            color: white;
            padding: 15px 6%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }

        .college-name {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .college-logo {
            width: 65px;
            height: 65px;
            object-fit: contain;
            background: white;
            border-radius: 50%;
            padding: 5px;
        }

        .college-name h2 {
            font-size: 20px;
            margin-bottom: 4px;
        }

        .college-name p {
            font-size: 12px;
            color: #c8e6ff;
        }

        .home-btn {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border: 1px solid #35aaff;
            border-radius: 8px;
            transition: 0.3s;
        }

        .home-btn:hover {
            background: #087ce9;
        }

        /* MAIN */

        .main-container {
            min-height: calc(100vh - 180px);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 45px 7%;
        }

        .login-wrapper {
            width: 100%;
            max-width: 1000px;
            background: white;
            border-radius: 22px;
            overflow: hidden;

            display: grid;
            grid-template-columns: 1fr 1fr;

            box-shadow:
                0 15px 45px
                rgba(30, 90, 140, 0.15);
        }

        /* LEFT SIDE */

        .login-info {
            background:
                linear-gradient(
                    135deg,
                    #087ce9,
                    #0753a0
                );

            color: white;
            padding: 55px 45px;

            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-info h1 {
            font-size: 34px;
            margin-bottom: 15px;
        }

        .login-info h1 span {
            color: #9dddff;
        }

        .login-info p {
            line-height: 1.7;
            font-size: 15px;
            color: #e5f4ff;
            margin-bottom: 25px;
        }

        .features {
            margin-top: 10px;
        }

        .feature {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 15px 0;
        }

        .feature-icon {
            width: 38px;
            height: 38px;

            background: rgba(255,255,255,0.16);

            border-radius: 9px;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 18px;
        }

        .feature span {
            font-size: 14px;
        }

        /* LOGIN BOX */

        .login-box {
            padding: 55px 45px;
        }

        .login-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-heading h2 {
            font-size: 29px;
            color: #173b63;
            margin-bottom: 8px;
        }

        .login-heading p {
            font-size: 13px;
            color: #7b8ea0;
        }

        /* FORM */

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 8px;
            color: #173b63;
        }

        .input-box {
            width: 100%;
            padding: 14px 15px;

            border: 1px solid #d7e5ef;

            border-radius: 9px;

            font-size: 14px;

            outline: none;

            background: #f8fcff;

            transition: 0.3s;
        }

        .input-box:focus {
            border-color: #087ce9;

            background: white;

            box-shadow:
                0 0 0 3px
                rgba(8,124,233,0.10);
        }

        /* OPTIONS */

        .login-options {
            display: flex;
            justify-content: space-between;
            align-items: center;

            font-size: 13px;

            margin-bottom: 25px;
        }

        .remember {
            display: flex;
            align-items: center;
            gap: 6px;
            color: #71869a;
        }

        .forgot {
            color: #087ce9;
            text-decoration: none;
        }

        /* BUTTON */

        .login-btn {
            width: 100%;

            padding: 14px;

            border: none;

            border-radius: 9px;

            background:
                linear-gradient(
                    135deg,
                    #087ce9,
                    #0753a0
                );

            color: white;

            font-size: 15px;

            font-weight: 600;

            cursor: pointer;

            transition: 0.3s;
        }

        .login-btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 8px 20px
                rgba(8,124,233,0.25);
        }

        /* BACK BUTTON */

        .back-home {
            display: block;

            text-align: center;

            margin-top: 20px;

            color: #087ce9;

            text-decoration: none;

            font-size: 14px;
        }

        .back-home:hover {
            text-decoration: underline;
        }

        /* FOOTER */

        footer {
            background: #102f52;

            color: white;

            text-align: center;

            padding: 20px;
        }

        footer h3 {
            font-size: 16px;
            margin-bottom: 6px;
        }

        footer p {
            font-size: 12px;
            color: #c9d8e6;
        }

        /* MOBILE */

        @media(max-width: 800px) {

            header {
                flex-direction: column;
                gap: 12px;
                text-align: center;
            }

            .college-name {
                flex-direction: column;
            }

            .login-wrapper {
                grid-template-columns: 1fr;
            }

            .login-info {
                padding: 35px 30px;
            }

            .login-box {
                padding: 40px 30px;
            }

        }

        @media(max-width: 500px) {

            .main-container {
                padding: 25px 15px;
            }

            .login-info h1 {
                font-size: 27px;
            }

            .login-box {
                padding: 30px 22px;
            }

        }

    </style>

</head>

<body>


<!-- HEADER -->

<header>

    <div class="college-name">

        <!-- Put your college-logo.png inside Web Pages -->

        <img src="college-logo.png"
             alt="College Logo"
             class="college-logo">

        <div>

            <h2>
                PRAVIN ROHIDAS PATIL COLLEGE
            </h2>

            <p>
                College Notice Management System
            </p>

        </div>

    </div>


    <a href="index.jsp"
       class="home-btn">
        Home
    </a>

</header>


<!-- MAIN LOGIN AREA -->

<div class="main-container">

    <div class="login-wrapper">


        <!-- LEFT INFORMATION -->

        <div class="login-info">

            <h1>
                Welcome to <span>College Portal</span>
            </h1>

            <p>
                Access the College Notice Management System
                to manage important announcements, academic
                information and official documents.
            </p>


            <div class="features">

                <div class="feature">

                    <div class="feature-icon">
                        1
                    </div>

                    <span>
                        Manage College Notices
                    </span>

                </div>


                <div class="feature">

                    <div class="feature-icon">
                        2
                    </div>

                    <span>
                        Upload Official PDF Documents
                    </span>

                </div>


                <div class="feature">

                    <div class="feature-icon">
                        3
                    </div>

                    <span>
                        Publish Important Announcements
                    </span>

                </div>


                <div class="feature">

                    <div class="feature-icon">
                        4
                    </div>

                    <span>
                        Manage Academic Information
                    </span>

                </div>

            </div>

        </div>


        <!-- LOGIN FORM -->

        <div class="login-box">


            <div class="login-heading">

                <h2>
                    Admin Login
                </h2>

                <p>
                    Login to access the administration panel
                </p>

            </div>


            <form action="admin.jsp"
                  method="post">


                <!-- USERNAME -->

                <div class="form-group">

                    <label>
                        Username
                    </label>

                    <input
                        type="text"
                        name="username"
                        class="input-box"
                        placeholder="Enter your username"
                        required>

                </div>


                <!-- PASSWORD -->

                <div class="form-group">

                    <label>
                        Password
                    </label>

                    <input
                        type="password"
                        name="password"
                        class="input-box"
                        placeholder="Enter your password"
                        required>

                </div>


                <!-- OPTIONS -->

                <div class="login-options">

                    <label class="remember">

                        <input type="checkbox">

                        Remember me

                    </label>


                    <a href="#"
                       class="forgot">

                        Forgot Password?

                    </a>

                </div>


                <!-- LOGIN -->

                <button type="submit"
                        class="login-btn">

                    Login to Dashboard

                </button>


            </form>


            <a href="index.jsp"
               class="back-home">

                ← Back to College Home

            </a>


        </div>

    </div>

</div>


<!-- FOOTER -->

<footer>

    <h3>
        College Notice Management System
    </h3>

    <p>
        Official College Portal
    </p>

    <p style="margin-top:6px;">
        © 2026 College Notice Management System
    </p>

</footer>


</body>

</html>