<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Admin Dashboard - College Notice System</title>

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

        /* ================= HEADER ================= */

        header {
            background: #102f52;
            color: white;
            padding: 18px 7%;

            display: flex;
            justify-content: space-between;
            align-items: center;

            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        }

        .logo {
            font-size: 25px;
            font-weight: 700;
        }

        .logo span {
            color: #20a7ff;
        }

        nav {
            display: flex;
            gap: 10px;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 17px;
            border-radius: 8px;
            font-size: 14px;
        }

        nav a:hover,
        nav .active {
            background: #087ce9;
        }

        /* ================= PAGE ================= */

        .page {
            width: 90%;
            max-width: 1200px;
            margin: 35px auto;
        }

        /* ================= WELCOME BOX ================= */

        .welcome {
            background:
                linear-gradient(
                    135deg,
                    #087ce9,
                    #0753a0
                );

            color: white;

            padding: 35px;

            border-radius: 20px;

            display: flex;

            justify-content: space-between;

            align-items: center;

            box-shadow:
                0 10px 30px
                rgba(8,124,233,0.25);

            margin-bottom: 30px;
        }

        .welcome-text h1 {
            font-size: 34px;
            margin-bottom: 10px;
        }

        .welcome-text p {
            font-size: 16px;
            color: #e5f4ff;
        }

        .welcome-icon {
            width: 90px;
            height: 90px;

            background: rgba(255,255,255,0.18);

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 45px;
        }

        /* ================= STAT BOXES ================= */

        .stats {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 20px;

            margin-bottom: 30px;
        }

        .stat-card {
            background: white;

            padding: 23px;

            border-radius: 15px;

            box-shadow:
                0 6px 22px
                rgba(30,90,140,0.09);

            border-left: 5px solid #087ce9;

            transition: 0.3s;
        }

        .stat-card:hover {
            transform: translateY(-5px);
        }

        .stat-icon {
            font-size: 28px;
            margin-bottom: 10px;
        }

        .stat-card h3 {
            font-size: 27px;
            color: #173b63;
        }

        .stat-card p {
            color: #75899b;
            font-size: 13px;
            margin-top: 5px;
        }

        /* Different borders */

        .stat-card:nth-child(2) {
            border-left-color: #22b573;
        }

        .stat-card:nth-child(3) {
            border-left-color: #7654d9;
        }

        .stat-card:nth-child(4) {
            border-left-color: #f5a000;
        }

        /* ================= MAIN GRID ================= */

        .dashboard-grid {
            display: grid;

            grid-template-columns:
                2fr 1fr;

            gap: 25px;

            margin-bottom: 30px;
        }

        /* ================= ACTION BOX ================= */

        .box {
            background: white;

            border-radius: 16px;

            padding: 25px;

            box-shadow:
                0 6px 22px
                rgba(30,90,140,0.09);
        }

        .box-heading {
            display: flex;

            justify-content: space-between;

            align-items: center;

            border-bottom: 1px solid #e4edf5;

            padding-bottom: 15px;

            margin-bottom: 20px;
        }

        .box-heading h2 {
            font-size: 20px;
        }

        .box-heading span {
            color: #087ce9;
            font-size: 13px;
        }

        /* ================= ACTION CARDS ================= */

        .actions {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 16px;
        }

        .action-card {
            text-decoration: none;

            padding: 22px;

            border-radius: 13px;

            background: #f5faff;

            border: 1px solid #e0edf7;

            transition: 0.3s;
        }

        .action-card:hover {
            transform: translateY(-4px);

            background: #e8f5ff;

            border-color: #8ac8f3;
        }

        .action-icon {
            width: 50px;
            height: 50px;

            border-radius: 12px;

            display: flex;

            align-items: center;
            justify-content: center;

            font-size: 25px;

            margin-bottom: 13px;
        }

        .blue {
            background: #dcefff;
        }

        .green {
            background: #ddf8ec;
        }

        .purple {
            background: #eee9ff;
        }

        .orange {
            background: #fff0d5;
        }

        .action-card h3 {
            color: #173b63;
            font-size: 16px;
            margin-bottom: 6px;
        }

        .action-card p {
            color: #71869a;
            font-size: 12px;
            line-height: 1.5;
        }

        /* ================= RECENT NOTICE ================= */

        .notice-item {
            padding: 15px 0;

            border-bottom: 1px solid #edf2f6;

            display: flex;

            gap: 13px;

            align-items: center;
        }

        .notice-item:last-child {
            border-bottom: none;
        }

        .notice-icon {
            width: 43px;
            height: 43px;

            background: #e5f4ff;

            border-radius: 10px;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 20px;

            flex-shrink: 0;
        }

        .notice-item h4 {
            font-size: 14px;
            color: #173b63;
            margin-bottom: 4px;
        }

        .notice-item p {
            font-size: 11px;
            color: #8394a4;
        }

        /* ================= ADMIN INFO ================= */

        .admin-info {
            background:
                linear-gradient(
                    135deg,
                    #ffffff,
                    #edf8ff
                );

            border-radius: 16px;

            padding: 25px;

            box-shadow:
                0 6px 22px
                rgba(30,90,140,0.09);

            margin-bottom: 30px;
        }

        .admin-info h2 {
            margin-bottom: 15px;
            font-size: 20px;
        }

        .info-row {
            display: flex;

            justify-content: space-between;

            padding: 11px 0;

            border-bottom: 1px solid #e2edf5;

            font-size: 14px;
        }

        .info-row:last-child {
            border-bottom: none;
        }

        .info-label {
            color: #778b9e;
        }

        .info-value {
            font-weight: 600;
            color: #173b63;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #102f52;

            color: white;

            padding: 25px 7%;

            text-align: center;

            margin-top: 20px;
        }

        footer h3 {
            margin-bottom: 8px;
        }

        footer p {
            color: #c9d8e6;
            font-size: 13px;
        }

        /* ================= MOBILE ================= */

        @media(max-width:900px) {

            .stats {
                grid-template-columns:
                    1fr 1fr;
            }

            .dashboard-grid {
                grid-template-columns: 1fr;
            }

        }

        @media(max-width:600px) {

            header {
                flex-direction: column;
                gap: 15px;
            }

            nav {
                flex-wrap: wrap;
                justify-content: center;
            }

            .welcome {
                padding: 25px;
            }

            .welcome-text h1 {
                font-size: 27px;
            }

            .welcome-icon {
                width: 65px;
                height: 65px;
                font-size: 30px;
            }

            .stats {
                grid-template-columns: 1fr;
            }

            .actions {
                grid-template-columns: 1fr;
            }

        }

    </style>

</head>


<body>


<!-- ================= HEADER ================= -->

<header>

    <div class="logo">
        College <span>Notice</span> System
    </div>

    <nav>

        <a href="index.jsp">
            Home
        </a>

        <a href="viewNotice.jsp">
            Notices
        </a>

        <a href="addNotice.jsp">
            Add Notice
        </a>

        <a href="admin.jsp" class="active">
            Dashboard
      <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
        </a>

    </nav>

</header>


<!-- ================= PAGE ================= -->

<div class="page">


    <!-- ================= WELCOME ================= -->

    <section class="welcome">

        <div class="welcome-text">

            <h1>
                Welcome, Admin! 👋
            </h1>

            <p>
                Manage college announcements,
                notices and important documents
                from your dashboard.
            </p>

        </div>


        <div class="welcome-icon">
            👨‍💼
        </div>

    </section>


    <!-- ================= STATISTICS ================= -->

    <section class="stats">


        <div class="stat-card">

            <div class="stat-icon">
                📢
            </div>

            <h3>
                Notices
            </h3>

            <p>
                Published College Notices
            </p>

        </div>


        <div class="stat-card">

            <div class="stat-icon">
                📄
            </div>

            <h3>
                PDF
            </h3>

            <p>
                Official Documents
            </p>

        </div>


        <div class="stat-card">

            <div class="stat-icon">
                🏫
            </div>

            <h3>
                6+
            </h3>

            <p>
                Departments
            </p>

        </div>


        <div class="stat-card">

            <div class="stat-icon">
                👥
            </div>

            <h3>
                Students
            </h3>

            <p>
                College Community
            </p>

        </div>


    </section>


    <!-- ================= DASHBOARD GRID ================= -->

    <section class="dashboard-grid">


        <!-- QUICK ACTIONS -->

        <div class="box">

            <div class="box-heading">

                <h2>
                    Quick Actions
                </h2>

                <span>
                    Admin Controls
                </span>

            </div>


            <div class="actions">


                <a href="addNotice.jsp"
                   class="action-card">

                    <div class="action-icon blue">
                        📢
                    </div>

                    <h3>
                        Add New Notice
                    </h3>

                    <p>
                        Create a new college
                        announcement or upload PDF.
                    </p>

                </a>


                <a href="viewNotice.jsp"
                   class="action-card">

                    <div class="action-icon green">
                        📄
                    </div>

                    <h3>
                        View Notices
                    </h3>

                    <p>
                        View all published college
                        notices and documents.
                    </p>

                </a>


                <a href="addNotice.jsp"
                   class="action-card">

                    <div class="action-icon purple">
                        📤
                    </div>

                    <h3>
                        Upload PDF
                    </h3>

                    <p>
                        Upload official notices
                        in PDF format.
                    </p>

                </a>


                <a href="index.jsp"
                   class="action-card">

                    <div class="action-icon orange">
                        🏠
                    </div>

                    <h3>
                        College Home
                    </h3>

                    <p>
                        Return to the main college
                        notice portal.
                    </p>

                </a>


            </div>

        </div>


        <!-- RECENT NOTICE -->

        <div class="box">

            <div class="box-heading">

                <h2>
                    Recent Updates
                </h2>

            </div>


            <div class="notice-item">

                <div class="notice-icon">
                    📅
                </div>

                <div>

                    <h4>
                        Diwali Holiday Notice
                    </h4>

                    <p>
                        07 Nov 2026 - 11 Nov 2026
                    </p>

                </div>

            </div>


            <div class="notice-item">

                <div class="notice-icon">
                    📚
                </div>

                <div>

                    <h4>
                        Academic Notice
                    </h4>

                    <p>
                        Important academic update
                    </p>

                </div>

            </div>


            <div class="notice-item">

                <div class="notice-icon">
                    📝
                </div>

                <div>

                    <h4>
                        Examination Update
                    </h4>

                    <p>
                        Check latest information
                    </p>

                </div>

            </div>


        </div>


    </section>


    <!-- ================= ADMIN INFORMATION ================= -->

    <section class="admin-info">

        <h2>
            🛡️ Admin Information
        </h2>


        <div class="info-row">

            <span class="info-label">
                Account Type
            </span>

            <span class="info-value">
                Administrator
            </span>

        </div>


        <div class="info-row">

            <span class="info-label">
                Access
            </span>

            <span class="info-value">
                Notice Management
            </span>

        </div>


        <div class="info-row">

            <span class="info-label">
                System
            </span>

            <span class="info-value">
                College Notice Portal
            </span>

        </div>


        <div class="info-row">

            <span class="info-label">
                Status
            </span>

            <span class="info-value">
                ● Active
            </span>

        </div>

    </section>


</div>


<!-- ================= FOOTER ================= -->

<footer>

    <h3>
        College Notice Management System
    </h3>

    <p>
        Admin Dashboard • Manage Notices • Upload Documents
    </p>

    <p style="margin-top:8px;">
        © 2026 College Notice Management System
    </p>

</footer>


</body>

</html>