<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>College Notices</title>


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
            max-width: 1100px;
            margin: 40px auto;
        }


        .heading {
            display: flex;
            justify-content: space-between;
            align-items: center;

            margin-bottom: 30px;
        }


        .heading h2 {
            font-size: 35px;
            color: #123b65;
        }


        .add-btn {
            background: #087ce9;
            color: white;
            text-decoration: none;
            padding: 13px 20px;
            border-radius: 9px;
            font-weight: 600;
        }


        .add-btn:hover {
            background: #075fb4;
        }


        /* NOTICE */

        .notice-card {
            background: white;
            margin-bottom: 22px;
            padding: 25px;

            border-radius: 15px;

            box-shadow:
                0 8px 25px
                rgba(20,80,130,0.08);

            border-left: 5px solid #087ce9;

            transition: 0.3s;
        }


        .notice-card:hover {
            transform: translateY(-3px);
        }


        .notice-top {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 20px;
        }


        .notice-title {
            font-size: 22px;
            color: #123b65;
            margin-bottom: 8px;
        }


        .department {
            display: inline-block;

            padding: 6px 13px;

            border-radius: 20px;

            background: #dff1ff;

            color: #0873cf;

            font-size: 12px;

            font-weight: 600;
        }


        .date {
            color: #78899a;
            font-size: 13px;
        }


        .description {
            margin-top: 18px;

            color: #536b81;

            line-height: 1.7;

            font-size: 15px;
        }


        /* PDF */

        .pdf-area {
            margin-top: 20px;

            background: #f1f8ff;

            border: 1px solid #d9ebf9;

            padding: 15px;

            border-radius: 10px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 15px;
        }


        .pdf-info {
            display: flex;
            align-items: center;
            gap: 12px;
        }


        .pdf-icon {
            font-size: 35px;
        }


        .pdf-info h4 {
            color: #173b63;
        }


        .pdf-info small {
            color: #75899b;
        }


        .pdf-btn {
            background: #e53935;

            color: white;

            text-decoration: none;

            padding: 10px 16px;

            border-radius: 8px;

            font-size: 13px;

            font-weight: 600;
        }


        .pdf-btn:hover {
            background: #c62828;
        }


        /* NO NOTICES */

        .no-notices {
            background: white;

            padding: 60px 20px;

            text-align: center;

            border-radius: 15px;
        }


        .no-notices .icon {
            font-size: 60px;
        }


        .no-notices h2 {
            margin: 15px 0;
        }


        .no-notices p {
            color: #71859a;
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

            .heading {
                flex-direction: column;
                gap: 20px;
                align-items: flex-start;
            }

            .heading h2 {
                font-size: 28px;
            }

            .notice-top {
                flex-direction: column;
            }

            .pdf-area {
                flex-direction: column;
                align-items: flex-start;
            }

            .pdf-btn {
                width: 100%;
                text-align: center;
            }

        }

    </style>

</head>


<body>


<!-- HEADER -->

<header>

    <h1>
        🎓 College <span>Notice</span> System
    </h1>


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

    </nav>

</header>


<!-- PAGE -->

<div class="page">


    <div class="heading">

        <div>

            <h2>
                📢 Latest College Notices
            </h2>

            <p style="color:#71859a;margin-top:6px;">
                Important announcements and official documents
            </p>

        </div>


        <a href="addNotice.jsp"
           class="add-btn">

            + Add Notice

        </a>

    </div>


<%

    String noticesPath =
            application.getRealPath("/notices");


    File dataFile =
            new File(
                    noticesPath,
                    "notice-data.txt"
            );


    if (!dataFile.exists()
            || dataFile.length() == 0) {

%>


    <!-- NO NOTICES -->

    <div class="no-notices">

        <div class="icon">
            📭
        </div>

        <h2>
            No Notices Available
        </h2>

        <p>
            There are currently no notices published.
        </p>

        <br>

        <a href="addNotice.jsp"
           class="add-btn">

            Publish First Notice

        </a>

    </div>


<%

    } else {


        BufferedReader reader =
                new BufferedReader(
                        new FileReader(dataFile)
                );


        ArrayList<String> notices =
                new ArrayList<>();


        String line;


        while ((line = reader.readLine()) != null) {

            if (!line.trim().isEmpty()) {

                notices.add(line);

            }

        }


        reader.close();


        // Show newest notice first

        Collections.reverse(notices);


        for (String notice : notices) {


            String[] data =
                    notice.split("\\|", -1);


            if (data.length < 5) {

                continue;

            }


            String title =
                    data[0];

            String department =
                    data[1];

            String noticeDate =
                    data[2];

            String description =
                    data[3];

            String pdf =
                    data[4];

%>


    <!-- NOTICE CARD -->

    <div class="notice-card">


        <div class="notice-top">


            <div>

                <h2 class="notice-title">

                    <%= title %>

                </h2>


                <span class="department">

                    <%= department %>

                </span>

            </div>


            <div class="date">

                📅 <%= noticeDate %>

            </div>


        </div>


        <!-- DESCRIPTION -->

        <div class="description">

            <%= description %>

        </div>


        <!-- PDF -->

        <%

            if (pdf != null
                    && !pdf.trim().isEmpty()) {

        %>


        <div class="pdf-area">


            <div class="pdf-info">

                <div class="pdf-icon">
                    📄
                </div>


                <div>

                    <h4>
                        Official Notice PDF
                    </h4>

                    <small>
                        Click to view or download
                    </small>

                </div>

            </div>


            <a href="notices/<%= pdf %>"
               target="_blank"
               class="pdf-btn">

                📄 View PDF

            </a>


        </div>


        <%

            }

        %>


    </div>


<%

        }

    }

%>


</div>


</body>

</html>