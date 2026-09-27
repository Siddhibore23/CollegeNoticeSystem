<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Add College Notice</title>

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
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            font-size: 25px;
        }

        header span {
            color: #20a7ff;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            padding: 9px 15px;
            border-radius: 7px;
        }

        nav a:hover {
            background: #087ce9;
        }

        /* PAGE */

        .page {
            width: 90%;
            max-width: 850px;
            margin: 45px auto;
        }

        .heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .heading h2 {
            font-size: 35px;
            color: #123b65;
        }

        .heading p {
            margin-top: 8px;
            color: #657b90;
        }

        /* FORM */

        .notice-form {
            background: white;
            padding: 35px;
            border-radius: 18px;
            box-shadow: 0 10px 35px rgba(20, 80, 130, 0.12);
        }

        .form-group {
            margin-bottom: 22px;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            color: #173b63;
        }

        input,
        textarea,
        select {
            width: 100%;
            padding: 13px 15px;
            border: 1px solid #d1dfeb;
            border-radius: 9px;
            font-size: 15px;
            outline: none;
            background: #fbfdff;
        }

        input:focus,
        textarea:focus,
        select:focus {
            border-color: #087ce9;
            box-shadow: 0 0 0 3px rgba(8,124,233,0.1);
        }

        textarea {
            min-height: 150px;
            resize: vertical;
        }

        .row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        /* PDF BOX */

        .pdf-box {
            border: 2px dashed #8bc9f5;
            background: #f1f9ff;
            padding: 25px;
            text-align: center;
            border-radius: 12px;
        }

        .pdf-icon {
            font-size: 45px;
            margin-bottom: 10px;
        }

        .pdf-box h3 {
            color: #123b65;
            margin-bottom: 6px;
        }

        .pdf-box p {
            font-size: 13px;
            color: #71869a;
            margin-bottom: 15px;
        }

        .pdf-box input {
            background: white;
        }

        /* BUTTON */

        .submit-btn {
            width: 100%;
            margin-top: 10px;
            padding: 15px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(135deg, #087ce9, #075bb2);
            color: white;
            font-size: 17px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(8,124,233,0.3);
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #087ce9;
            text-decoration: none;
        }

        /* MOBILE */

        @media(max-width:650px) {

            header {
                flex-direction: column;
                gap: 15px;
            }

            nav a {
                margin: 5px;
            }

            .row {
                grid-template-columns: 1fr;
            }

            .notice-form {
                padding: 22px;
            }

            .heading h2 {
                font-size: 28px;
            }
        }

    </style>

</head>


<body>


<!-- HEADER -->

<header>

    <h1>
        ? College <span>Notice</span> System
    </h1>

    <nav>

        <a href="index.jsp">
            Home
        </a>

        <a href="viewNotice.jsp">
            Notices
        </a>

        <a href="admin.jsp">
            Dashboard
        </a>

    </nav>

</header>


<!-- PAGE -->

<div class="page">


    <div class="heading">

        <h2>
            ? Publish New Notice
        </h2>

        <p>
            Add an important announcement or upload an official PDF.
        </p>

    </div>


    <!-- IMPORTANT: enctype is required for PDF upload -->

    <form class="notice-form"
          action="AddNoticeServlet"
          method="post"
          enctype="multipart/form-data">


        <!-- TITLE -->

        <div class="form-group">

            <label>
                Notice Title *
            </label>

            <input type="text"
                   name="title"
                   placeholder="Enter notice title"
                   required>

        </div>


        <!-- DEPARTMENT + DATE -->

        <div class="row">

            <div class="form-group">

                <label>
                    Department *
                </label>

                <select name="department" required>

                    <option value="">
                        Select Department
                    </option>

                    <option value="Computer Engineering">
                        Computer Engineering
                    </option>

                    <option value="Information Technology">
                        Information Technology
                    </option>

                    <option value="Electronics Engineering">
                        Electronics Engineering
                    </option>

                    <option value="Mechanical Engineering">
                        Mechanical Engineering
                    </option>

                    <option value="Civil Engineering">
                        Civil Engineering
                    </option>

                    <option value="General">
                        General
                    </option>

                </select>

            </div>


            <div class="form-group">

                <label>
                    Notice Date *
                </label>

                <input type="date"
                       name="noticeDate"
                       required>

            </div>

        </div>


        <!-- DESCRIPTION -->

        <div class="form-group">

            <label>
                Notice Description *
            </label>

            <textarea name="description"
                      placeholder="Write the complete notice here..."
                      required></textarea>

        </div>


        <!-- PDF -->

        <div class="form-group">

            <label>
                Official PDF
            </label>

            <div class="pdf-box">

                <div class="pdf-icon">
                    ?
                </div>

                <h3>
                    Upload Notice PDF
                </h3>

                <p>
                    PDF only ? Maximum size: 10 MB
                </p>

                <input type="file"
                       name="pdfFile"
                       accept=".pdf,application/pdf">

            </div>

        </div>


        <!-- SUBMIT -->

        <button type="submit"
                class="submit-btn">

            ? Publish Notice

        </button>


        <a href="viewNotice.jsp"
           class="back">

            ? View All Notices

        </a>


    </form>

</div>


</body>

</html>