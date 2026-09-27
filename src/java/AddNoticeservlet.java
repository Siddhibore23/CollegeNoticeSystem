package com.college.notice;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/*
 * This servlet works WITHOUT MySQL.
 *
 * Text notice information is stored in:
 *
 * notices/notice-data.txt
 *
 * PDF files are stored in:
 *
 * notices/
 */

@WebServlet("/AddNoticeServlet")

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 10 * 1024 * 1024,
        maxRequestSize = 12 * 1024 * 1024
)

public class AddNoticeservlet extends HttpServlet {


    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {


        // ==============================
        // GET FORM DATA
        // ==============================

        String title =
                request.getParameter("title");

        String department =
                request.getParameter("department");

        String noticeDate =
                request.getParameter("noticeDate");

        String description =
                request.getParameter("description");


        // Remove | because we use it as separator
        title = cleanText(title);
        department = cleanText(department);
        noticeDate = cleanText(noticeDate);
        description = cleanText(description);


        // ==============================
        // CREATE NOTICES FOLDER
        // ==============================

        String noticesPath =
                getServletContext()
                .getRealPath("/notices");


        File noticesFolder =
                new File(noticesPath);


        if (!noticesFolder.exists()) {

            noticesFolder.mkdirs();

        }


        // ==============================
        // PDF UPLOAD
        // ==============================

        Part pdfPart =
                request.getPart("pdfFile");


        String pdfFileName = "";


        if (pdfPart != null
                && pdfPart.getSize() > 0) {


            String originalName =
                    getFileName(pdfPart);


            // Check PDF extension

            if (!originalName
                    .toLowerCase()
                    .endsWith(".pdf")) {

                response.setContentType(
                        "text/html;charset=UTF-8"
                );

                response.getWriter().println(
                        "<h2>Only PDF files are allowed.</h2>"
                );

                return;
            }


            // Create unique filename

            pdfFileName =
                    System.currentTimeMillis()
                    + "_"
                    + originalName;


            File pdfFile =
                    new File(
                            noticesFolder,
                            pdfFileName
                    );


            // Save PDF

            pdfPart.write(
                    pdfFile.getAbsolutePath()
            );

        }


        // ==============================
        // SAVE NOTICE INFORMATION
        // ==============================

        File dataFile =
                new File(
                        noticesFolder,
                        "notice-data.txt"
                );


        FileWriter writer =
                new FileWriter(
                        dataFile,
                        true
                );


        /*
         * Format:
         *
         * title|department|date|description|pdf
         */

        writer.write(
                title
                + "|"
                + department
                + "|"
                + noticeDate
                + "|"
                + description
                + "|"
                + pdfFileName
                + System.lineSeparator()
        );


        writer.close();


        // ==============================
        // SUCCESS PAGE
        // ==============================

        response.setContentType(
                "text/html;charset=UTF-8"
        );


        PrintWriter out =
                response.getWriter();


        out.println(
                "<!DOCTYPE html>"
        );

        out.println(
                "<html><head>"
        );

        out.println(
                "<title>Notice Published</title>"
        );


        out.println(
                "<style>"
                + "body{"
                + "font-family:Arial;"
                + "background:#eef7ff;"
                + "text-align:center;"
                + "padding-top:100px;"
                + "}"
                + ".box{"
                + "background:white;"
                + "padding:40px;"
                + "border-radius:18px;"
                + "width:500px;"
                + "max-width:85%;"
                + "margin:auto;"
                + "box-shadow:0 10px 30px "
                + "rgba(0,0,0,.12);"
                + "}"
                + "h1{color:#087ce9;}"
                + "a{"
                + "display:inline-block;"
                + "margin:10px;"
                + "padding:12px 20px;"
                + "background:#087ce9;"
                + "color:white;"
                + "text-decoration:none;"
                + "border-radius:8px;"
                + "}"
                + "</style>"
        );

        out.println(
                "</head><body>"
        );


        out.println(
                "<div class='box'>"
        );

        out.println(
                "<h1>✅ Notice Published!</h1>"
        );

        out.println(
                "<p>Your notice has been successfully published.</p>"
        );


        if (!pdfFileName.isEmpty()) {

            out.println(
                    "<p>📄 PDF uploaded successfully.</p>"
            );

        }


        out.println(
                "<a href='addNotice.jsp'>"
                + "Add Another Notice"
                + "</a>"
        );


        out.println(
                "<a href='viewNotice.jsp'>"
                + "View Notices"
                + "</a>"
        );


        out.println(
                "</div>"
        );


        out.println(
                "</body></html>"
        );

    }


    // ==========================================
    // CLEAN TEXT
    // ==========================================

    private String cleanText(String text) {

        if (text == null) {

            return "";

        }

        return text
                .replace("|", " ")
                .replace("\r", " ")
                .replace("\n", " ")
                .trim();

    }


    // ==========================================
    // GET FILE NAME
    // ==========================================

    private String getFileName(Part part) {

        String contentDisposition =
                part.getHeader("content-disposition");


        for (String token :
                contentDisposition.split(";")) {


            if (token.trim()
                    .startsWith("filename")) {


                String fileName =
                        token.substring(
                                token.indexOf("=") + 1
                        ).trim();


                return fileName
                        .replace("\"", "");

            }

        }


        return "notice.pdf";

    }

}