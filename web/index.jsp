<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>College Notice Management System</title>


    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f5faff;
            color: #173b63;
        }


        /* =========================================
           COLLEGE HEADER
        ========================================= */

        .college-header {
            background: white;
            padding: 10px 5%;

            display: flex;
            align-items: center;

            gap: 18px;

            border-bottom: 1px solid #e1eaf2;
        }


        .college-logo {
            width: 85px;
            height: 85px;

            object-fit: contain;
        }


        .college-info h3 {
            font-size: 19px;
            color: #222;
            font-weight: 500;
        }


        .college-info h1 {
            font-size: 27px;
            color: #111;

            font-weight: 800;

            margin: 2px 0;
        }


        .college-info p {
            color: #e52b2b;
            font-size: 15px;

            margin-top: 4px;
        }


        .college-code {
            color: #e60000;

            font-size: 17px;

            font-weight: bold;

            margin-top: 3px;
        }


        /* =========================================
           NAVIGATION
        ========================================= */

        .navbar {
            background: #102f52;

            min-height: 70px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            padding: 0 7%;

            color: white;
        }


        .brand {
            font-size: 25px;
            font-weight: 700;
        }


        .brand span {
            color: #20a7ff;
        }


        .nav-links {
            display: flex;

            align-items: center;

            gap: 8px;
        }


        .nav-links a {
            color: white;

            text-decoration: none;

            padding: 12px 20px;

            border-radius: 8px;

            font-size: 15px;

            transition: 0.3s;
        }


        .nav-links a:hover,
        .nav-links .active {
            background: #078bea;
        }


        .tagline {
            font-size: 14px;
        }


        /* =========================================
           HERO SECTION
        ========================================= */

        .hero {
            min-height: 390px;

            display: flex;

            align-items: center;

            padding: 60px 7%;

            background:
                linear-gradient(
                    90deg,
                    #edf8ff 0%,
                    #f4fbff 50%,
                    #d7efff 100%
                );

            position: relative;

            overflow: hidden;
        }


        .hero-content {
            width: 55%;

            position: relative;

            z-index: 2;
        }


        .badge {
            display: inline-block;

            background: #d8efff;

            color: #0876d1;

            padding: 9px 18px;

            border-radius: 25px;

            font-size: 14px;

            margin-bottom: 18px;
        }


        .hero h2 {
            font-size: 52px;

            line-height: 1.05;

            color: #173b63;
        }


        .hero h2 span {
            color: #087ce9;
        }


        .hero p {
            font-size: 18px;

            line-height: 1.6;

            margin: 22px 0;

            color: #4c6680;

            max-width: 620px;
        }


        .hero-buttons {
            display: flex;

            gap: 18px;
        }


        .btn {
            display: inline-block;

            text-decoration: none;

            padding: 14px 25px;

            border-radius: 10px;

            font-weight: 600;

            transition: 0.3s;
        }


        .primary-btn {
            background: #087ce9;

            color: white;

            box-shadow:
                0 8px 20px
                rgba(8,124,233,0.25);
        }


        .primary-btn:hover {
            transform: translateY(-3px);

            background: #075fb5;
        }


        .secondary-btn {
            background: white;

            color: #075da9;

            border: 1px solid #6eb8ed;
        }


        .secondary-btn:hover {
            background: #eaf6ff;
        }


        /* =========================================
           CAMPUS DESIGN
        ========================================= */

        .campus-design {
            position: absolute;

            right: 3%;

            bottom: 0;

            width: 43%;

            height: 100%;

            display: flex;

            align-items: flex-end;

            justify-content: center;
        }


        .campus-building {
            width: 90%;

            height: 65%;

            background:
                linear-gradient(
                    135deg,
                    #ffffff,
                    #dbeefa
                );

            border-radius: 18px 18px 0 0;

            box-shadow:
                0 15px 35px
                rgba(30,80,120,0.18);

            position: relative;
        }


        .campus-building::before {
            content: "KNOWLEDGE LEADS TO TOMORROW";

            position: absolute;

            top: 25px;

            left: 18%;

            background: #123b65;

            color: white;

            padding: 8px 15px;

            font-size: 11px;

            font-weight: bold;

            border-radius: 5px;
        }


        .windows {
            position: absolute;

            top: 90px;

            left: 8%;

            right: 8%;

            display: grid;

            grid-template-columns:
                repeat(6, 1fr);

            gap: 12px;
        }


        .window {
            height: 80px;

            background:
                linear-gradient(
                    135deg,
                    #72c8ef,
                    #d5f3ff
                );

            border: 4px solid white;

            box-shadow:
                0 2px 5px
                rgba(0,0,0,0.15);
        }


        .ground {
            position: absolute;

            bottom: 0;

            left: 0;

            right: 0;

            height: 35px;

            background: #55b957;

            border-radius: 50% 50% 0 0;
        }


        /* =========================================
           FEATURE DIVISIONS
        ========================================= */

        .features-wrapper {
            width: 90%;

            margin: -15px auto 35px;

            position: relative;

            z-index: 5;
        }


        .features {
            background: rgba(255,255,255,0.96);

            border-radius: 18px;

            padding: 20px 10px;

            display: grid;

            grid-template-columns:
                repeat(5, 1fr);

            box-shadow:
                0 8px 30px
                rgba(30,90,140,0.12);
        }


        .feature {
            padding: 20px;

            border-right: 1px solid #dce8f2;

            min-height: 145px;
        }


        .feature:last-child {
            border-right: none;
        }


        .feature-icon {
            width: 52px;

            height: 52px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 50%;

            font-size: 25px;

            margin-bottom: 12px;

            color: white;
        }


        .blue {
            background: #087ce9;
        }


        .green {
            background: #22b573;
        }


        .purple {
            background: #7654d9;
        }


        .orange {
            background: #f5a000;
        }


        .pink {
            background: #ed5270;
        }


        .feature h3 {
            font-size: 16px;

            margin-bottom: 8px;

            color: #173b63;
        }


        .feature p {
            font-size: 14px;

            line-height: 1.5;

            color: #60788e;
        }


        /* =========================================
           MAIN CONTENT
        ========================================= */

        .main-section {
            width: 90%;

            margin: 0 auto 40px;

            display: grid;

            grid-template-columns:
                2fr 1fr;

            gap: 25px;
        }


        /* =========================================
           LATEST NOTICE
        ========================================= */

        .notice-box {
            background: white;

            border-radius: 15px;

            box-shadow:
                0 5px 20px
                rgba(30,90,140,0.09);

            overflow: hidden;
        }


        .section-heading {
            padding: 20px;

            display: flex;

            justify-content: space-between;

            align-items: center;

            border-bottom: 1px solid #e4edf5;
        }


        .section-heading h2 {
            font-size: 20px;
        }


        .section-heading a {
            color: #087ce9;

            text-decoration: none;

            font-size: 14px;
        }


        .notice-row {
            padding: 17px 20px;

            border-bottom: 1px solid #edf2f6;

            display: flex;

            align-items: center;

            gap: 15px;
        }


        .notice-row:last-child {
            border-bottom: none;
        }


        .notice-tag {
            min-width: 90px;

            text-align: center;

            padding: 7px 10px;

            border-radius: 20px;

            font-size: 12px;

            background: #dcefff;

            color: #0871c9;
        }


        .notice-content {
            flex: 1;
        }


        .notice-content h4 {
            color: #173b63;

            font-size: 14px;

            margin-bottom: 5px;
        }


        .notice-content p {
            font-size: 12px;

            color: #8495a5;
        }


        .arrow {
            font-size: 22px;

            color: #56758f;
        }


        /* =========================================
           QUICK LOGIN
        ========================================= */

        .login-box {
            background: white;

            border-radius: 15px;

            padding: 20px;

            box-shadow:
                0 5px 20px
                rgba(30,90,140,0.09);
        }


        .login-box h2 {
            font-size: 20px;

            margin-bottom: 18px;
        }


        .login-btn {
            display: flex;

            align-items: center;

            justify-content: space-between;

            color: white;

            text-decoration: none;

            padding: 14px 18px;

            border-radius: 10px;

            margin-bottom: 12px;

            font-weight: 600;

            transition: 0.3s;
        }


        .login-btn:hover {
            transform: translateX(4px);
        }


        .student {
            background: #087ce9;
        }


        .faculty {
            background: #6650d9;
        }


        .admin {
            background: #22b573;
        }


        .every-notice {
            margin-top: 20px;

            padding: 25px;

            border-radius: 15px;

            background: #dcefff;
        }


        .every-notice h3 {
            margin-bottom: 8px;
        }


        .every-notice p {
            color: #506a82;

            line-height: 1.5;
        }


        /* =========================================
           ABOUT SECTION
        ========================================= */

        .about-section {
            width: 90%;

            margin: 0 auto 40px;

            padding: 50px 0;
        }


        .about-title {
            text-align: center;

            margin-bottom: 30px;
        }


        .about-title h2 {
            font-size: 30px;

            color: #173b63;

            margin-bottom: 8px;
        }


        .about-title p {
            color: #71869a;

            font-size: 14px;
        }


        .about-container {
            display: grid;

            grid-template-columns: 1.2fr 1fr;

            gap: 25px;
        }


        .about-content {
            background: white;

            padding: 30px;

            border-radius: 15px;

            box-shadow:
                0 5px 20px
                rgba(30,90,140,0.09);

            border-left: 5px solid #087ce9;
        }


        .about-content h3 {
            font-size: 23px;

            color: #173b63;

            margin-bottom: 15px;
        }


        .about-content p {
            color: #60788e;

            font-size: 14px;

            line-height: 1.8;

            margin-bottom: 12px;
        }


        .about-cards {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 15px;
        }


        .about-card {
            background: white;

            padding: 22px;

            border-radius: 15px;

            box-shadow:
                0 5px 20px
                rgba(30,90,140,0.09);

            border-top: 4px solid #087ce9;

            transition: 0.3s;
        }


        .about-card:hover {
            transform: translateY(-5px);
        }


        .about-card h3 {
            color: #173b63;

            font-size: 16px;

            margin-bottom: 8px;
        }


        .about-card p {
            color: #71869a;

            font-size: 12px;

            line-height: 1.6;
        }


        /* =========================================
           CONTACT SECTION
        ========================================= */

        .contact-section {
            width: 90%;

            margin: 0 auto 40px;

            padding: 50px 0;
        }


        .contact-title {
            text-align: center;

            margin-bottom: 30px;
        }


        .contact-title h2 {
            font-size: 30px;

            color: #173b63;

            margin-bottom: 8px;
        }


        .contact-title p {
            color: #71869a;

            font-size: 14px;
        }


        .contact-container {
            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 25px;
        }


        /* CONTACT INFORMATION */

        .contact-info {
            background:
                linear-gradient(
                    135deg,
                    #102f52,
                    #0753a0
                );

            color: white;

            padding: 35px;

            border-radius: 15px;

            box-shadow:
                0 8px 25px
                rgba(30,90,140,0.15);
        }


        .contact-info h3 {
            font-size: 24px;

            margin-bottom: 12px;
        }


        .contact-info > p {
            color: #d9ecff;

            font-size: 14px;

            line-height: 1.7;

            margin-bottom: 25px;
        }


        .contact-item {
            display: flex;

            align-items: center;

            gap: 15px;

            margin: 20px 0;
        }


        .contact-icon {
            width: 45px;

            height: 45px;

            background:
                rgba(255,255,255,0.15);

            border-radius: 10px;

            display: flex;

            align-items: center;

            justify-content: center;

            color: #9dddff;

            font-weight: bold;
        }


        .contact-item h4 {
            font-size: 14px;

            margin-bottom: 4px;
        }


        .contact-item p {
            color: #c9e6ff;

            font-size: 12px;
        }


        /* CONTACT FORM */

        .contact-form {
            background: white;

            padding: 35px;

            border-radius: 15px;

            box-shadow:
                0 5px 20px
                rgba(30,90,140,0.09);
        }


        .contact-form h3 {
            color: #173b63;

            font-size: 23px;

            margin-bottom: 22px;
        }


        .contact-input {
            width: 100%;

            padding: 13px 14px;

            margin-bottom: 15px;

            border: 1px solid #d8e5ef;

            border-radius: 8px;

            background: #f8fcff;

            outline: none;

            font-family:
                "Segoe UI",
                Arial,
                sans-serif;

            font-size: 13px;
        }


        .contact-input:focus {
            border-color: #087ce9;

            background: white;

            box-shadow:
                0 0 0 3px
                rgba(8,124,233,0.10);
        }


        .contact-textarea {
            width: 100%;

            height: 110px;

            padding: 13px 14px;

            margin-bottom: 15px;

            border: 1px solid #d8e5ef;

            border-radius: 8px;

            background: #f8fcff;

            outline: none;

            resize: none;

            font-family:
                "Segoe UI",
                Arial,
                sans-serif;

            font-size: 13px;
        }


        .contact-textarea:focus {
            border-color: #087ce9;

            background: white;
        }


        .send-button {
            width: 100%;

            padding: 13px;

            border: none;

            border-radius: 8px;

            background: #087ce9;

            color: white;

            font-size: 14px;

            font-weight: 600;

            cursor: pointer;

            transition: 0.3s;
        }


        .send-button:hover {
            background: #075fb5;

            transform: translateY(-2px);
        }


        /* =========================================
           FOOTER
        ========================================= */

        footer {
            background: #102f52;

            color: white;

            padding: 25px 7%;

            display: flex;

            justify-content: space-between;

            align-items: center;
        }


        footer .brand {
            font-size: 19px;
        }


        footer p {
            font-size: 13px;

            color: #d3e0ec;
        }


        /* =========================================
           RESPONSIVE
        ========================================= */

        @media(max-width:900px) {

            .college-header {
                padding: 12px 3%;
            }


            .college-info h1 {
                font-size: 21px;
            }


            .hero h2 {
                font-size: 40px;
            }


            .features {
                grid-template-columns:
                    repeat(2, 1fr);
            }


            .feature {
                border-bottom:
                    1px solid #dce8f2;
            }


            .main-section {
                grid-template-columns: 1fr;
            }


            .campus-design {
                opacity: 0.25;
            }


            .hero-content {
                width: 80%;
            }


            .about-container {
                grid-template-columns: 1fr;
            }


            .contact-container {
                grid-template-columns: 1fr;
            }

        }


        @media(max-width:600px) {

            .college-header {
                flex-direction: column;

                text-align: center;
            }


            .navbar {
                height: auto;

                padding: 15px;

                flex-direction: column;

                gap: 15px;
            }


            .nav-links {
                flex-wrap: wrap;

                justify-content: center;
            }


            .tagline {
                display: none;
            }


            .hero {
                padding: 45px 7%;
            }


            .hero-content {
                width: 100%;
            }


            .hero h2 {
                font-size: 35px;
            }


            .hero-buttons {
                flex-direction: column;
            }


            .features {
                grid-template-columns: 1fr;
            }


            .feature {
                border-right: none;
            }


            .notice-row {
                align-items: flex-start;
            }


            .notice-tag {
                min-width: 75px;
            }


            .about-section,
            .contact-section {
                width: 90%;

                padding: 35px 0;
            }


            .about-title h2,
            .contact-title h2 {
                font-size: 25px;
            }


            .about-cards {
                grid-template-columns: 1fr;
            }


            .about-content,
            .about-card,
            .contact-info,
            .contact-form {
                padding: 25px;
            }


            footer {
                flex-direction: column;

                gap: 10px;

                text-align: center;
            }

        }

    </style>

</head>


<body>


<!-- ==================================================
     COLLEGE HEADER
================================================== -->

<div class="college-header">


    <!--
        Keep college-logo.png directly inside
        Web Pages folder.

        If you do not have the image yet,
        the circle below will show instead.
    -->

    <div
        style="
        width:85px;
        height:85px;
        background:#e9f5ff;
        border-radius:50%;
        display:flex;
        align-items:center;
        justify-content:center;
        overflow:hidden;
        flex-shrink:0;
        ">

        <img
            src="college-logo.png"
            alt="College Logo"
            class="college-logo"
            onerror="this.style.display='none'; this.parentElement.innerHTML='COLLEGE';">

    </div>


    <div class="college-info">

        <h3>
            Shree Shankar Narayan Education Trust's
        </h3>


        <h1>
            PRAVIN ROHIDAS PATIL COLLEGE OF
            ENGINEERING &amp; TECHNOLOGY
        </h1>


        <p>
            Affiliated to the University of Mumbai |
            Recognised by D.T.E. Govt. of Maharashtra |
            Approved by A.I.C.T.E. New Delhi
        </p>


        <div class="college-code">

            [ DTE CODE : 3277 ]

        </div>

    </div>

</div>



<!-- ==================================================
     NAVIGATION
================================================== -->

<nav class="navbar">


    <div class="brand">

        College <span>Notice</span> System

    </div>


    <div class="nav-links">


        <a href="index.jsp"
           class="active">

            Home

        </a>


        <a href="viewNotice.jsp">

            Notices

        </a>


        <a href="login.jsp">

            Login

        </a>


        <a href="#about">

            About

        </a>


        <a href="#contact">

            Contact

        </a>


    </div>


    <div class="tagline">

        Stay Updated &nbsp; | &nbsp; Stay Ahead

    </div>


</nav>



<!-- ==================================================
     HERO
================================================== -->

<section class="hero">


    <div class="hero-content">


        <div class="badge">

            Official College Portal

        </div>


        <h2>

            College Notice
            <br>

            <span>
                Management System
            </span>

        </h2>


        <p>

            Get the latest college notices, updates and
            important announcements — all in one place.

        </p>


        <div class="hero-buttons">


            <a href="viewNotice.jsp"
               class="btn primary-btn">

                View Notices &nbsp; →

            </a>


            <a href="login.jsp"
               class="btn secondary-btn">

                Login &nbsp; →

            </a>


        </div>


    </div>



    <!-- CAMPUS DESIGN -->

    <div class="campus-design">


        <div class="campus-building">


            <div class="windows">

                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>

                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>
                <div class="window"></div>

            </div>


            <div class="ground"></div>


        </div>


    </div>


</section>



<!-- ==================================================
     FIVE DIVISIONS
================================================== -->

<div class="features-wrapper">


    <div class="features">


        <div class="feature">


            <div class="feature-icon blue">

                N

            </div>


            <h3>

                Latest Notices

            </h3>


            <p>

                Get instant updates on college
                announcements.

            </p>


        </div>



        <div class="feature">


            <div class="feature-icon green">

                E

            </div>


            <h3>

                Event Updates

            </h3>


            <p>

                Stay informed about upcoming
                events and activities.

            </p>


        </div>



        <div class="feature">


            <div class="feature-icon purple">

                D

            </div>


            <h3>

                Easy Access

            </h3>


            <p>

                View notices anytime,
                anywhere.

            </p>


        </div>



        <div class="feature">


            <div class="feature-icon orange">

                U

            </div>


            <h3>

                For All Users

            </h3>


            <p>

                Students, Faculty &amp; Staff can
                access important notices.

            </p>


        </div>



        <div class="feature">


            <div class="feature-icon pink">

                S

            </div>


            <h3>

                Secure &amp; Reliable

            </h3>


            <p>

                Important college information
                in one place.

            </p>


        </div>


    </div>


</div>



<!-- ==================================================
     MAIN CONTENT
================================================== -->

<section class="main-section">


    <!-- LATEST NOTICES -->

    <div class="notice-box">


        <div class="section-heading">


            <h2>

                Latest Notices

            </h2>


            <a href="viewNotice.jsp">

                View All Notices →

            </a>


        </div>



        <div class="notice-row">


            <span class="notice-tag">

                Academic

            </span>


            <div class="notice-content">


                <h4>

                    Examination Form Submission Notice

                </h4>


                <p>

                    Important academic announcement

                </p>


            </div>


            <span class="arrow">

                ›

            </span>


        </div>



        <div class="notice-row">


            <span class="notice-tag">

                General

            </span>


            <div class="notice-content">


                <h4>

                    College Holiday Announcement

                </h4>


                <p>

                    Check the latest holiday information

                </p>


            </div>


            <span class="arrow">

                ›

            </span>


        </div>



        <div class="notice-row">


            <span class="notice-tag">

                Academic

            </span>


            <div class="notice-content">


                <h4>

                    Internal Assessment Schedule

                </h4>


                <p>

                    Examination related information

                </p>


            </div>


            <span class="arrow">

                ›

            </span>


        </div>



        <div class="notice-row">


            <span class="notice-tag">

                Event

            </span>


            <div class="notice-content">


                <h4>

                    Workshop on Web Development

                </h4>


                <p>

                    Upcoming college workshop

                </p>


            </div>


            <span class="arrow">

                ›

            </span>


        </div>


    </div>



    <!-- QUICK LOGIN -->

    <div class="login-box">


        <h2>

            Quick Login

        </h2>


        <a href="login.jsp"
           class="login-btn student">


            <span>

                Student Login

            </span>


            <span>

                →

            </span>


        </a>



        <a href="login.jsp"
           class="login-btn faculty">


            <span>

                Faculty Login

            </span>


            <span>

                →

            </span>


        </a>



        <a href="login.jsp"
           class="login-btn admin">


            <span>

                Admin Login

            </span>


            <span>

                →

            </span>


        </a>



        <div class="every-notice">


            <h3>

                Every Notice Matters

            </h3>


            <p>

                Be the first to know,
                be the first to act!

            </p>


        </div>


    </div>


</section>



<!-- ==================================================
     ABOUT SECTION
================================================== -->

<section class="about-section"
         id="about">


    <div class="about-title">


        <h2>

            About Our Notice System

        </h2>


        <p>

            Making college information simple,
            organized and accessible

        </p>


    </div>



    <div class="about-container">


        <!-- ABOUT DESCRIPTION -->

        <div class="about-content">


            <h3>

                College Notice Management System

            </h3>


            <p>

                The College Notice Management System
                is a digital platform designed to provide
                students, faculty and staff with easy
                access to important college notices.

            </p>


            <p>

                The system helps manage academic
                announcements, examination updates,
                events, holidays, workshops and other
                important college information.

            </p>


            <p>

                Our goal is to make college communication
                faster, simpler and more organized by
                bringing important notices together in
                one convenient platform.

            </p>


        </div>



        <!-- ABOUT CARDS -->

        <div class="about-cards">


            <div class="about-card">


                <h3>

                    Easy Notice Management

                </h3>


                <p>

                    Administrators can manage and publish
                    important college announcements easily.

                </p>


            </div>



            <div class="about-card">


                <h3>

                    Digital Documents

                </h3>


                <p>

                    Important notices and official PDF
                    documents can be provided digitally.

                </p>


            </div>



            <div class="about-card">


                <h3>

                    Quick Access

                </h3>


                <p>

                    Students and faculty can find important
                    information quickly from one place.

                </p>


            </div>



            <div class="about-card">


                <h3>

                    Organized Information

                </h3>


                <p>

                    Notices can be presented in an organized
                    and easy-to-understand format.

                </p>


            </div>


        </div>


    </div>


</section>



<!-- ==================================================
     CONTACT SECTION
================================================== -->

<section class="contact-section"
         id="contact">


    <div class="contact-title">


        <h2>

            Contact Us

        </h2>


        <p>

            Get in touch with our college administration

        </p>


    </div>



    <div class="contact-container">


        <!-- CONTACT INFORMATION -->

        <div class="contact-info">


            <h3>

                College Information

            </h3>


            <p>

                For queries regarding college notices,
                academics, examinations, events or other
                information, contact the college
                administration.

            </p>



            <!-- ADDRESS -->

            <div class="contact-item">


                <div class="contact-icon">

                    A

                </div>


                <div>

                    <h4>

                        Address

                    </h4>


                    <p>

                        Mumbai, Maharashtra, India

                    </p>


                </div>


            </div>



            <!-- PHONE -->

            <div class="contact-item">


                <div class="contact-icon">

                    T

                </div>


                <div>

                    <h4>

                        Phone

                    </h4>


                    <p>

                        +91 XXXXX XXXXX

                    </p>


                </div>


            </div>



            <!-- EMAIL -->

            <div class="contact-item">


                <div class="contact-icon">

                    E

                </div>


                <div>

                    <h4>

                        Email

                    </h4>


                    <p>

                        college@example.com

                    </p>


                </div>


            </div>



            <!-- WORKING HOURS -->

            <div class="contact-item">


                <div class="contact-icon">

                    W

                </div>


                <div>

                    <h4>

                        Working Hours

                    </h4>


                    <p>

                        Monday - Friday | 9:00 AM - 5:00 PM

                    </p>


                </div>


            </div>


        </div>



        <!-- CONTACT FORM -->

        <div class="contact-form">


            <h3>

                Send Us a Message

            </h3>


            <form>


                <input
                    type="text"
                    class="contact-input"
                    placeholder="Your Name"
                    required>


                <input
                    type="email"
                    class="contact-input"
                    placeholder="Your Email"
                    required>


                <input
                    type="text"
                    class="contact-input"
                    placeholder="Subject"
                    required>


                <textarea
                    class="contact-textarea"
                    placeholder="Write your message..."
                    required></textarea>


                <button
                    type="submit"
                    class="send-button">

                    Send Message

                </button>


            </form>


        </div>


    </div>


</section>



<!-- ==================================================
     FOOTER
================================================== -->

<footer>


    <div class="brand">

        College <span>Notice</span> System

    </div>


    <p>

        © 2026 College Notice Management System.
        All rights reserved.

    </p>


    <p>

        College Portal

    </p>


</footer>



</body>

</html>